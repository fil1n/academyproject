from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

from services.application.data.schemes import Base

engine = create_engine("sqlite:///main.db", echo=False)

Base.metadata.create_all(engine)

Session = sessionmaker(bind=engine)
