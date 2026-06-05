#!/usr/bin/env bash
# NeuroCopy Ads Master · instalador (macOS/Linux)
set -e
CYAN='\033[0;36m'; GREEN='\033[0;32m'; NC='\033[0m'
echo -e "${CYAN}Instalando NeuroCopy Ads Master...${NC}"
SKILLS="$HOME/.claude/skills"; TARGET="$SKILLS/neurocopy-ads-master"; CMD="$HOME/.claude/commands/neurocopy-ads-master"
mkdir -p "$SKILLS" "$CMD"
if [ -d "$TARGET/.git" ]; then (cd "$TARGET" && git pull --quiet); else rm -rf "$TARGET"; git clone --quiet https://github.com/zenithmetodo/neurocopy-ads-master.git "$TARGET"; fi
cp "$TARGET"/commands/*.md "$CMD/" 2>/dev/null || true
python3 -m pip install --user --break-system-packages python-docx 2>/dev/null || pip3 install python-docx 2>/dev/null || true
echo -e "${GREEN}✓ Instalado. Slash: /neurocopy-ads-master:ads-master${NC}"
echo "  Imágenes → skill neurocopy-image-ads-master"
