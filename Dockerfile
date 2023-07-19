# Use an official Python runtime as the base image
FROM python:3.8-slim-buster
RUN pip install flask
# Set the working directory in the container
WORKDIR /pythoncode 

RUN mkdir templates
COPY navi.py .
COPY templates/login.html templates/
COPY templates/result.html templates/

# Expose the port on which the Flask app will run (change as needed)
EXPOSE 5000

# Set the environment variable to production
ENV FLASK_APP=navi.py
# Define the command to run the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]
