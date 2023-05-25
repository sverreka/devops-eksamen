FROM alpine:3.14

RUN apk update && \
    apk add --no-cache git \
        build-base \
        libffi-dev \
        openssl-dev \
        python3-dev \
        py3-pip \
        gcc \
        postgresql-dev \
        psycopg2

WORKDIR /app

RUN git clone https://github.com/sverreka/devops-eksamen.git
RUN pip3 install psycopg2-binary

WORKDIR /app/devops-eksamen

RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["python3", "app.py"]

