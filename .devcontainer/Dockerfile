ARG USER=vscode

FROM mcr.microsoft.com/devcontainers/base:bullseye
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends gnupg2 hstr gawk

USER $USER

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD [ "sleep", "infinity" ]
