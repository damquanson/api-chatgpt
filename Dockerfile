FROM python:3.9

WORKDIR /code
COPY ./requirements.txt /code/requirements.txt
RUN python -m pip install --upgrade pip
RUN pip install --upgrade -r /code/requirements.txt
COPY ./app /code/app

CMD ["/bin/bash", "-c", "cd app/;uvicorn main:app --host 0.0.0.0 --port 9000"]