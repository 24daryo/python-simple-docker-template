# ===========================
# 1. Read .env file
# ===========================
import os
import dotenv
dotenv.load_dotenv('../.env')

VERSION=os.getenv('VERSION', "")

# ===========================
# 2. Read config file
# ===========================
import configparser
config = configparser.ConfigParser()
config.read('config.cfg', encoding='utf-8')

# TODO: Add more constants
CONFIG_VERSION=config.get('CONFIG', 'VERSION')