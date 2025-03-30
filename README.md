# docker-testapps

Here is your README in proper markdown format:

```markdown
# Docker-TestApps Project

This project sets up a basic Node.js application with MongoDB using Docker and Docker Compose. The application allows the creation and retrieval of users from a MongoDB database. It contains the following components:

1. **Server Setup** (`server.js`): The Node.js server using Express to handle API requests for adding and getting users.
2. **Dockerfile**: Docker configuration to build the app image.
3. **MongoDB Docker Compose File** (`mongo-db.yaml`): Docker Compose configuration for running MongoDB and Mongo Express containers.
4. **HTML and CSS Files**: Static files served by the Node.js application.

## Project Structure

```
docker-testapps/
│
├── public/
│   ├── index.html
│   └── style.css
│
├── server.js
├── Dockerfile
└── mongo-db.yaml
```

### Dependencies

- **Node.js** (for the backend)
- **MongoDB** (database)
- **Mongo Express** (web UI for MongoDB)
- **Express** (Node.js framework)
- **MongoDB Node.js Driver** (to connect and interact with MongoDB)

## Installation

### Prerequisites

- Docker and Docker Compose must be installed on your system.

### Step 1: Clone the repository

Clone the repository to your local machine:

```bash
git clone https://github.com/Namaannn001/docker-testapps.git
cd docker-testapps
```

### Step 2: Build and run the Docker containers

1. **Build the Docker image for the Node.js application**:

```bash
docker build -t docker-testapps .
```

2. **Start the application and MongoDB services using Docker Compose**:

```bash
docker-compose -f mongo-db.yaml up
```

This will start the following containers:

- **MongoDB**: Running on port `27017`.
- **Mongo Express**: Web UI for MongoDB, available at `http://localhost:8081`.
- **Node.js Server**: Running on port `5050` and serving your API.

### Step 3: Running the Application

1. The backend is now running on `http://localhost:5050`.
2. You can interact with the server by sending GET and POST requests to the following endpoints:

   - **GET** `/getUsers`: Retrieve all users from the MongoDB database.
   - **POST** `/addUser`: Add a new user to the database by sending a JSON object in the request body.

Example of POST request to add a user:

```json
{
  "name": "John Doe",
  "email": "john.doe@example.com"
}
```

### Step 4: Accessing Mongo Express

Mongo Express provides a web interface to interact with MongoDB. You can access it at:

```
http://localhost:8081
```

Use the following credentials to log in:

- **Username**: admin
- **Password**: qwerty

## Files Overview

### `server.js`

This file contains the Node.js code for the server. It connects to MongoDB, retrieves users, and allows new users to be added to the database. 
### `Dockerfile`

The `Dockerfile` defines the process for building the Docker image. It sets up a Node.js container, installs dependencies, and runs the `server.js` file. 

### `mongo-db.yaml`

This Docker Compose YAML file defines the services needed to run MongoDB and Mongo Express. It configures the MongoDB container and Mongo Express web interface.

## Testing the Application

1. Open your browser and go to `http://localhost:5050`.
2. You can use a tool like Postman or cURL to test the API endpoints (`/getUsers`, `/addUser`).
3. You can also check the Mongo Express UI at `http://localhost:8081` to see the data stored in MongoDB.

## Conclusion

This project provides a simple example of using Docker to set up a Node.js application with MongoDB. It leverages Docker Compose to run MongoDB and Mongo Express, while the Node.js app interacts with the database to manage user data.

## 🙌 Author
**NAMAN**  
📌 GitHub: [Namaannn001](https://github.com/Namaannn001/)
