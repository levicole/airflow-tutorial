# Setup

1. Clone this repository.
2. run:

```
./setup.sh
source virtualenv/bin/activate
export AIRFLOW_HOME=$(pwd)
airflow initdb
airflow webserver
```

If you experience any errors at any step, let me know!
