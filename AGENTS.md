# AGENTS.md

This file governs Codex work inside `foundation-doc-templates`.

## Repository Role

`foundation-doc-templates` is a public template repository for 218 Network Foundation documentation. It is not a repository for real records, governance drafts, donor data, program operations, model artifacts, dataset artifacts, incident material, or sealed development.

## Authority

- The 218 Network Foundation owns these public documentation templates.
- Human Foundation documentation standards authority remains upstream of publication.
- Codex may draft templates, examples, graphs, and validation checks.
- Codex is not governance, legal, release, safety, data, or publication authority.

## Entity Boundary Rules

- The Foundation is independent from YOSO-YAi LLC.
- The Foundation is not a YOSO-YAi marketing arm, CSR project, or product line.
- YOSOR is a product of YOSO-YAi LLC, not a Foundation product.
- Company and product references must be boundary context only.

## Public Boundary

Allowed:

- public-safe templates;
- placeholder examples;
- generic instructions;
- graph structures;
- boundary language;
- release status vocabulary.

Forbidden:

- real donor records;
- student data;
- school private data;
- volunteer private data;
- private Foundation operations;
- private board notes;
- legal drafts or privileged material;
- private incident records;
- private partner records;
- customer data;
- raw datasets;
- private telemetry;
- model weights;
- private evaluations;
- sealed YOSO-YAi LLC IP;
- secrets, tokens, and API keys;
- security-sensitive NEURONA operational details;
- unreviewed public claims.

## Writing Rules

- Use precise documentation infrastructure language.
- Keep placeholders generic and clearly marked.
- Do not invent real programs, releases, datasets, models, donors, grants, metrics, incidents, audits, or board actions.
- Use tables where they reduce ambiguity.
- Update graph and validation files when template requirements change.

## Validation

Before final response after edits:

1. Run `scripts/validate-doc-templates.sh`.
2. Check `git status --short`.
3. State validation result and residual human review needs.
