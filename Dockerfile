FROM alpine:3.12.1

RUN apk add --no-cache python3 && \ 
   apk add --no-cache py-pip && \
   apk add build-base && \
   apk add python3-dev && \
   apk add libffi-dev && \
   apk add openssl-dev

RUN pip install cryptography

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["python3", "hello.py"]

