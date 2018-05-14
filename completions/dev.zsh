if [[ ! -o interactive ]]; then
    return
fi

compctl -K _dev dev

_dev() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(dev commands)"
  else
    completions="$(dev completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
