FROM ubuntu
RUN apt update
RUN apt install --yes python3
RUN apt install --yes python3-pip
WORKDIR /home
COPY . /home
RUN pip install gunicorn
RUN pip install Flask
EXPOSE 5000
CMD ["gunicorn --bind 0.0.0.0:5000 app:app"]