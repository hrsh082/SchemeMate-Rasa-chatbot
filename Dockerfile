FROM rasa/rasa:3.6.20

USER root

# Install nginx
RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app

# Train the model
RUN rasa train

# Copy frontend to nginx
RUN rm -rf /var/www/html/*
RUN cp -r frontend/* /var/www/html/

# Expose ports
EXPOSE 80 5005

# Start nginx + rasa
CMD service nginx start && \
    rasa run --enable-api --cors "*" --port 5005
