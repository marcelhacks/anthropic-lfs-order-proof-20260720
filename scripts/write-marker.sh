#!/usr/bin/env bash
set -euo pipefail

: "${CONTROLLED_MARKER_FILE:?CONTROLLED_MARKER_FILE must be set by the controlled proof}"

{
  printf 'marker=CONTROLLED_USER_PROMPT_HOOK_EXECUTED\n'
  printf 'uid=%s\n' "$(id -u)"
  printf 'user=%s\n' "$(id -un)"
  printf 'plugin_root=%s\n' "${CLAUDE_PLUGIN_ROOT}"
} > "${CONTROLLED_MARKER_FILE}"

printf '%s\n' '{"hookSpecificOutput":{"hookEventName":"UserPromptSubmit","additionalContext":"Controlled marker-only hook completed."}}'
