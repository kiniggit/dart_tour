// Playing with built-in types

var menuFoodPrices = {
  'Pizza': 5.5,
  'Hamburger': 4.5,
};

var menuDrinkPrices = {
  'Coke': 2,
  'Orange Juice': 3,
};

var menuFood = menuFoodPrices.keys.toList();

var menuDrink = menuDrinkPrices.keys.toList();

bool isInMenuFood(String name) => menuFoodPrices.containsKey(name);

bool isInMenuDrink(String name) => menuDrinkPrices.containsKey(name);
