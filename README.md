# dev

Automate development workflows

## Installation

```sh
$ basher install juanibiapina/dev
```

## Usage

### `dev open <project>`

Opens a project for working. `<project>` is the name of a directory, currently
hardcoded in `$HOME/development`.

A new tmux session named after the project is created and a default `EDITOR` and a terminal window are created. To customize the session windows, create a `.dev-session` file in the project root using the helper scripts in https://github.com/juanibiapina/dev/blob/master/lib/tmux.sh.
