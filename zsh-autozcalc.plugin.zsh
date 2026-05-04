accept-line() {
  if [[ $BUFFER =~ '^[ (]*[+-]? *(0[xX]|.)?[[:digit:]]+[^[:alnum:]]' ]]; then
    echo
    zcalc -e $BUFFER
    print -rs -- $BUFFER
    BUFFER=
  fi
  zle .$WIDGET
}
zle -N accept-line
