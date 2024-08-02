# Use Python 3.6 or later as a base image
FROM node:1.0

# Copy contents into image
 COPY . . 

# Install express & npm
RUN npm install .
#npm install --save express .

# Expose the correct port
EXPOSE 5000

# Create an entrypoint
ENTRYPOINT ["npm", "start"]
