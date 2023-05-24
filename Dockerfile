FROM python:3.9
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
RUN docker --version
EXPOSE 5000
CMD ["python", "app.py"]