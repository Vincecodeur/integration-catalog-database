# ADR-006 — Integration Domain Model

## Status

Accepted

---

## Date

2026-07-07

---

# Context

Le projet Integration Catalog Database a initialement été construit autour de plusieurs types d'intégrations étudiés dans le cadre du métier d'Integration Architect.

Au cours de la V2, plusieurs discussions ont porté sur des concepts spécifiques aux transporteurs :

- DDP
- Hazmat
- PUDO
- Manifest
- Insurance

Ces discussions ont mis en évidence un risque :

Le modèle pourrait progressivement devenir orienté transporteurs alors que l'objectif du projet est de créer un référentiel universel des intégrations d'entreprise.

Le catalogue doit être capable de représenter plusieurs familles d'intégrations :

- Marketplace
- CMS
- ERP
- WMS
- TMS
- Carrier
- Payment Provider
- Tracking Provider
- CRM
- PIM

---

# Problem

Sans garde-fou architectural, les futures évolutions risquent d'introduire dans le modèle principal des concepts propres à une seule famille d'intégrations.

Exemple :

DDP n'a de sens que pour certains transporteurs.

Prime n'a de sens que pour certaines marketplaces.

Markets n'a de sens que pour certains CMS.

L'intégration de tels concepts directement dans le modèle principal entraînerait :

- une perte de généricité
- une augmentation de la complexité
- un biais métier
- un coût de maintenance plus élevé

---

# Decision

Le projet adopte officiellement un modèle universel d'intégration.

L'objectif du repository n'est pas de représenter un domaine métier particulier.

L'objectif est de représenter les concepts communs à plusieurs familles d'intégration.

Une nouvelle entité peut être ajoutée au modèle principal uniquement si elle respecte l'une des conditions suivantes :

## Règle 1

Le concept est universel.

Exemples :

- Partner
- Integration
- Documentation
- Contact
- Endpoint
- Authentication
- Status
- Country

## Règle 2

Le concept est réutilisable par plusieurs familles d'intégration.

Exemples :

- Integration Method
- Endpoint Environment
- Country Coverage

Si aucune de ces deux conditions n'est remplie :

- le concept est documenté
- le concept reste hors du modèle principal
- une analyse complémentaire est nécessaire

---

# Supported Integration Families

## Marketplace

Exemples :

- Amazon
- Mirakl
- Backmarket
- Cdiscount

Flux typiques :

- Order Import
- Inventory Export
- Tracking Update

---

## CMS

Exemples :

- Shopify
- Magento
- WooCommerce
- BigCommerce

Flux typiques :

- Product Synchronization
- Inventory Update
- Order Import

---

## ERP

Exemples :

- SAP
- Dynamics
- NetSuite
- Odoo

Flux typiques :

- Purchase Orders
- Product Master Data
- Financial Data

---

## WMS

Exemples :

- Anchanto WMS
- Manhattan
- Körber

Flux typiques :

- Receiving
- Inventory
- Shipping

---

## TMS

Exemples :

- Shippingbo
- Metapack
- ShipStation

Flux typiques :

- Carrier Selection
- Label Generation
- Manifest Management

---

## Carrier

Exemples :

- DHL
- UPS
- Colissimo
- Chronopost

Flux typiques :

- Shipment Creation
- Tracking
- Pickup Request

---

## Payment Provider

Exemples :

- Stripe
- Adyen
- PayPal

Flux typiques :

- Authorization
- Capture
- Refund

---

## Tracking Provider

Exemples :

- Parcel Tracking
- Aftership
- Shipup

Flux typiques :

- Event Collection
- Shipment Monitoring

---

## CRM

Exemples :

- Salesforce
- HubSpot

Flux typiques :

- Customer Synchronization
- Lead Management

---

## PIM

Exemples :

- Akeneo
- Pimcore

Flux typiques :

- Product Enrichment
- Product Distribution

---

# Universal Concepts

Les concepts suivants sont considérés comme universels.

## Partner

Organisation fournissant ou exploitant une intégration.

---

## Integration

Connexion entre deux systèmes.

---

## Documentation

Source de connaissance associée à une intégration.

---

## Contact

Personne impliquée dans le cycle de vie de l'intégration.

---

## Integration Method

Méthode technique de communication.

Exemples :

- REST
- SOAP
- GraphQL
- FTP
- EDI

---

## Endpoint

Capacité technique exposée par un système.

Exemples :

- Tracking API
- Order API
- Product API

---

## Authentication Method

Mécanisme d'authentification.

Exemples :

- API Key
- OAuth 2.0
- Bearer Token

---

## Status

État du cycle de vie.

Exemples :

- Development
- QA
- Released
- Available

---

## Country

Couverture géographique.

---

# Family-Specific Concepts

## Carrier

- DDP
