FROM n8nio/n8n:ai-beta

USER root

ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache ghostscript python3 curl ffmpeg
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools  pymupdf
USER node


WORKDIR /home/node/packages/cli
ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
