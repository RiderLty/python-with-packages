FROM riderlty/python-with-packages
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r /requirements.txt 
# RUN rm -rf /requirements.txt
RUN pip uninstall easyass -y
RUN pip install easyass 
RUN sed -i '5s/__init__(self, value: int | str)/__init__(self, value)/' /usr/local/lib/python3.9/site-packages/easyass/common/asstypes.py
RUN cat /usr/local/lib/python3.9/site-packages/easyass/common/asstypes.py
CMD ["bash"]
