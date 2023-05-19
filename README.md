# Getgrav CMS pro docker

## About The Project

The goal is to set up fastly a local Getgrav CMS project with docker environment for professional uses.

### Built With

* [Getgrav CMS](https://github.com/getgrav/grav)

## New project

   ```sh
   make create-init <project>
   cd ../<project>-docker
   make copy-env-file
   # Fill env file
   make up
   ```

## Existing project

### Create project directory

(Soon)

## Make commands

### Connect to Prestashop container

  ```sh
  make shell
  ```

### Reset project

  ```sh
  make prune
  ```