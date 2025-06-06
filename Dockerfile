# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies
RUN pip install --no-cache-dir -r requirements.txt
RUN python -m camoufox fetch

# Make port 5000 available to the world outside the container
EXPOSE 5000

# Run bot.py when the container launches

COPY ./run.sh /usr/bin/
RUN chmod +x /usr/bin/run.sh

EXPOSE 3389
ENTRYPOINT ["/usr/bin/run.sh"]
