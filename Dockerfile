FROM --platform=linux/amd64 mongo:8.0.0-rc20-noble

LABEL maintainer="Anh Cao <anhcao4922@gmail.com>"

# Expose the MongoDB port (default: 27017)
EXPOSE 27017

# Start MongoDB
CMD ["mongod"]
