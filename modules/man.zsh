#colorize manpage
man() {
  env \
    LESS_TERMCAP_md=$(printf '\e[1;32m') \
    LESS_TERMCAP_us=$(printf '\e[1;36m') \
    LESS_TERMCAP_ue=$(printf '\e[0m') \
    PAGER="${commands[less]:-$PAGER}" \
    _NROFF_U=1 \
    man $@
}