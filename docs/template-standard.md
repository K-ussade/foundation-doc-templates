# Template Standard

## Purpose

This standard defines the minimum structure for public-safe templates in this repository.

## Required Template Elements

Every template should include:

| Element | Requirement |
| --- | --- |
| Title | Clear document type and placeholder name. |
| Status | Planned, scaffolded, released, paused, deprecated, draft, or private/not-public. |
| Owner / authority | Entity owner and review authority. |
| Purpose | Concrete operating purpose, not marketing language. |
| Public boundary | Allowed and forbidden material. |
| Review gate | Human review required before publication or claim reuse. |
| Links | GitHub, Hugging Face, or `218.network` placeholders only when status allows. |

## Placeholder Rules

- Use bracketed placeholders such as `[repository-name]`, `[status]`, and `[review-authority]`.
- Do not include real donor, student, volunteer, customer, or private operations examples.
- Mark synthetic examples as synthetic in the title and body.
- Do not write claims that depend on unreleased artifacts.

## Status Language

Use:

- `planned` for named future work without a public artifact.
- `scaffolded` for a public repo or template skeleton without release claims.
- `released` only when the public artifact, review status, and public link exist.
- `draft / not yet published` for monetization or client-facing preparation.
- `private/not-public` for material that must not appear in public surfaces.
