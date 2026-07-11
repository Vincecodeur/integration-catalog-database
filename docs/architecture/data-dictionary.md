# Data Dictionary

## Status

Approved

---

# Overview

This document describes the data model of the Integration Catalog Database.

Version:

v3.0.0

The repository supports four architecture layers:

- Capability
- Integration Feature
- Flow
- Dependency

---

# Reference Tables

# integration_type

## Description

Stores integration categories.

Examples:

- Marketplace
- CMS
- ERP
- Carrier
- CRM

## Primary Key

type_id

---

# capability

## Description

Represents a major business function.

Examples:

- Order Import
- Tracking
- Product Synchronization
- Shipment Creation

## Primary Key

capability_id

---

# country

## Description

Stores supported countries.

## Primary Key

country_id

---

# anchanto_product

## Description

Stores Anchanto platform products.

Examples:

- OMS
- WMS
- OXM
- Tracking Platform

## Primary Key

product_id

---

# integration_method

## Description

Stores supported technical integration methods.

Examples:

- REST
- SOAP
- GraphQL
- FTP
- EDI

## Primary Key

integration_method_id

Source: V006. 【2-c3f7ca】

---

# integration_status

## Description

Stores integration lifecycle statuses.

Examples:

- Planned
- Development
- QA
- Released
- Available

## Primary Key

status_id

Source: V008. 【3-a8968f】

---

# documentation_type

## Description

Stores documentation classifications.

Examples:

- API Documentation
- User Guide
- Release Notes

## Primary Key

documentation_type_id

Source: V010. 【4-df64db】

---

# endpoint_type

## Description

Stores endpoint classifications.

Examples:

- Order API
- Product API
- Tracking API

## Primary Key

endpoint_type_id

Source: V012. 【5-28fb70】

---

# authentication_method

## Description

Stores authentication mechanisms.

Examples:

- API Key
- OAuth 2.0
- Bearer Token

## Primary Key

authentication_method_id

Source: V013. 【6-3466ca】

---

# endpoint_environment

## Description

Stores endpoint environments.

Examples:

- Sandbox
- UAT
- Production

## Primary Key

endpoint_environment_id

Source: V014. 【7-b84729】

---

# contact_role

## Description

Stores contact classifications.

Examples:

- Business Contact
- Technical Contact
- Support Contact

## Primary Key

contact_role_id

Source: V017. 【8-1db2ba】

---

# Core Business Entities

# partner

## Description

Represents a company providing or owning integrations.

Examples:

- DHL
- Shopify
- Mirakl

## Primary Key

partner_id

Source: V002. 【9-47d704】

---

# integration

## Description

Central business entity representing an integration.

## Relationships

- integration_type
- partner
- integration_status

## Primary Key

integration_id

Source: V002 + V009. 【9-47d704】【10-caaad5】

---

# contact

## Description

Represents a contact associated with a partner.

## Relationships

- partner
- contact_role

## Primary Key

contact_id

Source: V004 + V018. 【11-98b5bf】【12-ff9269】

---

# documentation

## Description

Represents documentation linked to an integration.

## Relationships

- integration
- documentation_type

## Primary Key

documentation_id

Source: V005 + V011. 【13-ecbdfa】【14-b41285】

---

# Junction Tables

# integration_capability

## Description

Maps integrations to capabilities.

Relationship:

Integration ↔ Capability

Primary Key:

(integration_id, capability_id)

Source: V003. 【15-014d37】

---

# integration_country

## Description

Maps integrations to countries.

Relationship:

Integration ↔ Country

Primary Key:

(integration_id, country_id)

Source: V003. 【15-014d37】

---

# integration_product

## Description

Maps integrations to Anchanto products.

Relationship:

Integration ↔ Product

Primary Key:

(integration_id, product_id)

Source: V003. 【15-014d37】

---

# integration_method_mapping

## Description

Maps integrations to integration methods.

Relationship:

Integration ↔ Integration Method

Primary Key:

(integration_id, integration_method_id)

Source: V007. 【16-1eaef9】

---

# Endpoint Architecture

# integration_endpoint

## Description

Represents a technical endpoint exposed by an integration.

## Primary Key

endpoint_id

Source: V015. 【17-2415b3】

---

# integration_endpoint_environment

## Description

Maps endpoints to environment-specific URLs.

Examples:

- Sandbox URL
- UAT URL
- Production URL

## Primary Key

endpoint_environment_mapping_id

Source: V016. 【18-e6951d】

---

# Governance

# integration_status_history

## Description

Stores the lifecycle history of an integration.

Examples:

Development
↓
QA
↓
Released

## Primary Key

integration_status_history_id

Source: V019. 【19-4842a0】

---

# Feature Architecture

# integration_feature

## Description

Represents a specialized functional characteristic.

Examples:

- DDP
- Hazmat
- Prime
- Metafields
- 3D Secure

## Primary Key

feature_id

Source: V020. 【20-eeb807】

---

# integration_feature_mapping

## Description

Maps integrations to features.

Relationship:

Integration ↔ Feature

## Primary Key

(integration_id, feature_id)

Expected Model. V021 currently requires verification. 【1-b5c55d】

---

# Flow Architecture

# integration_flow

## Description

Represents a business information flow.

Examples:

- Order Import Flow
- Tracking Flow
- Shipment Creation Flow

## Primary Key

flow_id

Source: V022. 【21-c7360c】

---

# integration_flow_mapping

## Description

Maps integrations to flows.

Relationship:

Integration ↔ Flow

## Primary Key

(integration_id, flow_id)

Source: V023. 【22-7f5556】

---

# integration_flow_step

## Description

Represents an ordered participant within a flow.

Example:

Tracking Flow

Step 1 → Carrier

Step 2 → Tracking Provider

Step 3 → Marketplace

## Primary Key

flow_step_id

Source: V024. 【23-309a2f】

---

# Dependency Architecture

# integration_dependency

## Description

Represents a dependency between integrations.

Examples:

Shopify → OMS

OMS → WMS

WMS → Carrier

## Primary Key

dependency_id

Source: V025. 【24-e59752】

---

# Architectural Layers

## Capability

Question Answered:

What does the integration do?

---

## Feature

Question Answered:

What specialized functionality exists?

---

## Flow

Question Answered:

How does information move?

---

## Dependency

Question Answered:

What depends on what?

---

# Outcome

The Integration Catalog Database now supports:

- Integration Discovery
- Capability Modeling
- Feature Modeling
- Flow Modeling
- Dependency Modeling

This document is the authoritative reference for the v3.0.0 data model.
