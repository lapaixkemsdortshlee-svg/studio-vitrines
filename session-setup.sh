#!/usr/bin/env bash
# Auto-setup lancé au début de CHAQUE session Claude Code sur ce repo.
# Le conteneur web est ephemere (il repart de zero), donc on reinstalle a chaque fois.
set -uo pipefail

echo "[vitrine-setup] gstack (browse, design-review, qa, ship, design-html)"
if [ ! -d "$HOME/.claude/skills/gstack" ]; then
  git clone --single-branch --depth 1 https://github.com/garrytan/gstack.git "$HOME/.claude/skills/gstack" 2>/dev/null \
    && ( cd "$HOME/.claude/skills/gstack" && ./setup >/dev/null 2>&1 ) \
    && echo "[vitrine-setup] gstack installe" \
    || echo "[vitrine-setup] gstack ignore (reseau ?)"
else
  echo "[vitrine-setup] gstack deja present"
fi

# --- Optionnel : Magic (21st.dev), generation de composants UI ---
# Necessite une cle API 21st.dev. Pose-la comme variable d'env MAGIC_API_KEY
# (Reglages de l'environnement), puis decommente les 3 lignes ci-dessous.
# if [ -n "${MAGIC_API_KEY:-}" ]; then
#   claude mcp add magic -- npx -y @21st-dev/magic@latest API_KEY="$MAGIC_API_KEY" >/dev/null 2>&1 \
#     && echo "[vitrine-setup] magic branche"
# fi

echo "[vitrine-setup] done"
