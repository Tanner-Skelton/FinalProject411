import csv
from cgitb import text

import pymysql
from database import Pokemon, Pokemon_Database

# engine = create_engine('mysql+pymysql://tanner:1234@127.0.0.1:8080/Pokemon_Database')
#Base = declarative_base(engine)
#print("connection")

def main():
    url = Pokemon_Database.construct_mysql_url('localhost', '8080', 'Pokemon_Database', 'tanner', '1234')
    database = Pokemon_Database(url)
    session = database.create_session()
    print("Session created")
    test = "Charizard"
    print(session.query(Pokemon).one())

if __name__ == "__main__":
    main()