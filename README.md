# stopwatch.nvim ⏱️

An extremely simple plugin to keep track of how much time has passed since you started your current instance of Neovim.

## Installation

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):
```lua
use 'mrbru12/stopwatch.nvim'
```

## Usage

Example setup as a [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) custom component:
```lua
-- Your lualine.lua configuration file

require('lualine').setup {
    sections = {
        -- This will display the elapsed time beside the file name 
        lualine_c = { 'filename', require('stopwatch').default },
    },
}
```
The elapsed time is formatted as "HOURS:MINUTES" by default, without the SECONDS, because I find them a bit distracting. However, if you want to change something, you can format it yourself using the plugin functions!
