import csv
import math
import numpy as np
import matplotlib.pyplot as plt
import sys
from sklearn.preprocessing import StandardScaler
import pandas as pd

pokemon_objs = []
class Pokemon(object):
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

    @staticmethod
    def generate_pokemon():
        with open('Pokemon_Data_Clean.csv', newline='', encoding="utf8") as pokemon_csv:
            reader = csv.DictReader(pokemon_csv)
            for row in reader:
                pokemon_objs.append(Pokemon(row['pokedex_number'],
                                       row['name'],
                                       row['hp'],
                                       row['attack'],
                                       row['defense'],
                                       row['sp_attack'],
                                       row['sp_defense'],
                                       row['speed'],
                                       row['type1'],
                                       row['generation'],
                                       row['is_legendary'],
                                       row['against_bug'],
                                       row['against_dark'],
                                       row['against_dragon'],
                                       row['against_electric'],
                                       row['against_fairy'],
                                       row['against_fight'],
                                       row['against_fire'],
                                       row['against_flying'],
                                       row['against_ghost'],
                                       row['against_grass'],
                                       row['against_ground'],
                                       row['against_ice'],
                                       row['against_normal'],
                                       row['against_psychic'],
                                       row['against_rock'],
                                       row['against_steel'],
                                       row['against_water'],
                                       row['type2']))

# available stats to avg: attack, defense, sp_attack, sp_defense, speed, hp
def find_avg_stat(pokemon_objs, stat):
    total = 0
    length = len(pokemon_objs)
    stat_avg = 0
    if stat == "attack":
        for pokemon in pokemon_objs:
            total += float(pokemon.attack)
    elif stat == "defense":
        for pokemon in pokemon_objs:
            total += float(pokemon.defense)
    elif stat == "sp_attack":
        for pokemon in pokemon_objs:
            total += float(pokemon.sp_attack)
    elif stat == "sp_defense":
        for pokemon in pokemon_objs:
            total += float(pokemon.sp_defense)
    elif stat == "hp":
        for pokemon in pokemon_objs:
            total += float(pokemon.hp)
    elif stat == "speed":
        for pokemon in pokemon_objs:
            total += float(pokemon.speed)
    stat_avg = total/length
    return round(stat_avg, 2)

def main():
    Pokemon.generate_pokemon()
    #for pokemon in pokemon_objs:
    #    print(pokemon.name)
    test = find_avg_stat(pokemon_objs, "hp")
    print(test)

if __name__ == "__main__":
    main()