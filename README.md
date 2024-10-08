# wsl-paste

Paste data from the Windows clipboard, but without carriage returns.

## Installation

Install with [fisher](https://github.com/jorgebucaran/fisher)

## Usage

I use this for NeoVim, like so:

```
in_wsl = os.getenv('WSL_DISTRO_NAME') ~= nil

if in_wsl then
	vim.g.clipboard = {
		['name'] = 'WslClipboard',
		['copy'] = {
			['+'] = 'clip.exe',
			['*'] = 'clip.exe',
		},
		['paste'] = {
			['+'] = 'fish --command wsl_paste',
			['*'] = 'fish --command wsl_paste',
		},
		['cache_enabled'] = 0,
	}
end
```
