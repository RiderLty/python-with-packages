FROM riderlty/python-with-packages
COPY requirements.txt .
RUN pip install --no-cache-dir -r /requirements.txt && rm -rf /requirements.txt