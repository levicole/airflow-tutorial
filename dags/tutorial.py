from airflow import DAG
from airflow.operators.bash_operator import BashOperator
from datetime import datetime, timedelta

default_args = {
    'owner': 'levi',
    'depends_on_past': False,
    'start_date': datetime(2017, 4, 19, 11),
    'email': 'engineering@bloc.io',
    'email_on_failure': False,
    'email_on_retry': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5)
}

tutorial = DAG('tutorial', default_args=default_args)
