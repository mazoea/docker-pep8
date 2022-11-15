FROM python:3-alpine

WORKDIR /opt/src/

RUN pip install --no-cache-dir -U pycodestyle

ENTRYPOINT [ "pycodestyle" ]
CMD [ "--version" ]
