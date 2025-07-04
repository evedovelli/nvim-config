# Neovim Config

Currently used with neovim v0.11.2.

Clone the repository into the correct location (make a backup your current `nvim` directory if you want to keep it).

```
git clone https://github.com/evedovelli/nvim-config.git ~/.config/nvim
```

Run `nvim` in your terminal and wait for the plugins to be installed.

This config assumes that you have Nerd Fonts v3.0.0 or higher. If you are using an older version then please update your [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) otherwise there will be missing or wrong glyphs

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin

- On Ubuntu

  ```
  sudo apt install xsel
  ```

- On Arch Linux

  ```
  sudo pacman -S xsel
  ```
  
Next we need to install python support (node is optional)

- Neovim python support

  ```
  pip install pynvim
  ```

- Neovim node support

  ```
  npm i -g neovim
  ```
---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [fnm](https://github.com/Schniz/fnm).
