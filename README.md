# Apache PHP Docker Development

### Requirements

* [Docker]
* [Docker Compose]

### Installation

Assumes you have Docker and Docker Compose available at the command line. [Kitematic] recommended.

```sh
$ cd path/to/new_project
$ git clone git@github.com:tommycox/docker-apache-php-dev.git . # Clone docker-apache-php-dev
$ rm app/README.md && git clone git@github.com:your_user.your_project.git app # Clone your app into the app folder
$ mkdir ssh && cp ~/.ssh/id_rsa* ssh # Copy your ssh keys for use in container (Optional)
$ docker-compose up -d # Run containers in background
```

Your app should be available at your Docker machine's IP address (port 80 by default) which can easily be found using Kitematic. Now you can install Drupal/Backdrop/WP via the web GUI or open a terminal to your app (Kitematic provides simple terminal sessions) and import your database. Note that the database host won't be localhost when installing your app; it'll be the Docker container name, `{site_folder}_mysql_1` typically. Code stored in the app folder is available in your app container at /var/www/html.

[Docker]:https://www.docker.com/
[Docker Compose]:https://docs.docker.com/compose/
[Kitematic]:https://kitematic.com/
