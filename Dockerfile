FROM apache/airflow:2.6.0

# Install any additional packages if needed
# RUN pip install <your-packages>

COPY dags/ /opt/airflow/dags/
COPY requirements.txt /requirements.txt

RUN pip install --no-cache-dir -r /requirements.txt

# Set the entrypoint to the Airflow command
ENTRYPOINT ["airflow"]
