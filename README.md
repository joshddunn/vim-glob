# vim-glob

## Plug

Include in your plugins file

    Plug 'joshddunn/vim-glob'

## Usage

`files` are paths you want to ignore when searching for file names.
`global` are paths you want to ignore when searching for things globally.
`shared` are paths you want to ignore when searching for file names or globally.

Set this up in your vim config above usage of `glob#ignore('files')`.

```
let g:glob_ignore = {
  \ "shared": [
  \   "node_modules/**",
  \ ],
  \ "files": [
  \ ],
  \ "global": [
  \   "package-lock.json",
  \   "__*/**",
  \   "tags"
  \ ]
\ }
```

Then append `glob#ignore('files')` to your ripgrep command. For example, in your vim config

    let g:ackprg = "rg --vimgrep --smart-case " . glob#ignore('global')
