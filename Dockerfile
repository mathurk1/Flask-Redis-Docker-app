FROM python:alpine 

WORKDIR /docker-flask-app
COPY ./requirements.txt ./
RUN pip install -r requirements.txt

COPY ./src ./src

CMD ["python", "src/app.py"]