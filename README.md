## 🤖 My current Neovim setup

based from [here](https://github.com/surajitbasak109/nvim-minimal-config)

### Windows

- Open Power Shell or command prompt
- Change directory to `~/AppData/Local`
- clone this repo in that directory
- it will create `nvim` directory inside it
- Now run the `nvim` command to open neo vim
- It might show some warning messages though, so you have to install some plugins using below command in normal mode

```
:PlugInstall
```

- Wait for some time to install them (those plugins will be installed in `~/.vim` directory )
- Now restart your nvim or vim program

### Linux

- Go to `/.config` directory
- clone this repo using `git clone https://github.com/surajitbasak109/nvim-minimal-config`
- it will create `nvim-minimal-config` directory inside the `/.config` directory
- Rename the directory to `nvim` so command would be `mv nvim-minimal-config nvim`
- Now open terminal and run the nvim or vim command
- It might show some warning messages though, so you have to install some plugins using below command in normal mode

```
:PlugInstall
```

- Wait for some time to install them (those plugins will be installed in `~/.vim` directory )
- Now restart your nvim or vim program

## Features

- Leader key is `space` (see in vimrcs/keymaps.vim)
- Highlight Matching tags for HTML/XML
- Code Intellisense using coc
- Code formatting using ale ,prettier and phpcbf
- Open all opened buffers using leader-o
- File manager for current project on right side (NerdTree)
- Easy comment using `++` key combination
- Faster file opening with `ctrl-p` like VSCode (requires silverline-ag)
