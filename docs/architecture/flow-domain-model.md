# Flow Domain Model

## Status

Approved

---

# Purpose

This document defines how Flows fit into the Integration Catalog Database.

Its objective is to define:

- the role of Flows
- the relationship between Flows and Integrations
- the relationship between Flows and Capabilities
- the future evolution of the database model

This document complements:

- ADR-006 Integration Domain Model
- flow-framework.md

---

# Context

The repository already models:

- Partner
- Integration
- Capability
- Integration Feature

These concepts allow understanding:

```text
What systems exist?

What business functions exist?

What specialized functionality is supported?
```

However, they do not describe:

```text
How systems collaborate
to execute business processes.
```

A dedicated concept is required.

---

# Domain Concepts

## Flow

A Flow represents a business-oriented movement of information between participating systems.

A Flow answers:

```text
How is a business outcome achieved?
```

Examples:

- Order Import Flow
- Product Synchronization Flow
- Inventory Synchronization Flow
- Shipment Creation Flow
- Tracking Flow
- Returns Flow

---

## Flow Step

A Flow Step represents one participant within a Flow.

A Flow is composed of one or more ordered steps.

Example:

Tracking Flow

Step 1

Carrier

↓

Step 2

Tracking Provider

↓

Step 3

Marketplace

---

# Flow Position in the Model

## High-Level Model

```text
Partner
    ↓

Integration
    ↓

Capability
    ↓

Flow
    ↓

Flow Step
```

---

# Capability vs Flow

Capability answers:

```text
What can be done?
```

Flow answers:

```text
How is it done?
```

Example:

Capability

Tracking

Flow

Carrier
↓
Tracking Provider
↓
Marketplace

---

Capability

Shipment Creation

Flow

OMS
↓
Carrier

The two concepts are complementary.

---

# Relationship with Integration

An Integration may participate in multiple Flows.

Examples:

Shopify

Participates in:

- Order Import Flow
- Product Synchronization Flow
- Inventory Synchronization Flow

---

DHL

Participates in:

- Shipment Creation Flow
- Tracking Flow
- Returns Flow

---

A Flow involves one or more Integrations.

Therefore:

```text
Integration
    ↔
Flow
```

is a many-to-many relationship.

---

# Relationship with Capabilities

At this stage:

```text
Flow
```

is linked conceptually to:

```text
Capability
```

but not necessarily physically.

Example:

Tracking Flow

supports

Tracking Capability

---

Shipment Creation Flow

supports

Shipment Creation Capability

Future implementation options remain open.

---

# Universal Applicability

Flows exist across all supported integration families.

Marketplace

✅

CMS

✅

ERP

✅

WMS

✅

TMS

✅

Carrier

✅

Payment Provider

✅

CRM

✅

PIM

✅

Therefore:

Flow complies with ADR-006.

---

# Minimal Viable Flow Model

The simplest valid model is:

```text
Flow
    ↓
Flow Step
```

No additional hierarchy is required.

The repository intentionally avoids:

- flow categories
- flow status
- flow domains
- flow versions

These concepts have not demonstrated enough business value.

---

# Example Flows

## Order Import Flow

Marketplace
↓
OMS

---

## Product Synchronization Flow

PIM
↓
OMS
↓
Marketplace

---

## Inventory Synchronization Flow

WMS
↓
OMS
↓
Marketplace

---

## Shipment Creation Flow

OMS
↓
Carrier

---

## Tracking Flow

Carrier
↓
Tracking Provider
↓
Marketplace

---

## Returns Flow

Marketplace
↓
OMS
↓
Carrier

---

# Future Database Evolution

Potential Entity

```text
integration_flow
```

Potential Entity

```text
integration_flow_step
```

Potential Relationship

```text
integration
    ↔
integration_flow
```

No additional entities are currently justified.

---

# Architectural Benefits

Flows introduce a process perspective into the repository.

The repository can evolve from:

```text
Integration Inventory
```

toward:

```text
Enterprise Integration Knowledge Repository
```

Questions enabled by Flows:

- What systems participate in Tracking?
- Which Flows involve Shopify?
- Which Flows involve DHL?
- How does inventory information move?
- How are returns processed?

---

# Outcome

The repository now defines three complementary concepts:

Capability

```text
What can be done?
```

Integration Feature

```text
Which specialized functionality exists?
```

Flow

```text
How information moves?
```

This completes the functional architecture layer of the Integration Catalog Database.
