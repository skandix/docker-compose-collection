# docker-compose-collection
My colletion of docker-compose files and that HOPEFULLY doesnt contain any senseitive information... :joy:

# Install
There is already great guides out there on how to install both Docker and Docker-compose :)
* [Docker](https://docs.docker.com/engine/install/)
* [Docker-Compose](https://docs.docker.com/compose/install/#install-compose-on-linux-systems)

## How to use?!
1. Find the docker-compose.yml you want to use.
2. Copy it to a safe place ;)
3. rename ``example.env`` to ``.env``
4. edit the ``.env`` to fit your setup
5. run ``docker compose up -d``to bring up all containers as described in docker-compose.yml
6. Profit ?!?!

Remember it is important one use docker compose(Compose V2) and not docker-compose(Compose V1),

### tl;dr how to use docker-compose
* ``docker compose ps``
    * get process list of running dockers in that specific "stack"
* ``docker compose up`` 
    * brings up the containers specified in that docker-compose file, since ``-d`` is not used it will print out all logs to the
        terminal
* ``docker compose down``
    * brings down all the containers specified in that docker-compose file
* ``docker compose logs <name_of_container>``
    * show all the logs of that container
* ``docker compose config``
    * shows the docker-compose config that is in use at this "stack"
