# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install git
RUN apt-get update && apt-get install -y git

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port that Streamlit will run on
EXPOSE 8501

# Set environment variables for Streamlit
ENV STREAMLIT_SERVER_HEADLESS=true
ENV STREAMLIT_SERVER_PORT=8501

## Set the entrypoint to run the import script
#ENTRYPOINT ["python", "import.py"]
#
## Run the Streamlit application
#CMD ["streamlit", "run", "app.py"]


# Run the import script and then start the Streamlit application
CMD ["sh", "-c", "python import.py && streamlit run app.py"]