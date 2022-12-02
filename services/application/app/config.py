import os


class Config:
    SQL_DRIVER = os.getenv('SQL_DRIVER')
    SQL_USER = os.getenv('SQL_USER')
    SQL_PASSWORD = os.getenv('SQL_PASSWORD')
    SQL_HOST = os.getenv('SQL_HOST')
    SQL_PORT = os.getenv('SQL_PORT')
    DATABASE = os.getenv('DATABASE')
    LOGGING_FORMAT = ('[%(asctime)s] {%(pathname)s:%(lineno)d}'
                      '%(levelname)s- %(message)s%m-%d %H:%M:%S')

    @classmethod
    def form_db_uri(cls):
        return '%s://%s:%s@%s:%s/%s' % (
            cls.SQL_DRIVER,
            cls.SQL_USER,
            cls.SQL_PASSWORD,
            cls.SQL_HOST,
            cls.SQL_PORT,
            cls.DATABASE
        )
