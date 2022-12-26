# stopwatch.nvim ⏱️

Extremely simple plugin for keeping track of how much time has passed since you started your current instance of Neovim.
The elapsed time is displayed on the "HOUR:MINUTE" format, without the SECONDS, because I find them kinda distracting. 

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
        lualine_c = { 'filename', require('stopwatch').delta_time },
    },
}
```
