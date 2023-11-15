# Use an official Jupyter base image
FROM jupyter/scipy-notebook

# Expose the Jupyter Notebook port
EXPOSE 8888

# Copy the requirements.txt file into the container
COPY requirements.txt /tmp/

# Install Python packages from requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt


# Run Jupyter Notebook
CMD ["start-notebook.sh", "--NotebookApp.disable_check_xsrf=True", "--NotebookApp.ip='0.0.0.0'", "--NotebookApp.token=''", "--NotebookApp.password=''"]
