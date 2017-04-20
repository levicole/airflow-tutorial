#! /bin/bash

setupEnv() {
  mkdir virtualenv;
  virtualenv ./virtualenv;
  source virtualenv/bin/activate;
  sudo pip install -r requirements.txt
}

if ! command -v virtualenv 2> /dev/null; then
  echo "sudo pip installing virtualenv. It will be asking for your password"
  sudo pip install virtualenv
fi

setupEnv
