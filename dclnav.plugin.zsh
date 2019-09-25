#!/usr/bin/zsh

dclnav() {
  docker-compose logs $@ | sed -r -e 's/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g' -e 's_^[^|]+\| __' | lnav
}

