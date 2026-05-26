#!/bin/bash
# Install /looks-expensive for Claude Code, Cursor, and/or Codex

set -e

SKILL_DIR="skills/looks-expensive"

echo ""
echo "  /looks-expensive installer"
echo "  =========================="
echo ""

installed=0

# Claude Code
if [ -d "$HOME/.claude/skills" ]; then
  cp -r "$SKILL_DIR" "$HOME/.claude/skills/looks-expensive"
  echo "  [ok] Claude Code  -> ~/.claude/skills/looks-expensive"
  installed=$((installed + 1))
fi

# Cursor
if [ -d "$HOME/.cursor/skills-cursor" ]; then
  cp -r "$SKILL_DIR" "$HOME/.cursor/skills-cursor/looks-expensive"
  echo "  [ok] Cursor       -> ~/.cursor/skills-cursor/looks-expensive"
  installed=$((installed + 1))
elif [ -d "$HOME/.cursor" ]; then
  mkdir -p "$HOME/.cursor/skills-cursor"
  cp -r "$SKILL_DIR" "$HOME/.cursor/skills-cursor/looks-expensive"
  echo "  [ok] Cursor       -> ~/.cursor/skills-cursor/looks-expensive"
  installed=$((installed + 1))
fi

# Codex
if [ -d "$HOME/.codex/skills" ]; then
  cp -r "$SKILL_DIR" "$HOME/.codex/skills/looks-expensive"
  echo "  [ok] Codex        -> ~/.codex/skills/looks-expensive"
  installed=$((installed + 1))
fi

echo ""
if [ $installed -eq 0 ]; then
  echo "  No supported tools found. Install manually:"
  echo ""
  echo "  Claude Code:  cp -r $SKILL_DIR ~/.claude/skills/looks-expensive"
  echo "  Cursor:       cp -r $SKILL_DIR ~/.cursor/skills-cursor/looks-expensive"
  echo "  Codex:        cp -r $SKILL_DIR ~/.codex/skills/looks-expensive"
else
  echo "  Installed for $installed tool(s). Run /looks-expensive in a new session."
fi
echo ""
