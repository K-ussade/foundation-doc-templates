# Public Boundary Rules

## Purpose

These rules define what all templates must exclude by default.

## Required Exclusions

Every public template should exclude:

- donor private data;
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

## Generated Output Rule

Generated summaries, examples, screenshots, logs, model outputs, dataset previews, and diagrams inherit the boundary of their inputs until reviewed.

## Placeholder Rule

Templates must use placeholders or synthetic examples. Real examples require explicit public review before inclusion.
