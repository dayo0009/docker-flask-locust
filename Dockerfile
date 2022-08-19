FROM python:3.7.3-stretch

# Working directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py /app/


# Install packages from requirements.txt
RUN pip install --upgrade pip~=2.* &&\
        pip install --trusted-host pypi.python.org -r requirements.txt