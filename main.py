import csv
import numpy as np
import matplotlib.pyplot as plt
import sys
from sklearn.preprocessing import StandardScaler
from sklearn.cluster import DBSCAN
from sklearn.datasets import make_blobs
from sklearn import metrics

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

def add_against_stats(pokemon):
    stat = float(pokemon.against_bug)
    stat += float(pokemon.against_dark)
    stat += float(pokemon.against_dragon)
    stat += float(pokemon.against_electric)
    stat += float(pokemon.against_fairy)
    stat += float(pokemon.against_fight)
    stat += float(pokemon.against_fire)
    stat += float(pokemon.against_flying)
    stat += float(pokemon.against_ghost)
    stat += float(pokemon.against_grass)
    stat += float(pokemon.against_ground)
    stat += float(pokemon.against_ice)
    stat += float(pokemon.against_normal)
    stat += float(pokemon.against_psychic)
    stat += float(pokemon.against_rock)
    stat += float(pokemon.against_steel)
    stat += float(pokemon.against_water)
    return float(stat)

def create_against_defense_cluster_data(pokemon_obj):
    x_cords = []
    y_cords = []
    for pokemon in pokemon_objs:
        x = pokemon.defense
        y = add_against_stats(pokemon)
        x_cords.append(float(x))
        y_cords.append(y)
    coords = generate_x(x_cords, y_cords)
    return coords

# create a 2D array given all the cords
def generate_x(x_cords, y_cords):
    x = []
    for x_cords, y_cords in zip(x_cords, y_cords):
        x.append([x_cords, y_cords])
    return x

def create_x_y(pokemon_objs):
    x_cords = []
    y_cords = []
    for pokemon in pokemon_objs:
        # this is where you can choose what to put in x and y
        x_cords.append(float(pokemon.speed))
        y_cords.append(float(pokemon.defense))
    x = generate_x(x_cords, y_cords)
    return x

def generate_db_scan(pokemon_objs, stat1, stat2):
    # specify the stats you want to make the model for in create_x_y
    #centers = create_x_y(pokemon_objs)
    # use this one if you want to cluster defense with all the against_
    centers = create_against_defense_cluster_data(pokemon_objs)
    X, labels_true = make_blobs(n_samples=800, centers=centers, cluster_std=0.5, random_state=0)
    X = StandardScaler().fit_transform(X)
    db = DBSCAN(eps=.3, min_samples=5).fit(X)
    core_samples_mask = np.zeros_like(db.labels_, dtype=bool)
    labels = db.labels_

    n_clusters_ = len(set(labels)) - (1 if -1 in labels else 0)
    n_noise_ = list(labels).count(-1)

    #plot the result
    unique_labels = set(labels)
    colors = [plt.cm.get_cmap("Spectral")(each)
              for each in np.linspace(0, 1, len(unique_labels))]
    for k, col in zip(unique_labels, colors):
        if k == -1:
            # noise
            col = [0, 0, 0, 1]

        class_member_mask = (labels == k)
        xy = X[class_member_mask & core_samples_mask]
        plt.plot(xy[:, 0], xy[:, 1], 'o', markerfacecolor=tuple(col),
                 markeredgecolor='k', markersize=14)
        xy = X[class_member_mask & ~core_samples_mask]
        plt.plot(xy[:, 0], xy[:, 1], 'o', markerfacecolor=tuple(col),
                 markeredgecolor='k', markersize=6)
    plt.xlabel(f'{stat1}')
    plt.ylabel(f'{stat2}')
    plt.show()

def main():
    Pokemon.generate_pokemon()
    test = find_avg_stat(pokemon_objs, "hp")
    # need to specify what to label x/y
    generate_db_scan(pokemon_objs, "defense", "against_stats_combined")
    print(test)

if __name__ == "__main__":
    main()