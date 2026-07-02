# Entity Relationship Diagram

## ERD

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
    }

    partner {
        int partner_id PK
        string company_name
    }

    integration {
        int integration_id PK
        int type_id FK
        int partner_id FK
        string name
        string status
    }

    capability {
        int capability_id PK
        string name
    }

    country {
        int country_id PK
        string country_name
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

## Current Scope

Current entities:

- integration
- partner
- integration_type
- capability
- country
- platform_product

Current junction tables:

- integration_capability
- integration_country
- integration_product
