FROM tiangolo/uwsgi-nginx-flask:python3.6
USER root
RUN pip install redis
ADD /azure-vote /app

HEALTHCHECK --interval=1m --timeout=30s --retries=3 \
    CMD curl -f http://localhost/ || exit 1
