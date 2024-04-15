FROM python:3.8
ENV PYTHONUNBUFFERED 1
WORKDIR /app


COPY requirements.txt /app/
EXPOSE 8000
# Define environment variable
ENV NAME World
RUN pip install -r requirements.txt
COPY . /app/

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "myproject.wsgi:application"]


