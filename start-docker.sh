#!/bin/bash

# 環境を選択するセレクターを表示する
PS3=$'\e[33mSelect environment:\e[0m '
options=("dev" "stg" "prd")
select opt in "${options[@]}"
do
    case $opt in
        "dev")
            COMPOSE_FILE="docker-compose.dev.yml"
            break
            ;;
        "stg")
            COMPOSE_FILE="docker-compose.stg.yml"
            break
            ;;
        "prd")
            COMPOSE_FILE="docker-compose.prd.yml"
            break
            ;;
        *) echo "Invalid option. Try again.";;
    esac
done
echo "Selected environment: $opt"

docker compose  -f $COMPOSE_FILE --env-file .env.$opt up --build -d
docker compose  -f $COMPOSE_FILE --env-file .env.$opt exec api bash
