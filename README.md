# dv

Automate development workflows

## Installation

```sh
$ basher install juanibiapina/dv
```

## Usage

### `dv open <project>`

Opens a project for working. `<project>` is the name of a directory, currently
hardcoded in `$HOME/development`.

A new tmux session named after the project is created and a default `nvim` and a terminal window are created. To customize the session windows, create a `.dv-session` file in the project root using the helper scripts in https://github.com/juanibiapina/dv/blob/master/lib/tmux.sh.
