#!/bin/bash

case "$(xset -q | grep -A 0 'LED' | cut -c59-67)" in
  "00000000") echo -n "it" ;;
  "00001000") echo -n "us" ;;
  *) echo -n "unknown" ;;
esac
