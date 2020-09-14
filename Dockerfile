FROM python:3.7-buster
RUN mkdir -p /app
COPY requirements.txt start-server.sh /app/
COPY sample /app/
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8080
STOPSIGNAL SIGTERM
CMD ["/app/start-server.sh"]
