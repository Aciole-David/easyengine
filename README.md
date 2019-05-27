## Create ParaDB Container:

docker run -di -p 80:80 -p 6000:6000 --name ParaDB -h paradb --restart=always paradb/ee

## Access ParaDB Container

docker exec -it ParaDB /bin/bash

## Create ParaDB site:

ee site create domain --php7 --wpsubdir --wpfc --user=login --pass=password --email=email

## Create ParaDB database:

ee site create domain --mysql

------------------------------------------

## Config Max Upload to 100mb

## Install Themes

- Install Avada and Avada Child Themes
- Activate Avada Child Theme

## Install Plugins

- Install and activate Fusion Core plugin
- Install and activate Fusion Builder plugin
- Install and activate Fusion White Label Branding plugin
- Install and activate Advanced Custom Fields PRO plugin
- Install and activate Wordpress Importer plugin
- Install and activate ARI Adminer plugin
- Install and activate Better Font Awesome plugin
- Install and activate iframe plugin
- Install and activate Jetpack by WordPress.com plugin
- Install and activate Simple Download Monitor plugin
- Install and activate TinyMCE Advanced plugin
- Install and activate WordPress MU Domain Mapping plugin
- Install and activate WP-Optimize plugin
- Install and activate WP-ServerInfo plugin
- Install and activate wpDataTables plugin

## Import Theme Options

- Click in Avada -> Theme Options -> Import/Export -> Import Contents from File
- Copy configs from paradb_options_backup_27-05-2019.json
- Click in Import and Save Changes

## Import ParaDB Site Content

- Click in Tools -> Import -> WordPress -> Run Importer
- Select paradb.xml file
- Import author: admin
- Download and import file attachments
- Click in Submit

## Select ParaDB Site Content

- Click in Setting -> Reading
- Your homepage displays = A static page (select below)
- Homepage: Home
- Posts page: -
- Save changes

## Active Default Menu

- Click Appearance -> Menus
- Menu Settings -> Display location -> Active Main Navigation
- Save Menu
