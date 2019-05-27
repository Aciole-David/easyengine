## Create ParaDB Container:

docker run -di -p 80:80 -p 6000:6000 --name ParaDB -h paradb --restart=always paradb/ee

## Access ParaDB Container

docker exec -it ParaDB /bin/bash

## Create ParaDB site:

ee site create domain --php7 --wpsubdir --wpfc --user=login --pass=password --email=email

## Create ParaDB database:

ee site create domain --mysql

------------------------------------------

## Install Themes

- Install Avada and Avada Child Themes
- Activate Avada Child Theme

## Install Plugins

- Install e activate Fusion Core plugin
- Install e activate Fusion Builder plugin
- Install e activate Fusion White Label Branding plugin
- Install e activate Advanced Custom Fields PRO plugin


