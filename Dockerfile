# Pull base image
FROM python:3.9
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Set work directory
WORKDIR /test_1
# Install dependencies
COPY Pipfile Pipfile.lock /test_1/
RUN pip install pipenv && pipenv install --system
# Copy project
COPY . /test_1/
