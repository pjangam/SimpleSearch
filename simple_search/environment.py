import os


class Environment:
    SITE_ID = int(os.environ.get('SITE_ID', 1))
    ENV_NAME = os.getenv("ENV")
