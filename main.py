import csv
from sqlalchemy import create_engine, MetaData, Table, Column, Integer, String, Float, Boolean
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import mapper, sessionmaker
engine = create_engine('sqlite:///192.168.64.3', echo=True)
Base = declarative_base(engine)

class Pokemon(Base):
    __tablename__ = 'Pokemon'

    pokedex_number = Column(Integer, primary_key=True)
    name = Column(String)
    hp = Column(Integer)
    attack = Column(Integer)
    defense = Column(Integer)
    sp_attack = Column(Integer)
    sp_defense = Column(Integer)
    speed = Column(Integer)
    type_1 = Column(String)
    type_2 = Column(String, nullable=True)
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

    def __init__(self, pokedex_number, name, hp, attack, defense, sp_attack, sp_defense, speed, type_1, generation,
                 is_legendary, against_bug, against_dark, against_dragon, against_electric, against_fairy,
                 against_fight, against_fire, against_flying, against_ghost, against_grass, against_ground,
                 against_ice, against_normal, against_psychic, against_rock, against_steel, against_water,
                 type_2=None):
        self.pokedex_number = pokedex_number
        self.name = name
        self.hp = hp
        self.attack = attack
        self.defense = defense
        self.sp_attack = sp_attack
        self.sp_defense = sp_defense
        self.speed = speed
        self.type_1 = type_1
        self.type_2 = type_2
        self.generation = generation
        self.is_legendary = is_legendary
        self.against_bug = against_bug
        self.against_dark = against_dark
        self.against_dragon = against_dragon
        self.against_electric = against_electric
        self.against_fairy = against_fairy
        self.against_fight = against_fight
        self.against_fire = against_fire
        self.against_flying = against_flying
        self.against_ghost = against_ghost
        self.against_grass = against_grass
        self.against_ground = against_ground
        self.against_ice = against_ice
        self.against_normal = against_normal
        self.against_psychic = against_psychic
        self.against_rock = against_rock
        self.against_steel = against_steel
        self.against_water = against_water


def load_session():
    metadata = Base.metadata
    Session = sessionmaker(bind=engine)
    session = Session()
    return session

def main():
    session = load_session()
    res = session.query(Pokemon).all()

if __name__ == "__main__":
    main()