# Dockerfile
#
# Project: TCPProx
#

FROM python:3

ADD prox.py .

ENV LISTEN_PORT=8080
ENV REMOTE_HOST='localhost'
ENV REMOTE_PORT=8081

EXPOSE $LISTEN_PORT

CMD ["python3", "./prox.py", "-L", $LISTEN_PORT, $REMOTE_HOST, $REMOTE_PORT]
