#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MAIN_TEX="${MAIN_TEX:-resume.tex}"
MAIN_BASENAME="${MAIN_TEX%.tex}"

cd "$ROOT_DIR"

if ! command -v tectonic >/dev/null 2>&1; then
  echo "Error: 'tectonic' is not installed." >&2
  echo "Install it on Arch with: paru -S --needed tectonic" >&2
  exit 1
fi

case "${1:-build}" in
  build)
    tectonic -X compile "$MAIN_TEX" --keep-logs --keep-intermediates
    echo
    echo "Built: ${MAIN_BASENAME}.pdf"
    ;;
  clean)
    rm -f "${MAIN_BASENAME}.aux" \
          "${MAIN_BASENAME}.log" \
          "${MAIN_BASENAME}.out" \
          "${MAIN_BASENAME}.xdv"
    echo "Cleaned intermediate files for ${MAIN_BASENAME}"
    ;;
  rebuild)
    "$0" clean
    "$0" build
    ;;
  *)
    echo "Usage: $0 [build|clean|rebuild]" >&2
    exit 1
    ;;
esac
