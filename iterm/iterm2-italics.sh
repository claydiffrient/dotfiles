# From https://gist.github.com/kepbod/2ea79ee2ada4c22591dc043c1ed4364c

{ infocmp -1 xterm-256color ; echo "\tsitm=\\E[3m,\n\tritm=\\E[23m,"; } > /tmp/xterm-256color.terminfo
tic /tmp/xterm-256color.terminfo
