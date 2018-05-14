if [[ ! -o interactive ]]; then
    return
fi

compctl -K _dv dv

_dv() {
  local words completions
  read -cA words

  if [ "${#words}" -eq 2 ]; then
    completions="$(dv commands)"
  else
    completions="$(dv completions "${words[2,-2]}")"
  fi

  reply=("${(ps:\n:)completions}")
}
