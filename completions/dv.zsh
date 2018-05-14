if [[ ! -o interactive ]]; then
    return
fi

compctl -K _dv dv

_dv() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(dv commands)"
  else
    completions="$(dv completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
