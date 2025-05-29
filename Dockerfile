FROM python:3.11-slim

WORKDIR /opt/project

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY django_project ./django_project
WORKDIR /opt/project/django_project

EXPOSE 5000

CMD ["python", "manage.py", "runserver", "0.0.0.0:5000"]
