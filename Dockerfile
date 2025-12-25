FROM rasa/rasa:3.6.20

USER root

RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app



# Frontend
RUN rm -rf /var/www/html/*
RUN cp -r frontend/* /var/www/html/

# Nginx config
RUN rm /etc/nginx/sites-enabled/default
COPY nginx.conf /etc/nginx/sites-available/default
RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

EXPOSE 80

ENTRYPOINT []

CMD ["/bin/bash", "-c", "service nginx start && rasa run --enable-api --cors \"*\" --host 0.0.0.0 --port 5005 --model models"]

