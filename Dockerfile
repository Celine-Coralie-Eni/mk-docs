FROM python:3.9-slim AS builder
#Set a working directory inside the container
WORKDIR /app
#Copy requirements (if any) to install dependencies first (better caching) 
COPY requirements.txt .

#Install mk-docs and material for mk-docs
RUN pip install --no-cache-dir -r requirements.txt

#Copy the project files into the container
COPY . .

#Build the project
RUN mkdocs build 

FROM nginx:latest

#Copy project build code to ngnix server
COPY --from=builder /app/site /usr/share/nginx/html

#Expose the MkDocs development server port
#EXPOSE 8000

#Default command to serve the documentation
# CMD ["xdg-open", "site/index.html"]
