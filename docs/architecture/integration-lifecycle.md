# Integration Lifecycle

## Purpose

This document defines the lifecycle of an integration.

The objective is to ensure that all stakeholders use a common understanding of each integration status.

Stakeholders include:

- Product Managers
- Solution Architects
- Developers
- QA Engineers
- Partnership Managers
- Implementation Teams
- Customer Success Teams

---

# Lifecycle Overview

```text
Idea
    ↓
Planned
    ↓
Analysis
    ↓
Development
    ↓
QA
    ↓
Released
    ↓
Pilot
    ↓
Available
    ↓
Deprecated
    ↓
Retired
```

---

# Status Definitions

## Idea

### Description

An integration opportunity has been identified.

### Characteristics

- No commitment has been made.
- Business value is being evaluated.
- Technical feasibility may still be unknown.

### Typical Sources

- Customer request
- Market opportunity
- Partner discussion
- Product strategy

---

## Planned

### Description

The integration has been approved for future implementation.

### Characteristics

- Prioritized in a roadmap.
- Resources may not yet be assigned.
- Development has not started.

---

## Analysis

### Description

Business and technical analysis are being performed.

### Activities

- API investigation
- Documentation review
- Requirements gathering
- Architecture assessment

### Deliverables

- Functional specification
- Technical specification
- Effort estimation

---

## Development

### Description

Implementation is in progress.

### Activities

- Coding
- Unit testing
- Internal reviews

### Characteristics

- Not available to customers.

---

## QA

### Description

Testing and validation phase.

### Activities

- Functional testing
- Regression testing
- API validation
- Error handling validation

### Characteristics

- Development is considered complete.
- Quality validation is ongoing.

---

## Released

### Description

The integration has been deployed.

### Characteristics

- Technically available.
- Can be enabled.
- Monitoring is required.
- Stability is not yet fully proven.

### Typical Duration

Varies by organization.

---

## Pilot

### Description

The integration is used by a limited number of customers.

### Characteristics

- Production traffic exists.
- Close monitoring is performed.
- Real-world behavior is validated.
- Feedback is actively collected.

### Objective

Validate stability before broad availability.

---

## Available

### Description

The integration is fully available for general usage.

### Characteristics

- Stable.
- Supported.
- Documented.
- Commercially available.
- No enhanced monitoring required.

### Typical Meaning

This status indicates that the integration has successfully completed the pilot phase.

---

## Deprecated

### Description

The integration remains available but is no longer recommended.

### Characteristics

- Existing customers may continue using it.
- New implementations are discouraged.
- Replacement solutions may exist.

---

## Retired

### Description

The integration is no longer supported.

### Characteristics

- No maintenance.
- No support.
- No new implementations.
- May be removed from future releases.

---

# Governance Rules

## Rule 1

An integration must have exactly one lifecycle status.

---

## Rule 2

Status changes should reflect actual lifecycle progression.

---

## Rule 3

Status values must come from the `integration_status` reference table.

Free-text status values are not allowed.

---

# Reporting Examples

Examples of useful reporting:

- Integrations by lifecycle status
- Integrations currently in Pilot
- Integrations currently in QA
- Integrations available for customers
- Integrations approaching retirement
