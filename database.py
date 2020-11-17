from sqlalchemy import create_engine, Column, Integer, String, Boolean, Float
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, relationship

Persisted = declarative_base()

class Pokemon(Persisted):
    __tablename__ = 'Pokemon'
    pokedex_number = Column(Integer, primary_key=True)
    name = Column(String(256))
    hp = Column(Integer)
    attack = Column(Integer)
    defense = Column(Integer)
    sp_attack = Column(Integer)
    sp_defense = Column(Integer)
    speed = Column(Integer)
    type_1 = Column(String(256))
    type_2 = Column(String(256), nullable=True)
    generation = Column(Integer)
    is_legendary = Column(Boolean)
    against_bug = Column(Float)
    against_dark = Column(Float)
    against_dragon = Column(Float)
    against_electric = Column(Float)
    against_fairy = Column(Float)
    against_fight = Column(Float)
    against_fire = Column(Float)
    against_flying = Column(Float)
    against_ghost = Column(Float)
    against_grass = Column(Float)
    against_ground = Column(Float)
    against_ice = Column(Float)
    against_normal = Column(Float)
    against_poison = Column(Float)
    against_psychic = Column(Float)
    against_rock = Column(Float)
    against_steel = Column(Float)
    against_water = Column(Float)

class Pokemon_Database(object):
    @staticmethod
    def construct_mysql_url(authority, port, database, username, password):
        return f'mysql+pymysql://{username}:{password}@{authority}:{port}/{database}'

    def __init__(self, url):
        self.engine = create_engine(url, pool_pre_ping=True)  # an engine is like an endpoint, something to connect to
        self.Session = sessionmaker()  # create a class for connections to that endpoint / pylint: disable=invalid-name
        self.Session.configure(bind=self.engine)  # associate the class with the endpoint

    def create_tables(self):
        Persisted.metadata.create_all(self.engine)  # create tables for all subclasses of Persisted

    def create_session(self):
        return self.Session()  # create a new session, which is like a connection to the database