FROM python:3.7
ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY ./server /app
# RUN python manage.py collectstatic --noinput
EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]