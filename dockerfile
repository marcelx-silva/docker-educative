# Specifing the image source
FROM python:3.9-rc-buster 

# Setting up Docker enviroment
WORKDIR /code

# Export env variables
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0

# Copy a file from host machine to the image. It's possible to specify a path of both files
COPY requirements.txt requirements.txt

# Run commands during the image building. We can execute 'Run' commands more than once in a dockerfile 
RUN pip3 install -r requirements.txt

COPY . .

# it only executes at container building not in the builiding image process
CMD ["flask","run"]
