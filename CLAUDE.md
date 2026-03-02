# CLAUDE.md — Repository Guide for AI Assistants

## Project Overview

This repository (`vkat77.github.io`) is a **learning/teaching repository** with two distinct sub-projects:

1. **Primary — dbt Analytics Project** (`dbt_analytics_engineer_book`): A dbt (data build tool) project modeled on the fictional "jaffle shop" ecommerce dataset. It demonstrates core dbt patterns: staging layers, mart models, Jinja templating, seeds, and schema testing.
2. **Secondary — Static Web Project** (`web-projects/test-site/`): A simple HTML/CSS/JavaScript page used for basic front-end experimentation.
3. **Reference — jaffle-shop-classic** (`jaffle-shop-classic-main/`): A bundled copy of the canonical jaffle shop dbt reference project for comparison.

---

## Directory Structure

```
vkat77.github.io/
├── CLAUDE.md                        # This file
├── README.md                        # Minimal project description
├── .gitignore                       # Ignores target/, logs/, dbt_packages/, .DS_Store
├── dbt_project.yml                  # Main dbt project configuration
│
├── models/                          # dbt mart (final) models
│   ├── customers.sql                # Customer lifetime value model (CTE-based)
│   ├── orders.sql                   # Orders model with dynamic Jinja payment columns
│   ├── schema.yml                   # Model + column documentation and tests
│   ├── docs.md                      # Jinja doc blocks for order status descriptions
│   ├── overview.md                  # Project overview page for dbt docs
│   └── staging/                     # Staging models (raw → cleaned)
│       ├── stg_customers.sql
│       ├── stg_orders.sql
│       ├── stg_payments.sql
│       └── schema.yml               # Staging model tests
│
├── seeds/                           # CSV reference data loaded by `dbt seed`
│   ├── raw_customers.csv
│   ├── raw_orders.csv
│   └── raw_payments.csv
│
├── target/                          # dbt build artifacts (gitignored)
├── logs/                            # dbt execution logs (gitignored)
│
├── web-projects/
│   └── test-site/
│       ├── index.html               # "Canine Power" demo page
│       ├── images/weimaraner.jpg
│       ├── styles/style.css
│       └── scripts/main.js
│
└── jaffle-shop-classic-main/        # Reference dbt project (read-only reference)
    ├── dbt_project.yml
    ├── models/
    ├── seeds/
    └── ...
```

---

## dbt Project Configuration

**File**: `dbt_project.yml`

- **Project name**: `dbt_analytics_engineer_book`
- **Version**: `1.0.0`
- **Profile**: `default` (connection configured in `~/.dbt/profiles.yml`, not tracked in this repo)
- **Default materialization**: `view` for all models
- **Clean targets**: `target/` and `dbt_packages/`

Key paths:
| Path type   | Directory     |
|-------------|---------------|
| Models      | `models/`     |
| Seeds       | `seeds/`      |
| Tests       | `tests/`      |
| Analyses    | `analyses/`   |
| Macros      | `macros/`     |
| Snapshots   | `snapshots/`  |

---

## Data Model Architecture

### Two-Layer Pattern

```
seeds/ (raw CSV data)
    └── raw_customers, raw_orders, raw_payments
         │
         ▼
models/staging/ (stg_* views)
    └── Rename columns, cast types, no business logic
         │
         ▼
models/ (mart models — views by default)
    └── customers, orders — business logic lives here
```

### Staging Models (`models/staging/`)

Each staging model selects from the corresponding seed and applies light transformations:
- Rename `id` → `<entity>_id` (e.g., `customer_id`, `order_id`, `payment_id`)
- Convert units (e.g., payments: cents → dollars via `/ 100`)
- No joins or business logic at this layer

### Mart Models (`models/`)

**`customers.sql`** — Uses CTEs: `customers` → `orders` → `customer_orders` (aggregated) → `customer_payments` (aggregated) → `final`. Outputs customer lifetime value.

**`orders.sql`** — Uses Jinja `{% set %}` + `{% for %}` loop to dynamically generate payment method columns (`credit_card_amount`, `coupon_amount`, `bank_transfer_amount`, `gift_card_amount`).

---

## dbt Conventions to Follow

### SQL Style

- Use CTEs, never nested subqueries
- CTE naming pattern: `source` → intermediate descriptive names → `final`
- Always end with `select * from final`
- Use `{{ ref('model_name') }}` to reference other models (never hardcode table names)
- Use `{{ source('schema', 'table') }}` if sources are defined (currently uses seeds directly)

### Jinja Templating

- Use `{% set list_var = [...] %}` at the top of files to define reusable lists
- Use `{% for item in list %}...{% endfor %}` for repetitive column generation
- Use `{{- -}}` whitespace control when needed to avoid extra blank lines
- Use `{{ doc("doc_block_name") }}` in `schema.yml` to reference doc blocks from `docs.md`

### Schema / Testing (`schema.yml`)

- Every model should have a corresponding entry in `schema.yml`
- Every primary key column must have `unique` and `not_null` tests
- Foreign keys should have `relationships` tests
- Categorical columns should have `accepted_values` tests
- Provide `description` for every model and column

Example test block structure:
```yaml
columns:
  - name: order_id
    description: Unique identifier for an order
    tests:
      - unique
      - not_null
  - name: status
    tests:
      - accepted_values:
          arguments:
            values: ['placed', 'shipped', 'completed', 'return_pending', 'returned']
```

### Documentation

- Add Jinja doc blocks in `models/docs.md` using `{% docs block_name %}...{% enddocs %}`
- Reference them in `schema.yml` descriptions: `'{{ doc("block_name") }}'`
- `models/overview.md` contains the dbt docs homepage content

---

## Common dbt Commands

```bash
# Run all models
dbt run

# Run a specific model
dbt run --select customers

# Run a model and all its downstream dependencies
dbt run --select customers+

# Load seed data
dbt seed

# Run schema and data tests
dbt test

# Run tests for a specific model
dbt test --select orders

# Generate and serve documentation
dbt docs generate
dbt docs serve

# Verify dbt profile connection
dbt debug

# Clean build artifacts
dbt clean
```

> **Note**: This project has been used with `dbt-fusion` (v2.0.0-preview). Some experimental flags may differ from standard dbt CLI.

---

## Seed Data

Seeds in `seeds/` are CSV files that act as raw source data for this demo project. They represent a fictional ecommerce store ("jaffle shop").

| File                  | Columns                                          |
|-----------------------|--------------------------------------------------|
| `raw_customers.csv`   | id, first_name, last_name                        |
| `raw_orders.csv`      | id, user_id, order_date, status                  |
| `raw_payments.csv`    | id, order_id, payment_method, amount (in cents)  |

Order statuses: `placed`, `shipped`, `completed`, `return_pending`, `returned`
Payment methods: `credit_card`, `coupon`, `bank_transfer`, `gift_card`

> Seeds are used here for demo/learning purposes. In production dbt projects, `{{ source() }}` references to warehouse tables are preferred.

---

## Static Web Project (`web-projects/test-site/`)

A standalone educational HTML project — no build tools, no framework.

- **`index.html`**: Basic page with heading, image, list; links external CSS and JS
- **`styles/style.css`**: Custom font (Google Fonts: "Notable"), teal background (`#3FB8BF`), orange body (`#FF9500`)
- **`scripts/main.js`**: DOM manipulation, click handlers, `localStorage` usage

To view: open `index.html` directly in a browser. No server required.

---

## Git Workflow

- Default branch: `master`
- Feature branches follow the pattern: `claude/<description>-<session-id>`

When making changes:
1. Develop on the designated feature branch
2. Commit with descriptive messages
3. Push with `git push -u origin <branch-name>`

`.gitignore` excludes: `target/`, `logs/`, `dbt_packages/`, `.DS_Store`

---

## Reference Project (`jaffle-shop-classic-main/`)

This directory is the upstream "jaffle-shop-classic" project by dbt Labs, included as a reference. It uses:
- `table` materialization for mart models
- `view` materialization for staging models
- dbt version requirement `>=1.0.0, <2.0.0`

**Do not modify** this directory — treat it as read-only reference material.

---

## Key Things to Avoid

- **Don't hardcode table names** in SQL — always use `{{ ref() }}`
- **Don't add logic to staging models** — keep them to simple renaming/casting
- **Don't commit `target/` or `logs/`** — these are build artifacts (already gitignored)
- **Don't modify `jaffle-shop-classic-main/`** — it's a reference copy
- **Don't use nested subqueries** — use CTEs for readability
- **Don't skip schema tests** for primary key columns
