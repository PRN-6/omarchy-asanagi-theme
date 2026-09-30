# 🌸 Asanagi Umi - Dark Minimalist Anime Theme for Omarchy OS

A dark, minimalist aesthetic theme for **Omarchy OS** (and standalone **Hyprland / Arch Linux** setups), custom designed from **Umi Asanagi** (朝凪海) and her signature artwork palette.

[![GitHub license](https://img.shields.io/badge/license-MIT-purple.svg)](https://github.com/PRN-6/omarchy-asanagi-theme)
[![Omarchy Theme](https://img.shields.io/badge/omarchy-theme-a855f7.svg)](https://github.com/PRN-6/omarchy-asanagi-theme)

---

## ⚡ Quick Install (Omarchy OS)

Run this single command in your terminal:

```bash
omarchy-theme-install https://github.com/PRN-6/omarchy-asanagi-theme
```
*(or `omarchy theme install https://github.com/PRN-6/omarchy-asanagi-theme`)*

To switch to the theme:
```bash
omarchy theme set asanagi
```
Or open the theme selector via the hotkey: **`Super + Alt + Space`** (Aether) or **`Super + Ctrl + Shift + Space`**.

---

## 🎨 Character Color Mapping

| Element | Color Hex | Source in Character Artwork |
| :--- | :--- | :--- |
| **Accent / UI Borders** | `#a855f7` / `#c084fc` | Electric Orchid Purple from Umi's front bangs & wallpaper UI cards |
| **Red / Warning Accent** | `#f43f6e` / `#ff4d6d` | Luminous Ruby Crimson Scarlet from Umi's expressive eyes |
| **Background (Main)** | `#13091f` | Deep Obsidian Plum from Umi's hair base & wallpaper backdrop |
| **Selection / Cards** | `#3b1d5c` | Deep Violet Mauve card background |
| **Cyan / Info** | `#38bdf8` | Sky Azure from uniform ribbon & shark hoodie |
| **Blue / Highlight** | `#818cf8` | Indigo-Navy hair sheen & ambient lighting |
| **Foreground Text** | `#e9d5ff` / `#faf5ff` | Crisp Soft Lavender-White from school uniform highlights |

---

## 📁 Repository Structure

```
├── colors.toml               # Central Omarchy color palette definition
├── icons.theme               # Default icon pack (Papirus-Dark)
├── backgrounds/              # Curated Asanagi wallpapers & assets
│   ├── default.jpg           # Main widescreen desktop wallpaper (朝凪海)
│   ├── card_ui.jpg           # Glassmorphism card UI wallpaper
│   ├── manga_minimal.jpg     # Manga sketch with ruby magenta eyes
│   ├── avatar.jpg            # Night city profile avatar & lockscreen
│   ├── portrait.jpg          # Portrait wallpaper
│   └── collage.jpg           # Shark hood collage wallpaper
├── hyprland.conf             # Hyprland window decorations, borders & blur
├── waybar/
│   ├── style.css             # Glassmorphism Waybar styling
│   └── config.jsonc          # Top bar module layout
├── kitty/
│   └── kitty.conf            # Kitty terminal colors & opacity
├── ghostty/
│   └── config                # Ghostty terminal palette & fonts
├── alacritty/
│   └── alacritty.toml        # Alacritty terminal configuration
├── foot/
│   └── foot.ini              # Foot Wayland terminal configuration
├── btop/
│   └── asanagi.theme         # Btop system monitor theme
├── rofi/
│   └── asanagi.rasi          # App launcher / Walker / Rofi styling
├── mako/
│   └── config                # Notification daemon styling
├── fastfetch/
│   └── config.jsonc          # Custom system info card
├── starship/
│   └── starship.toml         # Shell prompt configuration
├── install.sh                # Standalone fallback installer
├── preview.html              # Live interactive HTML preview
└── README.md
```

---

## 🖥️ Manual / Fallback Install

If you are using standalone Hyprland or Arch Linux without the Omarchy CLI:

```bash
git clone https://github.com/PRN-6/omarchy-asanagi-theme.git
cd omarchy-asanagi-theme
chmod +x install.sh
./install.sh
```

---

## 🌸 Live Browser Preview

Open [preview.html](file:///e:/project/omarchy%20theme/preview.html) in any web browser to preview the simulated desktop layout, Fastfetch info card, Btop monitor, and switch wallpapers in real-time.
