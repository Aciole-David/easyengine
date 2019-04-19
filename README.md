## Create ParaDB Container:

docker run -di -p 80:80 -p 6000:6000 --name ParaDB -h paradb --restart=always paradb/ee

## Access ParaDB Container

docker exec -it ParaDB /bin/bash

## Create ParaDB site:

ee site create domain --php7 --wpsubdir --wpfc --user=login --pass=password --email=email
