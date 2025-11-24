FROM python:3-alpine

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir pycodestyle && \
    rm -rf /root/.cache

WORKDIR /opt/src/
RUN adduser -D maz
USER maz

ENTRYPOINT [ "pycodestyle" ]
CMD [ "--version" ]
