# Entity Relationship Diagram (ERD)

## Overview

The Integration Catalog Database is designed around a central entity: `integration`.

The model supports:

- Integration ownership
- Integration classification
- Geographic coverage
- Functional capabilities
- Product compatibility

---

# ERD

```mermaid
erDiagram

    integration_type ||--o{ integration : classifies

    partner ||--o{ integration : owns

    integration ||--o{ integration_capability : supports
    capability ||--o{ integration_capability : defines

    integration ||--o{ integration_country : available_in
    country ||--o{ integration_country : contains

    integration ||--o{ integration_product : compatible_with
    platform_product ||--o{ integration_product : uses

    integration_type {
        int type_id PK
        string name
        string description
    }

    partner {
        int partner_id PK
        string company_name
        string website_url
        string country_origin
    }

    integration {
        int integration_id PK
        int type_id FK
        int partner_id FK
        string name
        string status
        string api_version
        boolean sandbox_available
        boolean webhook_available
    }

    capability {
        int capability_id PK
        string name
    }

    country {
        int country_id PK
        string country_code
        string country_name
        string region
    }

    platform_product {
        int product_id PK
        string name
    }

    integration_capability {
        int integration_id PK
        int capability_id PK
    }

    integration_country {
        int integration_id PK
        int country_id PK
    }

    integration_product {
        int integration_id PK
        int product_id PK
    }
```

---

# Relationship Summary

| Parent           | Child            | Type |
| ---------------- | ---------------- | ---- |
| integration_type | integration      | 1:N  |
| partner          | integration      | 1:N  |
| integration      | capability       | N:N  |
| integration      | country          | N:N  |
| integration      | platform_product | N:N  |

---

# Current Scope

## Core Tables

- integration
- partner
- integration_type

## Reference Tables

- capability
- country
- platform_product

## Junction Tables

- integration_capability
- integration_country
- integration_product

---

# Design Principles

- Normalized relational model
- Surrogate integer keys
- Explicit foreign keys
- No duplicated business data
- Many-to-many relationships handled through junction tables
- PostgreSQL optimized approach

---

# Future Extensions

Planned entities:

- contact
- documentation
- connection_type
- api_version_catalog
- integration_status_history

```

```
