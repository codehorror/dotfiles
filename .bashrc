#!/bin/bash

# Fancier promt
export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] @ \[$(tput sgr0)\]\[\033[38;5;2m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]\[\033[38;5;6m\][\w]\[$(tput sgr0)\]\[\033[38;5;15m\] \\$ \[$(tput sgr0)\]"

# Unix Aliases
alias ll="ls -lhA"
alias ls="ls -CF"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ps="ps auxf"

# Solvatio Aliases

SOLVATIO_APP_PATH="/opt/app/solvatio"

alias cds="cd $SOLVATIO_APP_PATH"

if [ "$HOSTNAME" = "t-sol-as-01.swi.srse.net" ]; then
  SOLVATIO_HELPDESK1="test-helpdesk1"
  SOLVATIO_HUB="test-hub"
fi

if [ "$HOSTNAME" = "t-sol-as-02.swi.srse.net" ]; then
  SOLVATIO_HELPDESK1="test-helpdesk1"
fi

if [ "$HOSTNAME" = "p-sol-as-01.swi.srse.net" ]; then
  SOLVATIO_HELPDESK1="prod-helpdesk1"
  SOLVATIO_HUB="prod-hub"
fi

if [ "$HOSTNAME" = "p-sol-as-02.swi.srse.net" ]; then
  SOLVATIO_HELPDESK1="prod-helpdesk1"
fi

if [ "$HOSTNAME" = "d-sol-as-01.swi.srse.net" ]; then
  SOLVATIO_HELPDESK1="dev-helpdesk1"
  SOLVATIO_HELPDESK2="dev-helpdesk2"
  SOLVATIO_HUB="dev-hub"
fi

if [ ! -z "$SOLVATIO_HELPDESK1" ]; then
  alias cdsl="cd $SOLVATIO_APP_PATH/logs/$SOLVATIO_HELPDESK1/solvatio"
  alias cdal="cd $SOLVATIO_APP_PATH/logs/$SOLVATIO_HELPDESK1"
  alias cdsc="cd $SOLVATIO_APP_PATH/config/$SOLVATIO_HELPDESK1"
fi

if [ ! -z "$SOLVATIO_HELPDESK2" ]; then
  alias cd2sl="cd $SOLVATIO_APP_PATH/logs/$SOLVATIO_HELPDESK2/solvatio"
  alias cd2al="cd $SOLVATIO_APP_PATH/logs/$SOLVATIO_HELPDESK2"
  alias cd2sc="cd $SOLVATIO_APP_PATH/config/$SOLVATIO_HELPDESK2"
fi

if [ ! -z "$SOLVATIO_HUB" ]; then
  alias cdhsl="cd $SOLVATIO_APP_PATH/logs/$SOLVATIO_HUB/solvatio"
  alias cdhal="cd $SOLVATIO_APP_PATH/logs/$SOLVATIO_HUB"
  alias cdhsc="cd $SOLVATIO_APP_PATH/config/$HUB"
fi

