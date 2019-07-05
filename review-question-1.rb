require 'pry'

## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]

# How would you get the url for Bulbasaur's ability?
def ability_url(pokemon_dataset, character_string)
  p pokemon_dataset.find {|character| character[:name] == character_string}[:abilities][0][:ability][:url]
end

# How would you return the first pokemon with base experience over 40?
def first_high_ability(pokemon_dataset,exp)
  p pokemon_dataset.find {|character| character[:base_experience] > exp}[:name]
end

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
def high_ability(pokemon_dataset,exp)
  pokemon_dataset.select {|character| character[:base_experience] > exp}.map {|character| character[:name]}
end

# How would you return an array of all of the pokemon's names?
def pokemon_names(pokemon_dataset)
  p pokemon_dataset.map {|character| character[:name]}
end

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
# whatever method you use should return true if there are any such pokemon, false if not.
def high_weight?(pokemon_dataset,weight)
  p !pokemon_dataset.find {|character| character[:weight] > weight}.nil?
end


ability_url(pokemon,"bulbasaur")
first_high_ability(pokemon,40)
high_ability(pokemon,40)
pokemon_names(pokemon)
high_weight?(pokemon,60)
