# Data Dictionary

## Overview

This document describes all tables, columns, primary keys and foreign keys used in the Integration Catalog Database project.

---

# integration_type

## Description

Stores available integration categories.

Examples:

- Carrier
- Marketplace
- CMS
- ERP
- TMS

## Columns

| Column      | Type        | Description               |
| ----------- | ----------- | ------------------------- |
| type_id     | INTEGER     | Primary key               |
| name        | VARCHAR(50) | Integration type name     |
| description | TEXT        | Type description          |
| created_at  | TIMESTAMP   | Record creation timestamp |

---

# partner

## Description

Represents a company providing or owning an integration.

Examples:

- La Poste
- DHL Group
- Shopify Inc.

## Columns

| Column         | Type         | Description               |
| -------------- | ------------ | ------------------------- |
| partner_id     | INTEGER      | Primary key               |
| company_name   | VARCHAR(255) | Partner name              |
| website_url    | VARCHAR(500) | Partner website           |
| country_origin | VARCHAR(100) | Headquarters country      |
| created_at     | TIMESTAMP    | Record creation timestamp |
| updated_at     | TIMESTAMP    | Last update timestamp     |

---

# integration

## Description

Central table of the model.

Represents a business integration.

Examples:

- Colissimo
- DHL
- Shopify

## Columns

| Column            | Type         | Description               |
| ----------------- | ------------ | ------------------------- |
| integration_id    | INTEGER      | Primary key               |
| type_id           | INTEGER      | FK to integration_type    |
| partner_id        | INTEGER      | FK to partner             |
| name              | VARCHAR(255) | Integration name          |
| short_description | VARCHAR(500) | Short description         |
| long_description  | TEXT         | Detailed description      |
| status            | VARCHAR(50)  | Lifecycle status          |
| website_url       | VARCHAR(500) | Website URL               |
| logo_url          | VARCHAR(500) | Logo URL                  |
| api_base_url      | VARCHAR(500) | API base URL              |
| api_version       | VARCHAR(50)  | API version               |
| sandbox_available | BOOLEAN      | Sandbox availability      |
| webhook_available | BOOLEAN      | Webhook availability      |
| created_at        | TIMESTAMP    | Record creation timestamp |
| updated_at        | TIMESTAMP    | Last update timestamp     |

---

# capability

## Description

Represents a supported functional capability.

Examples:

- Tracking
- Label Generation
- Manifest
- DDP

## Columns

| Column        | Type         | Description               |
| ------------- | ------------ | ------------------------- |
| capability_id | INTEGER      | Primary key               |
| name          | VARCHAR(100) | Capability name           |
| description   | TEXT         | Capability description    |
| created_at    | TIMESTAMP    | Record creation timestamp |
| updated_at    | TIMESTAMP    | Last update timestamp     |

---

# country

## Description

Represents a country where an integration is available.

## Columns

| Column       | Type         | Description               |
| ------------ | ------------ | ------------------------- |
| country_id   | INTEGER      | Primary key               |
| country_code | CHAR(2)      | ISO country code          |
| country_name | VARCHAR(100) | Country name              |
| region       | VARCHAR(50)  | Geographic region         |
| created_at   | TIMESTAMP    | Record creation timestamp |
| updated_at   | TIMESTAMP    | Last update timestamp     |

---

# platform_product

## Description

Represents a platform product consuming integrations.

Examples:

- OMS
- WMS
- OXM
- Tracking Platform

## Columns

| Column      | Type         | Description               |
| ----------- | ------------ | ------------------------- |
| product_id  | INTEGER      | Primary key               |
| name        | VARCHAR(100) | Product name              |
| description | TEXT         | Product description       |
| created_at  | TIMESTAMP    | Record creation timestamp |
| updated_at  | TIMESTAMP    | Last update timestamp     |

---

# integration_capability

## Description

Junction table linking integrations and capabilities.

## Columns

| Column         | Type      | Description               |
| -------------- | --------- | ------------------------- |
| integration_id | INTEGER   | FK to integration         |
| capability_id  | INTEGER   | FK to capability          |
| created_at     | TIMESTAMP | Record creation timestamp |

## Primary Key

```text
(integration_id, capability_id)
``
```
