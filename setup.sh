#! /bin/bash
if ! command -v pip 2> /dev/null; then
  echo "You don't have pip installed, please install it: https://pip.readthedocs.io/en/stable/installing/#id8"
fi

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

setupEnv && echo "Now you have airflow installed! \n Now run:\n source virtualenv/bin/activate \nto activate your virtual environment"
