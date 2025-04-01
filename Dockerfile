FROM python:3.10

# create a working directory
WORKDIR /app
# copy all files into work directory
COPY . .

# COPY requirements.txt .
# install requirement dependencies
RUN pip install --no-cache-dir -r requirements.txt
# expose port for outside container communication 
EXPOSE 5000
# set environment variable for app.py
ENV FLASK_APP=app.py
# expose environment variable to all network ports
ENV FLASK_RUN_HOST=0.0.0.0
# run command
CMD [ "flask", "run" ]