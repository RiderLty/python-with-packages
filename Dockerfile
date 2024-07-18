FROM riderlty/python-with-packagess
COPY requirements.txt .
RUN pip install --no-cache-dir -r /requirements.txt && pip install --no-cache-dir pyinstaller easyass
CMD ["bash"]
