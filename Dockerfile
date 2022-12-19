FROM python:3.6
RUN python -m pip install --upgrade pip
WORKDIR /app
EXPOSE 8000
COPY . .
RUN pip3 install -r requirement.txt
RUN python manage.py migrate
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
