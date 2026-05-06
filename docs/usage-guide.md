# Usage Guide

## Purpose

This guide explains how to use the template kit across GitHub repositories, Hugging Face companion documentation, and future portfolio artifacts.

## GitHub Repositories

1. Start from `templates/README.template.md`.
2. Add repository-specific status, owner, authority, public boundary, required docs, required graphs, refusal rules, and validation.
3. Add `AGENTS.md`, `CONTRIBUTING.md`, `SECURITY.md`, and `CHANGELOG.md` when the repository is public.
4. Add Mermaid graphs under `docs/graphs/` with purpose, diagram, interpretation notes, boundary notes, and follow-up actions.
5. Run the repository validator before commit and push.

## Hugging Face Companion Docs

Use this kit for companion README text, release notes, status tables, and public/private boundary language. Model cards and dataset cards should use the specialized public repositories:

- `foundation-model-cards`
- `foundation-dataset-cards`

Hugging Face is a release surface only. Do not place private development artifacts, private corpora, unreleased weights, or sensitive review notes there.

## Future Portfolio Artifacts

This repository may support future portfolio proof for documentation architecture, review gates, public/private boundary handling, and Mermaid documentation. Any portfolio or Upwork claim must remain draft until Alexandra reviews it and supporting proof exists.
