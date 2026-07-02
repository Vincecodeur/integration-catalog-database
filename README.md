# Integration Catalog Database

## Overview

Integration Catalog Database is a PostgreSQL project designed to model and manage a catalog of business integrations used in ecommerce, logistics, SaaS, and supply chain ecosystems.

The objective of the project is to demonstrate professional relational database design practices while building a realistic integration repository capable of storing:

- Integration metadata
- Partner information
- Geographic coverage
- Functional capabilities
- Product compatibility
- Reporting and analysis data

This project is intentionally designed as a portfolio-grade SQL project focusing on architecture, data modeling, maintainability, and reporting.

## Key Learning Objectives

- PostgreSQL
- Relational modeling
- Primary Keys (PK)
- Foreign Keys (FK)
- Referential integrity
- One-to-Many relationships
- Many-to-Many relationships
- Junction tables
- SQL joins
- Reporting queries
- Data normalization
- Professional project structure

## Business Context

Modern software platforms rely on dozens or hundreds of integrations.

Examples include:

- Shipping carriers
- Ecommerce marketplaces
- CMS / Website platforms
- ERP solutions
- TMS solutions
- Logistics platforms

## Central Entity

The central entity of the model is: Integration.

An Integration can be associated with:

- A partner
- An integration type
- Multiple countries
- Multiple capabilities
- Multiple platform products

## Project Structure

integration-catalog-database/
├── README.md
├── CHANGELOG.md
├── .gitignore
├── database/
├── queries/
├── docs/
└── tests/

## Technologies

- PostgreSQL 17
- pgAdmin 4
- Git
- GitHub

## Status

In Progress

Current achievements:

- Relational schema created
- Reference data loaded
- Foreign Keys implemented
- Junction tables implemented
- Reporting queries implemented

## Author

Vincent Gueret
Technical Partnerships Manager
