# Dotfiles

Configurações pessoais para meu ambiente Linux, organizadas de forma simples e fáceis de sincronizar entre máquinas.

## Estrutura

```
dotfiles/
├── config/
│   ├── waybar
│   ├── wofi
│   └── hypr
└── setup.sh
```

* **waybar** – Barra de status (Wayland)
* **wofi** – Launcher minimalista
* **hypr** – Configurações do Hyprland

## Instalação

Clone o repositório:

```bash
git clone https://github.com/usuario/dotfiles.git ~/dotfiles
```

Execute o script de setup:

```bash
cd ~/dotfiles
./setup.sh
```

Para sobrescrever configurações existentes, use:

```bash
./setup.sh -f
```

## Como funciona

O script cria links simbólicos em `~/.config` apontando para as pastas dentro de `dotfiles/config`.
Isso permite manter todas as configs versionadas enquanto o sistema utiliza os symlinks.

## Requisitos

* Linux (Wayland)
* Hyprland
* Waybar
* Wofi
