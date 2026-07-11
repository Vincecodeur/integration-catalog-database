# Dependency Framework

## Status

Draft

---

# Purpose

This document defines the concept of Dependency within the Integration Catalog Database.

It establishes a common framework for representing relationships between integrations and understanding how changes propagate across an integration ecosystem.

This framework supports:

- ADR-006 Integration Domain Model
- flow-framework.md
- flow-domain-model.md

---

# Problem Statement

The repository currently models:

- Integrations
- Capabilities
- Integration Features
- Flows

This allows answering:

```text
What integrations exist?

What business functions are supported?

What specialized functionality is available?

How does information flow between systems?
```

However, the repository cannot answer:

```text
What depends on what?
```

Examples:

```text
Shopify
    ↓
OMS
    ↓
WMS
    ↓
Carrier
```

or

```text
Carrier API Change
    ↓
Tracking Flow Impact
    ↓
Marketplace Impact
```

A dedicated dependency model is required.

---

# Definition

A Dependency represents a relationship where one integration relies on another integration, system or service.

A Dependency answers:

```text
What is impacted if this integration changes?
```

---

# Dependency Characteristics

A Dependency must:

1. Represent a business or architectural reliance.
2. Be understandable from an integration perspective.
3. Support impact analysis.
4. Remain independent from technical implementation details.

A Dependency must not:

1. Represent an API endpoint.
2. Represent a capability.
3. Represent a feature.
4. Represent a flow step.

---

# Dependency Examples

## Marketplace Dependency

```text
Shopify
    ↓
OMS
```

OMS depends on Shopify order data.

---

## Logistics Dependency

```text
OMS
    ↓
DHL
```

Shipment creation depends on DHL APIs.

---

## Tracking Dependency

```text
DHL
    ↓
AfterShip
```

Tracking events depend on DHL event feeds.

---

## Complete Chain

```text
Shopify
    ↓
OMS
    ↓
WMS
    ↓
Carrier
```

A change in Shopify may affect all downstream systems.

---

# Dependency Types

The framework intentionally avoids creating a dependency type reference table.

Examples may include:

- Upstream Dependency
- Downstream Dependency
- Operational Dependency

These concepts remain documentation-only until proven necessary.

---

# Relationship with Flow

Flows answer:

```text
How does information move?
```

Dependencies answer:

```text
What is impacted if something changes?
```

Example:

Flow

```text
Carrier
    ↓
Tracking Provider
    ↓
Marketplace
```

Dependencies

```text
Marketplace
depends on
Tracking Provider

Tracking Provider
depends on
Carrier
```

---

# Relationship with Capability

Capabilities answer:

```text
What can be done?
```

Dependencies answer:

```text
What supports this capability?
```

Example:

Capability

```text
Tracking
```

Dependency

```text
Marketplace
depends on
Carrier tracking events
```

---

# Universal Applicability

Dependency Mapping applies to:

✅ Marketplace

✅ CMS

✅ ERP

✅ WMS

✅ TMS

✅ Carrier

✅ Payment Provider

✅ Tracking Provider

✅ CRM

✅ PIM

Therefore the concept complies with ADR-006.

---

# Potential Questions Enabled

Once implemented, the repository should be able to answer:

```text
What integrations depend on Shopify?

What integrations depend on DHL?

Which systems are impacted by an API change?

What are the downstream effects of an outage?
```

---

# Architectural Benefits

Dependency Mapping provides:

- Impact Analysis
- Change Risk Assessment
- Architecture Visibility
- System Relationship Discovery
- Better Documentation

---

# Future Database Evolution

Potential entity:

```text
integration_dependency
```

Potential model:

```text
Integration
    ↓
Dependency
    ↓
Integration
```

No SQL design is approved yet.

---

# Outcome

The repository identifies Dependency Mapping as the final major functional gap of Version 3.

Future work should focus on dependency visibility rather than expanding Capability, Feature or Flow complexity.
