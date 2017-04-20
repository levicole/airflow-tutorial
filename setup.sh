#! /bin/bash

setupEnv() {
  mkdir virtualenv;
  virtualenv ./virtualenv;
  source virtualenv/bin/activate;
  pip install -r requirements.txt
}

if ! command -v virtualenv 2> /dev/null; then
  pip install virtualenv
fi

setupEnv
