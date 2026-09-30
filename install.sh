#!/usr/bin/env bash
# ==============================================================================
#  Asanagi Umi - Dark Minimalist Anime Theme for Omarchy OS / Hyprland
# ==============================================================================

set -e

THEME_NAME="asanagi"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OMARCHY_THEMES_DIR="$HOME/.config/omarchy/themes/$THEME_NAME"

echo -e "\033[38;2;168;85;247m"
cat << "EOF"
    ___                                  _   __  __          _ 
   /   |  _________ _____  ____ _____ _ (_) / / / /___ ___  (_)
  / /| | / ___/ __ `/ __ \/ __ `/ __ `// / / / / / __ `__ \/ / 
 / ___ |(__  ) /_/ / / / / /_/ / /_/ // / / /_/ / / / / / / /  
/_/  |_/____/\__,_/_/ /_/\__,_/\__, //_/  \____/_/ /_/ /_/_/   
                              /____/                           
           Dark Minimalist Anime Theme for Omarchy OS
EOF
echo -e "\033[0m"

echo -e "\033[38;2;129;140;248m[*] Installing Asanagi minimalist theme files...\033[0m"

# 1. Ensure target theme directory exists
mkdir -p "$OMARCHY_THEMES_DIR"
mkdir -p "$OMARCHY_THEMES_DIR/backgrounds"

# 2. Copy colors.toml and backgrounds
cp "$SCRIPT_DIR/colors.toml" "$OMARCHY_THEMES_DIR/"
if [ -d "$SCRIPT_DIR/backgrounds" ]; then
    cp -r "$SCRIPT_DIR/backgrounds/"* "$OMARCHY_THEMES_DIR/backgrounds/"
fi
if [ -d "$SCRIPT_DIR/asanagi" ]; then
    cp -r "$SCRIPT_DIR/asanagi/"* "$OMARCHY_THEMES_DIR/backgrounds/"
fi

# 3. Copy application configs
mkdir -p "$OMARCHY_THEMES_DIR/hypr"
mkdir -p "$OMARCHY_THEMES_DIR/waybar"
mkdir -p "$OMARCHY_THEMES_DIR/kitty"
mkdir -p "$OMARCHY_THEMES_DIR/ghostty"
mkdir -p "$OMARCHY_THEMES_DIR/alacritty"
mkdir -p "$OMARCHY_THEMES_DIR/btop"
mkdir -p "$OMARCHY_THEMES_DIR/rofi"
mkdir -p "$OMARCHY_THEMES_DIR/mako"
mkdir -p "$OMARCHY_THEMES_DIR/fastfetch"
mkdir -p "$OMARCHY_THEMES_DIR/starship"

[ -f "$SCRIPT_DIR/hyprland.conf" ] && cp "$SCRIPT_DIR/hyprland.conf" "$OMARCHY_THEMES_DIR/hypr/"
[ -d "$SCRIPT_DIR/waybar" ] && cp -r "$SCRIPT_DIR/waybar/"* "$OMARCHY_THEMES_DIR/waybar/"
[ -d "$SCRIPT_DIR/kitty" ] && cp -r "$SCRIPT_DIR/kitty/"* "$OMARCHY_THEMES_DIR/kitty/"
[ -d "$SCRIPT_DIR/ghostty" ] && cp -r "$SCRIPT_DIR/ghostty/"* "$OMARCHY_THEMES_DIR/ghostty/"
[ -d "$SCRIPT_DIR/alacritty" ] && cp -r "$SCRIPT_DIR/alacritty/"* "$OMARCHY_THEMES_DIR/alacritty/"
[ -d "$SCRIPT_DIR/btop" ] && cp -r "$SCRIPT_DIR/btop/"* "$OMARCHY_THEMES_DIR/btop/"
[ -d "$SCRIPT_DIR/rofi" ] && cp -r "$SCRIPT_DIR/rofi/"* "$OMARCHY_THEMES_DIR/rofi/"
[ -d "$SCRIPT_DIR/mako" ] && cp -r "$SCRIPT_DIR/mako/"* "$OMARCHY_THEMES_DIR/mako/"
[ -d "$SCRIPT_DIR/fastfetch" ] && cp -r "$SCRIPT_DIR/fastfetch/"* "$OMARCHY_THEMES_DIR/fastfetch/"
[ -d "$SCRIPT_DIR/starship" ] && cp -r "$SCRIPT_DIR/starship/"* "$OMARCHY_THEMES_DIR/starship/"

echo -e "\033[38;2;74;222;128m[✓] Theme copied to: $OMARCHY_THEMES_DIR\033[0m"

# 4. Apply via Omarchy Theme Engine if installed
if command -v omarchy >/dev/null 2>&1; then
    echo -e "\033[38;2;168;85;247m[*] Activating theme via Omarchy CLI...\033[0m"
    omarchy theme set "$THEME_NAME" || omarchy-theme-set "$THEME_NAME" || true
elif command -v omarchy-theme-set >/dev/null 2>&1; then
    echo -e "\033[38;2;168;85;247m[*] Activating theme via omarchy-theme-set...\033[0m"
    omarchy-theme-set "$THEME_NAME" || true
else
    echo -e "\033[38;2;250;204;21m[!] Omarchy CLI not detected. Deploying standalone config links...\033[0m"
    mkdir -p "$HOME/.config/hypr"
    mkdir -p "$HOME/.config/waybar"
    mkdir -p "$HOME/.config/kitty"
    mkdir -p "$HOME/.config/ghostty"
    mkdir -p "$HOME/.config/alacritty"
    mkdir -p "$HOME/.config/btop/themes"
    mkdir -p "$HOME/.config/rofi"
    mkdir -p "$HOME/.config/mako"

    [ -f "$SCRIPT_DIR/hyprland.conf" ] && cp "$SCRIPT_DIR/hyprland.conf" "$HOME/.config/hypr/theme.conf"
    [ -f "$SCRIPT_DIR/waybar/style.css" ] && cp "$SCRIPT_DIR/waybar/style.css" "$HOME/.config/waybar/style.css"
    [ -f "$SCRIPT_DIR/kitty/kitty.conf" ] && cp "$SCRIPT_DIR/kitty/kitty.conf" "$HOME/.config/kitty/theme.conf"
    [ -f "$SCRIPT_DIR/btop/asanagi.theme" ] && cp "$SCRIPT_DIR/btop/asanagi.theme" "$HOME/.config/btop/themes/asanagi.theme"
    [ -f "$SCRIPT_DIR/mako/config" ] && cp "$SCRIPT_DIR/mako/config" "$HOME/.config/mako/config"
    [ -f "$SCRIPT_DIR/rofi/asanagi.rasi" ] && cp "$SCRIPT_DIR/rofi/asanagi.rasi" "$HOME/.config/rofi/config.rasi"

    # Set Wallpaper if swww exists
    WALLPAPER="$SCRIPT_DIR/backgrounds/default.jpg"
    if command -v swww >/dev/null 2>&1; then
        swww img "$WALLPAPER" --transition-type wipe --transition-angle 30 --transition-step 90 || true
    fi
fi

echo -e "\033[38;2;244;63;110m"
echo "========================================================"
echo "  Asanagi Minimalist Theme successfully installed!      "
echo "========================================================"
echo -e "\033[0m"
