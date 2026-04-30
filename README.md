<div align="center">

# 🌸 Hyprland Rice — FidenID

**My personal Arch Linux dotfiles powered by Hyprland**

![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)
![Hyprland](https://img.shields.io/badge/Hyprland-58E1FF?style=for-the-badge&logo=wayland&logoColor=black)
![Waybar](https://img.shields.io/badge/Waybar-333333?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

</div>

---

## 📸 Preview

> _Screenshot / GIF preview bisa ditambahkan di sini_

---

## ✨ Components

| Component       | Tool                                                                 |
|-----------------|----------------------------------------------------------------------|
| 🖥️ Compositor    | [Hyprland](https://hyprland.org/)                                   |
| 📊 Bar           | [Waybar](https://github.com/Alexays/Waybar) — 5 style variants      |
| 🌅 Wallpaper     | [Waypaper](https://github.com/anufrievroman/waypaper)               |
| 🔒 Lockscreen    | [Hyprlock](https://github.com/hyprwm/hyprlock)                      |
| 🔔 Notification  | [Dunst](https://dunst-project.org/) / [Swaync](https://github.com/ErikReider/SwayNotificationCenter) |
| 💻 Terminal      | [Kitty](https://sw.kovidgoyal.net/kitty/)                           |
| 🐧 Distro        | [Arch Linux](https://archlinux.org/)                                |

---

## 🎨 Waybar Variants

Rice ini dilengkapi **5 varian Waybar** dengan style dan warna yang berbeda-beda. Ganti varian langsung dari terminal menggunakan perintah berikut:

| Perintah | Varian         |
|----------|----------------|
| `w1`     | Waybar Style 1 |
| `w2`     | Waybar Style 2 |
| `w3`     | Waybar Style 3 |
| `w4`     | Waybar Style 4 |
| `w5`     | Waybar Style 5 |

Cukup ketik perintahnya di terminal Kitty, dan Waybar akan langsung berganti tampilan.

---

## 🖼️ Wallpaper

Wallpaper dikelola menggunakan **Waypaper** — GUI wallpaper picker yang ringan dan mudah digunakan.

```bash
waypaper
```

---

## 📁 Structure

```
hyprland-rice/
├── .config/
│   ├── hypr/           # Hyprland config
│   ├── waybar/
│   │   ├── style1.css  # Style varian 1
│   │   ├── style2.css  # Style varian 2
│   │   ├── style3.css  # Style varian 3
│   │   ├── style4.css  # Style varian 4
│   │   ├── style5.css  # Style varian 5
│   │   └── config      # Waybar modules config
│   ├── hyprlock/       # Lockscreen config
│   ├── dunst/          # Notification daemon config
│   └── kitty/          # Terminal config
└── README.md
```

---

## 🚀 Installation

### Prerequisites

Pastikan sudah menginstall **Arch Linux** dengan **Hyprland** terlebih dahulu.

**Install dependencies:**

```bash
sudo pacman -S hyprland waybar hyprlock dunst kitty
yay -S waypaper  # dari AUR
```

---

### 📥 Manual Install

```bash
git clone https://github.com/FidenID/hyprland-rice.git
cd hyprland-rice

# Backup config lama (opsional tapi disarankan)
cp -r ~/.config/hypr ~/.config/hypr.bak
cp -r ~/.config/waybar ~/.config/waybar.bak

# Copy semua config
cp -r .config/* ~/.config/
```

Kemudian restart Hyprland untuk menerapkan perubahan.

---

### ⚙️ Setup Waybar Shortcuts

Pastikan alias `w1`–`w5` sudah ada di shell config kamu (`~/.bashrc` atau `~/.zshrc`):

```bash
alias w1="~/.config/waybar/launch.sh 1"
alias w2="~/.config/waybar/launch.sh 2"
alias w3="~/.config/waybar/launch.sh 3"
alias w4="~/.config/waybar/launch.sh 4"
alias w5="~/.config/waybar/launch.sh 5"
```

Setelah itu reload shell:

```bash
source ~/.bashrc   # atau source ~/.zshrc
```

---

## 📝 Notes

- Config ini dibuat untuk kebutuhan pribadi, namun bebas digunakan dan dimodifikasi.
- Jika ada masalah atau pertanyaan, silakan buka [Issue](https://github.com/FidenID/hyprland-rice/issues).

---

## 📜 License

Didistribusikan di bawah lisensi **MIT**. Lihat [`LICENSE`](LICENSE) untuk detail lebih lanjut.

---

<div align="center">

Made with ❤️ by [FidenID](https://github.com/FidenID)

</div>
