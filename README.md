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

| Component      | Tool                     |
|----------------|--------------------------|
| 🖥️ Compositor   | [Hyprland](https://hyprland.org/) |
| 📊 Bar          | [Waybar](https://github.com/Alexays/Waybar) |
| 🔒 Lockscreen   | [Hyprlock](https://github.com/hyprwm/hyprlock) |
| 🔔 Notification | [Dunst](https://dunst-project.org/) / [Swaync](https://github.com/ErikReider/SwayNotificationCenter) |
| 💻 Terminal     | [Kitty](https://sw.kovidgoyal.net/kitty/) / [Alacritty](https://alacritty.org/) |
| 🐧 Distro       | [Arch Linux](https://archlinux.org/) |

---

## 📁 Structure

```
hyprland-rice/
├── .config/
│   ├── hypr/          # Hyprland config
│   ├── waybar/        # Waybar config & style
│   ├── hyprlock/      # Lockscreen config
│   ├── dunst/         # Notification daemon config
│   └── kitty/         # Terminal config
├── install.sh         # Automated install script
└── README.md
```

---

## 🚀 Installation

### Prerequisites

Pastikan kamu sudah menginstall **Arch Linux** dengan **Hyprland** sebelumnya.

**Install dependencies yang diperlukan:**

```bash
sudo pacman -S hyprland waybar hyprlock dunst kitty
```

> Untuk package AUR, gunakan AUR helper seperti `yay` atau `paru`.

---

### ⚡ Quick Install (Otomatis)

```bash
git clone https://github.com/FidenID/hyprland-rice.git
cd hyprland-rice
chmod +x install.sh
./install.sh
```

Script `install.sh` akan otomatis menyalin semua config ke direktori yang sesuai.

---

### 🛠️ Manual Install

Jika ingin install secara manual:

```bash
git clone https://github.com/FidenID/hyprland-rice.git
cd hyprland-rice

# Backup config lama (opsional)
cp -r ~/.config/hypr ~/.config/hypr.bak

# Copy semua config
cp -r .config/* ~/.config/
```

Kemudian restart Hyprland untuk menerapkan perubahan.

---

## ⌨️ Keybindings

> _Tambahkan keybinding utama kamu di sini, contoh:_

| Keybind | Action |
|---------|--------|
| `SUPER + T` | Open Terminal |
| `SUPER + Q` | Close Window |
| `SUPER + L` | Lock Screen |
| `SUPER + F` | Toggle Fullscreen |
| `SUPER + Space` | Open Launcher |

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
