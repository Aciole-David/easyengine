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

- Install and activate Fusion Core plugin
- Install and activate Fusion Builder plugin
- Install and activate Fusion White Label Branding plugin
- Install and activate Advanced Custom Fields PRO plugin
- Install and activate Wordpress Importer plugin

## Import Theme Options

- Click in Avada -> Theme Options -> Import/Export -> Import Contents from File
- Copy configs from paradb_options_backup_27-05-2019.json
- Click in Save Changes





