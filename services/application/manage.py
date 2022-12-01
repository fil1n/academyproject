import logging
import sys

from app.cli import execute
from app.config import Config

logging.basicConfig(format=Config.LOGGING_FORMAT)

if __name__ == '__main__':
    execute(sys.argv)
