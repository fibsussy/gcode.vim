# gcode.vim

G-code syntax highlighting and documentation for Vim/Neovim.

## Features

- Syntax highlighting for G-code files (`.nc`, `.ngc`, `.gcode`, `.torm`, `.tormach`)
- Hover documentation with `K` keymap - shows detailed info for G-codes and M-codes
- `GcodeMath` command - perform math operations on axis values in selected range
- Comprehensive documentation for G0-G154 and M0-M299

## Installation

### Vim 8+ / Neovim

```vim
" Manual
git clone https://github.com/fibsussy/gcode.vim ~/.vim/pack/plugins/start/gcode.vim

" Or with vim-plug
Plug 'fibsussy/gcode.vim'
```

### Neovim (lazy.nvim)

```lua
return {
  'fibsussy/gcode.vim',
  ft = { 'gcode', 'nc' },
}
```

## Usage

### Hover Documentation

Press `K` on any G-code or M-code to see documentation:

```
K on G81 shows:
────────────────────────────────────────
**G81**

Simple drilling cycle - Drill with rapid retract.

**Summary**
Drills to Z depth at current R level, rapid retract.

**Format**
`G81 <axes> R<retract_z> Z<depth>`

**Example**
```
G81 X1 Y1 R0.1 Z-0.5 F10
X2 Y1 (repeat at new location)
X3 Y1
G80 (cancel)
```
```

### GcodeMath

Perform math operations on axis values. Select lines in visual mode and run:

```vim
:GcodeMath
```

Example: `Y+69.42` adds 69.42 to all Y values in selection. Supported operations: `+`, `-`, `*`, `/`.

Keymap: `<Leader>gm`

### Supported File Types

- `.nc` - Common CNC extension
- `.ngc` - LinuxCNC G-code files
- `.gcode` - Generic G-code
- `.torm` / `.tormach` - Tormach files

## Documentation Source

Documentation is based on [LinuxCNC](https://linuxcnc.org/docs/html/gcode/) G-code reference.

## License

GPL-3.0
