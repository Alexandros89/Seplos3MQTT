ARG BUILD_FROM
FROM $BUILD_FROM

COPY  /workspace

RUN  \
  apk update
RUN  \
  pip3 install -r /workspace/requirements.txt

CMD [ "python3", "/workspace/seplos3mqtt.py"]
