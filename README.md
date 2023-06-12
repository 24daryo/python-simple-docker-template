## 2. Setup on local

### 2-1. Setup venv (only for the first time).

Please execute the following code to set up the local development environment.

```
$ python -m venv venv
$ source venv/bin/activate
$ pip install --upgrade pip
$ pip install -r requirements.txt
```

### 2-2. `docker-compose.yaml`の起動

> Please make sure to install Docker beforehand.

Execute the following command in the command line to enter the environment:

```shell
$ bash start-docker.sh
```

To exit, please execute the following command:

```shell
$ exit
```
