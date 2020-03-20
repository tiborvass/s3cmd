# syntax = docker/dockerfile:1.1-experimental
FROM python:3-alpine
RUN --mount=target=/s3cmd,rw cd /s3cmd && python setup.py install
ENTRYPOINT ["s3cmd"]
