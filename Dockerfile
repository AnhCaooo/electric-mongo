FROM mongo:8.0.0-rc20-noble

# Expose the MongoDB port (default: 27017)
EXPOSE 27017

# Create a volume for MongoDB data
VOLUME /data/db

# Start MongoDB
CMD ["mongod"]
