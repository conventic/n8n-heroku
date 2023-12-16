FROM n8nio/n8n:ai-beta

USER root

RUN apk add ghostscript
RUN npm install -g llm-document-ocr

WORKDIR /home/node/packages/cli
ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
