FROM tiangolo/uwsgi-nginx-flask:python3.6
USER root
ADD /azure-vote /app
