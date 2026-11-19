# 🌌 My Neovim Configuration

A customized Neovim setup built on top of [LazyVim](https://github.com/LazyVim/LazyVim), designed for a fast, beautiful, and feature-rich development experience.

## 🚀 Quick Start

1. **Backup your current configuration:**
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```
2. **Clone this repository:**
   ```bash
   git clone https://github.com/your-username/your-repo-name.git ~/.config/nvim
   ```
3. **Open Neovim:**
   ```bash
   nvim
   ```
   *Lazy.nvim will automatically install all plugins.*

---

## 🛠️ Configuration & Options

Customized settings defined in `lua/config/options.lua`:

- **Leader Keys**: `<Space>` as Leader, `\` as LocalLeader.
- **Autoformat**: Enabled by default (`vim.g.autoformat = true`).
- **Typography**: Uses `JetBrainsMono Nerd Font` (size 10).
- **UI**:
  - `cmdheight = 0`: Hidden command line (handled by Noice).
  - `laststatus = 3`: Global statusline.
  - `conceallevel = 2`: Better rendering for Markdown and LaTeX.
  - `smoothscroll`: Enabled for Neovim 0.10+.
- **Editing**:
  - `spell`: Enabled for English (`en`).
  - `root_spec`: Custom root detection (looks for `.git`, `lua`, `.obsidian`, `package.json`, etc.).

---

## ⌨️ Custom Keymaps

A collection of powerful shortcuts defined in `lua/config/keymaps.lua`.

### General Editing
| Key | Mode | Description |
|-----|------|-------------|
| `U` | N | Redo (opposite of `u`) |
| `<C-e>` | N | Select all text |
| `<C-c>` | N | Copy whole buffer to clipboard |
| `<C-v>` | I | Paste from clipboard |
| `p` | V | Paste without overwriting the register |
| `Alt-d` | N, X | Delete without yanking |
| `Alt-c` | N, X | Change without yanking |
| `dd` | N | Smart delete (don't yank empty lines) |
| `+` / `-` | N | Increment / Decrement number |
| `gO` / `go` | N | Insert empty line above / below |
| `<M-BS>` | I, C | Delete word (like bash) |

### Navigation & Tabs
| Key | Mode | Description |
|-----|------|-------------|
| `<` / `>` | N | Deindent / Indent (one stroke) |
| `<M-h/j/k/l>`| I | Move cursor in Insert mode |
| `E` | N | Go to end of word backwards (`ge`) |
| `tab` / `s-tab`| N | Next / Previous Tab |
| `<leader>tab 1-9`| N | Switch to specific tab |
| `<leader>f tab`| N | Search/Select tabs |
| `leader b tab`| N | Open current buffer in a new tab |

### Windows & Splits
| Key | Mode | Description |
|-----|------|-------------|
| `<leader>_` | N | Horizontal split |
| `<leader>\` | N | Vertical split |

### Search & Tools
| Key | Mode | Description |
|-----|------|-------------|
| `<leader>?` | N | Search current word on Brave Search |
| `g/` | V | Search inside visual selection |
| `*` / `#` | V | Search visually selected text |
| `<leader>fd`| N | Open Dashboard |
| `<leader>ft`| N | Floating Terminal (Root) |
| `<C-\>` | N, T | Toggle Floating Terminal |
| `<leader>!` | N | Add word to dictionary |
| `<leader>ghb`| N | Git Blame line (Snacks) |

---

## 🧩 Extras

This configuration leverages both LazyVim built-in extras and custom local extras.

### Enabled Built-in Extras
- **Coding**: `yanky.nvim` (enhanced yank history)
- **Editor**: `neo-tree.nvim` (file explorer)
- **Languages**: `docker`, `markdown`, `python`
- **UI**: `mini.hipatterns` (color highlighters)
- **Utility**: `vscode` (VSCode-like features)

### Custom Local Extras (`lua/plugins/extras/`)
| Extra | Description |
|-------|-------------|
| **Neo-tree Extended** | Enhanced mappings (`e`, `E`, `b`, `g`) and file **diffing support** (`D`). |
| **YAML Extended** | Integration with `yaml-companion` for schema selection (`<leader>cy`) and statusline info. |
| **Ansible Extended** | Automatic filetype detection for playbooks/tasks and `ansible-lint` integration. |
| **Bash** | Treesitter, LSP, Shellcheck linting, and Bash testing support. |
| **Auto-save** | Automatically saves files on `InsertLeave` or `TextChanged`. |
| **Discord RCP** | Rich Presence for Discord using `neocord`. |
| **WakaTime** | Automatic time tracking for your coding sessions. |

---

## 📦 Plugin Management

Powered by [lazy.nvim](https://github.com/folke/lazy.nvim).

- Use `<leader>ll` to open the Lazy UI.
- Use `<leader>lu` to update plugins.
- Use `<leader>lx` to manage LazyVim extras.

---
*Happy Coding!* 🚀
