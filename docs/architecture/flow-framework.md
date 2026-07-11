# Flow Framework

## Status

Approved

---

# Purpose

This document defines the concept of Flow within the Integration Catalog Database.

Its objective is to establish a common understanding of:

- business flows
- flow boundaries
- flow governance
- relationship with capabilities
- relationship with integrations

This framework supports:

- ADR-006 Integration Domain Model
- capability-framework.md
- feature-framework.md

---

# Problem Statement

The repository currently models:

- Integrations
- Capabilities
- Integration Features

This allows answering:

```text
What does an integration do?

What specialized functionality does it support?
```

However, the repository cannot currently answer:

```text
How does information move between systems?
```

This information is critical for integration architecture.

A dedicated concept is required.

---

# Definition

A Flow represents a business-oriented exchange of information between systems.

A Flow describes:

```text
How data moves
between systems
to achieve a business outcome.
```

A Flow focuses on process movement.

A Flow does not describe:

- a capability
- a feature
- an endpoint
- an API implementation

---

# Capability vs Flow

## Capability

Answers:

```text
What does the integration do?
```

Examples:

- Order Import
- Product Synchronization
- Shipment Creation
- Tracking

Capabilities represent business functions.

---

## Flow

Answers:

```text
How does information travel
to achieve the function?
```

Examples:

Marketplace
↓
OMS

OMS
↓
Carrier

Carrier
↓
Tracking Platform
↓
Marketplace

Flows represent information movement.

---

# Flow Characteristics

A Flow must:

1. Represent a business process.
2. Involve information exchange.
3. Be technology-independent.
4. Remain understandable by business users.

A Flow must not:

1. Represent an endpoint.
2. Represent an API call.
3. Represent a protocol.
4. Represent a provider-specific implementation.

---

# Flow Categories

The repository does not currently model flow categories.

Flows remain intentionally simple.

Examples:

- Order Import Flow
- Product Synchronization Flow
- Inventory Synchronization Flow
- Shipment Creation Flow
- Tracking Flow
- Returns Flow

---

# Supported Flow Examples

## Order Import Flow

Business Objective

Acquire customer orders from a sales channel.

Example

```text
Marketplace
    ↓
OMS
```

or

```text
CMS
    ↓
OMS
```

---

## Product Synchronization Flow

Business Objective

Distribute product information.

Example

```text
PIM
    ↓
OMS
    ↓
Marketplace
```

---

## Inventory Synchronization Flow

Business Objective

Share stock information.

Example

```text
WMS
    ↓
OMS
    ↓
Marketplace
```

---

## Shipment Creation Flow

Business Objective

Create shipments for customer orders.

Example

```text
OMS
    ↓
Carrier
```

---

## Tracking Flow

Business Objective

Provide shipment visibility.

Example

```text
Carrier
    ↓
Tracking Provider
    ↓
Marketplace
```

---

## Returns Flow

Business Objective

Manage reverse logistics operations.

Example

```text
Marketplace
    ↓
OMS
    ↓
Carrier
```

---

# Flow Scope

A Flow focuses on:

```text
Business movement
of information.
```

A Flow does not attempt to represent:

```text
Technical payloads
API contracts
Protocols
Authentication
```

These concepts already belong elsewhere in the model.

---

# Relationship with Integrations

A Flow may involve multiple integrations.

An Integration may participate in multiple flows.

Examples:

Shopify Integration

Participates in:

- Order Import Flow
- Product Synchronization Flow
- Inventory Synchronization Flow

---

DHL Integration

Participates in:

- Shipment Creation Flow
- Tracking Flow
- Returns Flow

---

# Relationship with Capabilities

Capabilities and Flows are complementary.

Capability:

```text
What can be done?
```

Flow:

```text
How is it achieved?
```

Example:

Capability

```text
Tracking
```

Flow

```text
Carrier
    ↓
Tracking Provider
    ↓
Marketplace
```

---

# Universal Applicability

The concept of Flow applies to all integration families.

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

# Future Database Evolution

Potential entities:

```text
integration_flow
```

and

```text
integration_flow_step
```

Potential structure:

Flow
↓
Flow Step
↓
System Participant

No SQL design has been approved yet.

---

# Architectural Benefits

Implementing Flows would provide:

- better architecture visibility
- improved onboarding
- improved documentation
- impact analysis
- process discovery

Typical questions:

```sql
What systems participate in the Tracking Flow?

Which flows involve Shopify?

Which flows use DHL?

Which flows involve a Marketplace?
```

---

# Future Considerations

The following topics remain out of scope:

- flow categories
- flow versioning
- flow status
- technical message schemas
- API payload modeling

The framework intentionally remains simple.

---

# Outcome

The repository now distinguishes:

Capability

```text
What the integration does
```

Feature

```text
What specialized functionality is available
```

Flow

```text
How information moves between systems
```

This creates a clear separation between business function, specialized functionality, and business process movement.
