#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run nm-applet
run urxvtd
run xxkb
run setxkbmap us,ru -option 'grp:caps_toggle,grp_led:scroll'
run xscreensaver -no-splash
run wmname Sawfish
