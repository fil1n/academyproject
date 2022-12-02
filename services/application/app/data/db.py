from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

from app.config import Config
from app.data.schemes import Base

engine = create_engine(Config.form_db_uri())

Base.metadata.create_all(engine)

Session = sessionmaker(bind=engine)
