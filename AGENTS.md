# AGENTS.md

This file governs Codex work inside `foundation-doc-templates`.

## Repository Role

`foundation-doc-templates` is a public-safe documentation template library for Foundation-aligned repositories. It provides templates, synthetic examples, review gates, graph standards, and validation checks.

It is not a repository for private Foundation operations, donor records, student data, school private data, private incident reports, raw datasets, model weights, sealed YOSO-YAi LLC IP, customer data, private training corpora, credentials, or unreviewed public claims.

## Authority

- The 218 Network Foundation owns these public documentation standards.
- Human Foundation documentation authority remains upstream of publication.
- Codex may draft templates, examples, graphs, validation scripts, and documentation.
- Codex is not governance, release, legal, safety, data, monetization, or publication authority.

## Entity Boundary Rules

- The Foundation is independent from YOSO-YAi LLC.
- The Foundation is not a company marketing arm, CSR project, or product line.
- YOSOR is a product of YOSO-YAi LLC.
- Do not use Foundation language to sell company products.
- Do not use company or product language to define Foundation legitimacy.

## Public Boundary

Allowed:

- public-safe templates;
- clearly synthetic examples;
- generic boundary language;
- review checklists;
- Mermaid graph structure;
- release status vocabulary;
- links to public repositories that already exist.

Forbidden:

- donor private data;
- student data;
- school private data;
- volunteer private data;
- private Foundation operations;
- legal drafts or privileged material;
- private incident records;
- customer data;
- raw datasets;
- model weights;
- private training corpora;
- private evaluations;
- sealed YOSO-YAi LLC IP;
- secrets, tokens, and API keys;
- exact sensitive infrastructure locations;
- security-sensitive NEURONA operational details.

## Writing Rules

- Write in precise infrastructure-tech language.
- Mark examples as synthetic or placeholder-based.
- Keep publication status explicit.
- Include public/private boundary sections in templates where relevant.
- Do not claim a model, dataset, Space, school, NEURONA, deployment, or service exists unless the public artifact exists and review status is stated.
- Do not write final Upwork profile text, active offer copy, pricing, turnaround promises, or client-facing claims.

## Validation

Before final response after edits:

1. Run `scripts/validate-doc-templates.sh`.
2. Check `git status --short`.
3. State validation result and residual human review needs.
