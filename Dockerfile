FROM python:3.9
COPY requirements.txt .
RUN apt-get update
RUN apt-get -y install python3-lxml  build-essential patchelf
RUN pip install --no-cache-dir -r /requirements.txt && pip install --no-cache-dir pyinstaller
RUN rm -rf /requirements.txt
CMD ["bash"]
