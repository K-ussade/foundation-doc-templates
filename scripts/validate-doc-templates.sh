#!/usr/bin/env bash
set -u

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required_files=(
  "README.md"
  "AGENTS.md"
  "CONTRIBUTING.md"
  "SECURITY.md"
  "templates/README.md"
  "templates/AGENTS.md"
  "templates/governance.md"
  "templates/transparency-report.md"
  "templates/release-notes.md"
  "templates/public-private-boundary.md"
  "templates/quality-gate.md"
  "templates/graph.md"
  "templates/model-card.md"
  "templates/dataset-card.md"
  "templates/space-readme.md"
  "docs/template-guide.md"
  "docs/public-boundary-rules.md"
  "docs/versioning-policy.md"
  "docs/reuse-policy.md"
  "docs/quality-gate.md"
  "docs/graphs/documentation-standard-map.md"
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

printf "Foundation Document Templates Validation\n"
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

if [ "$missing" -eq 0 ]; then
  printf "\nResult: PASS - document templates scaffold is complete.\n"
  exit 0
fi

printf "\nResult: FAIL - %s required check(s) failed.\n" "$missing"
exit 1
