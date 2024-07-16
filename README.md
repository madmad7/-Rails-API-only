# -Rails-API-only
## Setup and Run

1. Clone the repository:
   ```sh
   git clone <repository_url>
   cd dog_api
   ```

2. Build and run the Docker containers:
   ```sh
   docker-compose build
   docker-compose up
   ```

3. Create the database:
   ```sh
   docker-compose run web rake db:create
   ```

4. Fetch and store dog breeds from the Dog API:
   ```sh
   docker-compose run web rake fetch:dog_breeds
   ```

5. Access the breeds data at:
   ```
   http://localhost:3000/api/v1/dogs/breeds
   ```

## API Endpoint

- `GET /api/v1/dogs/breeds`: Returns a list of all dog breeds.


Notes:

    Ensure Docker is installed on your machine before running the above commands.
    The default port is set to 3000; make sure this port is available or adjust the docker-compose.yml accordingly.
