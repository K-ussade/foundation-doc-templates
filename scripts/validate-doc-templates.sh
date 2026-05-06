#!/usr/bin/env bash
set -u

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required_files=(
  "README.md"
  "AGENTS.md"
  "CONTRIBUTING.md"
  "SECURITY.md"
  "CHANGELOG.md"
  "docs/architecture.md"
  "docs/template-standard.md"
  "docs/public-private-boundaries.md"
  "docs/review-before-publishing.md"
  "docs/usage-guide.md"
  "docs/graphs/template-system-map.md"
  "docs/graphs/document-review-flow.md"
  "docs/graphs/public-private-boundary-map.md"
  "docs/graphs/template-to-repo-map.md"
  "templates/README.template.md"
  "templates/governance-doc.template.md"
  "templates/public-report.template.md"
  "templates/program-page.template.md"
  "templates/release-notes.template.md"
  "templates/review-checklist.template.md"
  "templates/public-private-boundary.template.md"
  "templates/technical-overview.template.md"
  "templates/status-table.template.md"
  "examples/README.md"
  "examples/public-report-example.md"
  "examples/program-page-example.md"
  "scripts/validate-doc-templates.sh"
)

required_graph_sections=(
  "## Purpose"
  "## Mermaid Diagram"
  "## Interpretation Notes"
  "## Boundary Notes"
  "## Follow-Up Actions"
)

missing=0

printf "Foundation Doc Templates Validation\n"
printf "Root: %s\n\n" "$ROOT_DIR"

for file in "${required_files[@]}"; do
  if [ -f "$ROOT_DIR/$file" ]; then
    printf "PASS  %s\n" "$file"
  else
    printf "FAIL  %s\n" "$file"
    missing=$((missing + 1))
  fi
done

printf "\nGraph Structure Checks\n"

for graph in "$ROOT_DIR"/docs/graphs/*.md; do
  [ -f "$graph" ] || continue
  rel="${graph#$ROOT_DIR/}"
  for section in "${required_graph_sections[@]}"; do
    if grep -qF "$section" "$graph"; then
      printf "PASS  %s contains %s\n" "$rel" "$section"
    else
      printf "FAIL  %s missing %s\n" "$rel" "$section"
      missing=$((missing + 1))
    fi
  done
done

printf "\nPublic-Safe Example Checks\n"

for example in "$ROOT_DIR"/examples/*.md; do
  [ -f "$example" ] || continue
  rel="${example#$ROOT_DIR/}"
  if grep -Eiq "synthetic|public-safe" "$example"; then
    printf "PASS  %s is labeled synthetic/public-safe\n" "$rel"
  else
    printf "FAIL  %s lacks synthetic/public-safe label\n" "$rel"
    missing=$((missing + 1))
  fi
done

printf "\nBoundary Language Checks\n"

for file in "$ROOT_DIR"/README.md "$ROOT_DIR"/docs/public-private-boundaries.md "$ROOT_DIR"/docs/review-before-publishing.md; do
  rel="${file#$ROOT_DIR/}"
  if grep -qF "donor" "$file" && grep -qF "student" "$file" && grep -qF "sealed YOSO-YAi LLC IP" "$file"; then
    printf "PASS  %s contains required boundary exclusions\n" "$rel"
  else
    printf "FAIL  %s missing required boundary exclusions\n" "$rel"
    missing=$((missing + 1))
  fi
done

if [ "$missing" -eq 0 ]; then
  printf "\nResult: PASS - doc template repository is complete.\n"
  exit 0
fi

printf "\nResult: FAIL - %s required check(s) failed.\n" "$missing"
exit 1
