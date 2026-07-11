# Dependency Domain Model

## Status

Approved

---

# Purpose

This document defines how Dependencies fit into the Integration Catalog Database.

Its objective is to define:

- the role of Dependencies
- the relationship between Dependencies and Integrations
- the relationship between Dependencies and Flows
- the future evolution of the database model

This document complements:

- ADR-006 Integration Domain Model
- dependency-framework.md

---

# Context

The repository currently models:

- Integrations
- Capabilities
- Integration Features
- Flows

The repository can answer:

```text
What integrations exist?

What capabilities exist?

What features exist?

How does information flow?
```

However, it cannot answer:

```text
What integrations depend on other integrations?

What is impacted if a system changes?

What systems are downstream from a given integration?
```

A dedicated dependency model is required.

---

# Domain Concepts

## Dependency

A Dependency represents a relationship where one integration relies on another integration.

A Dependency answers:

```text
What depends on what?
```

Examples:

```text
OMS
depends on
Shopify
```

```text
Tracking Provider
depends on
Carrier
```

```text
Marketplace
depends on
Tracking Provider
```

---

# Dependency Position in the Model

## High-Level View

```text
Integration
        ↓

Dependency

Integration
```

This is a self-referencing relationship.

An Integration may have:

- upstream dependencies
- downstream dependencies

---

# Relationship with Flow

Flows and Dependencies are complementary.

Flow answers:

```text
How does information move?
```

Dependency answers:

```text
What is impacted if something changes?
```

Example:

Flow

Carrier
↓
Tracking Provider
↓
Marketplace

---

Dependencies

Marketplace
depends on
Tracking Provider

Tracking Provider
depends on
Carrier

---

# Relationship with Capability

Capabilities answer:

```text
What can be done?
```

Dependencies answer:

```text
What systems support it?
```

Example:

Capability

Tracking

Dependency Chain

Carrier
↓
Tracking Provider
↓
Marketplace

---

# Relationship with Integration

An Integration may depend on multiple Integrations.

An Integration may be a dependency for multiple Integrations.

Therefore:

```text
Integration
    ↔
Integration
```

is a many-to-many relationship.

Examples:

Shopify

supports

OMS

---

OMS

supports

WMS

---

WMS

supports

Carrier

---

# Universal Applicability

Dependencies exist for all supported integration families.

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

Tracking Provider

✅

CRM

✅

PIM

✅

Therefore Dependency complies with ADR-006.

---

# Dependency Examples

## Commerce Chain

Shopify
↓
OMS
↓
WMS
↓
Carrier

---

## Tracking Chain

Carrier
↓
Tracking Provider
↓
Marketplace

---

## Payment Chain

Marketplace
↓
Payment Provider
↓
ERP

---

## CRM Chain

CMS
↓
CRM
↓
Marketing Platform

---

# Minimal Viable Dependency Model

The simplest valid model is:

```text
Source Integration
        ↓
Target Integration
```

No additional concepts are currently justified.

The repository intentionally avoids:

- dependency categories
- dependency status
- dependency severity
- dependency criticality

These concepts have not demonstrated sufficient business value.

---

# Potential Questions Enabled

The model should support questions such as:

```text
What integrations depend on Shopify?

What integrations depend on DHL?

What systems are impacted if Stripe changes?

What are the downstream dependencies of SAP?
```

---

# Future Database Evolution

Potential Entity

```text
integration_dependency
```

Potential Structure

```text
source_integration_id

target_integration_id

description
```

No SQL implementation has been approved yet.

---

# Architectural Benefits

Dependency Modeling provides:

- Impact Analysis
- Architecture Visibility
- Change Risk Assessment
- Root Cause Investigation
- Dependency Discovery

---

# Future Considerations

The following concepts remain out of scope:

- dependency types
- dependency criticality
- dependency ownership
- dependency lifecycle

The model intentionally remains simple.

---

# Outcome

The repository now distinguishes four complementary architecture layers.

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
How does information move?
```

Dependency

```text
What depends on what?
```

This completes the architectural knowledge model of the Integration Catalog Database.
