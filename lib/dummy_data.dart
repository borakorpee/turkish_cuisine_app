import 'package:flutter/material.dart';
import './models/category.dart';
import './models/meal.dart';

//https://yummyistanbul.com/turkish-cuisine/
const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Breakfasts',
    color: Colors.purple,
    categoryImageUrl:
        'https://eskapas.com/wp-content/uploads/2021/01/turkish-breakfast-2.jpg',
  ),
  Category(
    id: 'c2',
    title: 'Dinners',
    color: Colors.red,
    categoryImageUrl:
        'https://www.tooistanbul.com/wp-content/uploads/2014/07/turkish-food.jpg',
  ),
  Category(
    id: 'c3',
    title: 'Breads',
    color: Colors.orange,
    categoryImageUrl:
        'https://stylesatlife.com/wp-content/uploads/2019/06/Different-Types-of-Bread-that-Deliciously-Tempt.jpg.webp',
  ),
  Category(
    id: 'c4',
    title: 'Soups',
    color: Colors.amber,
    categoryImageUrl:
        'https://www.turkfoodsrecipes.com/wp-content/uploads/2019/12/Best-Turkish-Soups-The-Most-Delicious-Soups-from-Turkish-Cuisine-500x353.jpg',
  ),
  Category(
    id: 'c5',
    title: 'Street Foods',
    color: Colors.blue,
    categoryImageUrl:
        'https://img.theculturetrip.com/450x/smart/wp-content/uploads/2021/06/tx23gc.jpg',
  ),
  Category(
    id: 'c6',
    title: 'Meze and Salads',
    color: Colors.green,
    categoryImageUrl:
        'https://ozlemsturkishtable.com/files/2016/03/IMG_5521-700x518.jpg',
  ),
  Category(
    id: 'c7',
    title: 'Desserts',
    color: Colors.lightBlue,
    categoryImageUrl:
        'https://media-cdn.tripadvisor.com/media/photo-s/06/0e/58/0f/limon-osmanli-mutfagi.jpg',
  ),
  Category(
    id: 'c8',
    title: 'Beverages',
    color: Colors.lightGreen,
    categoryImageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3JGUqAdlYKtjilFobpZijSjL0dGYGVq4lNw&usqp=CAU',
  ),
  Category(
    id: 'c9',
    title: 'Kebabs',
    color: Colors.pink,
    categoryImageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPEiKNg_Pz0vGQeHW2SfKolNXhEs0HHtbeaYUqgtnRtJQu8k-fZ_a3fJguDFXO_-7xSKo&usqp=CAU',
  ),
];

const DUMMY_MEALS = const [
  //BREAKFASTS

  Meal(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Menemen (Turkish Eggs Recipe)',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://thishealthytable.com/wp-content/uploads/2021/09/menemen-recipe.jpg',
    duration: 35,
    ingredients: [
      '1 tablespoon olive oil',
      '½ pound green peppers (about 2 poblano peppers*), diced',
      '1 pound tomatoes (about 3 beefsteak tomatoes**), grated on a box grater with skins discarded',
      '1 teaspoon paprika',
      '½ teaspoon kosher salt',
      '¼ teaspoon urfa biber, Aleppo pepper, or red pepper flakes',
      '3 large eggs',
      '1 ounce crumbled queso fresco or Turkish white cheese',
      '2 tablespoons chopped parsley',
    ],
    steps: [
      'Heat olive oil in a large skillet over medium heat. Once hot add the diced pepper. Sauté the pepper for 4 minutes. Stirring occasionally.',
      'Pour the grated tomato into the skillet. Stir to combine and let sauté for 15 minutes.',
      'Once the tomato pepper mixture has thickened, add the paprika, salt, and pepper flakes. Stir to combine.',
      'Break the eggs on top of the tomato pepper mixture and break the yolks with a spoon. Let the eggs cook for 3 to 4 minutes or until just set. The yolks can be a little runny as they will continue to cook once the skillet is removed from the heat.',
      'Top with the crumbed cheese and chopped parsley.',
      'Optional - serve with some pita bread or pide, and optional sides like olives, sliced cucumber, or cherry tomatoes.',
    ],
  ),

  //BREAKFASTS

  //DINNERS
  Meal(
    id: 'm2',
    categories: [
      'c2',
      'c1',
    ],
    title: 'Karniyarik (Stuffed Eggplant)',
    affordability: Affordability.Affordable,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://thishealthytable.com/wp-content/uploads/2021/10/Turkish-stuffed-eggplant-9-of-9-720x720.jpg',
    duration: 55,
    ingredients: [
      '3 Italian eggplants, halved',
      '2 teaspoons salt',
      '1 tablespoon olive oil',
      '1 medium yellow onion, diced',
      '1 pound lean ground beef',
      '1 green bell pepper, diced',
      '3 cloves garlic, minced',
      '4 tablespoons tomato paste, divided',
      '2 teaspoons sea salt',
      '1 teaspoon Aleppo pepper or red chili flakes',
      '1 teaspoon paprika',
      '3 tomatoes, grated (or 1 can diced tomatoes)',
      '½ cup chopped parsley',
      '2 to 3 tablespoons of neutral oil',
      '1 green chile (poblano or other), sliced',
      '½ cup water',
    ],
    steps: [
      'Preheat oven to 400 F.',
      'Cut a slit down the center of the halved eggplants without piercing the skin. Sprinkle the eggplants with salt and set them aside. This will help them release excess water.',
      'Heat a large skillet over medium-high heat. Add the olive oil and once it’s hot, add the diced onion. Sauté for 3 minutes.',
      'Add the ground beef and sauté for 2 to 3 minutes or until most of the pink is gone. Break it up into smaller chunks.',
      'Add the diced bell pepper and sauté for 2 minutes. Then add the tomato paste, sea salt, Aleppo pepper, and paprika to the skillet. Stir continuously for 30 seconds till the tomato paste is incorporated.',
      'Stir in the grated tomatoes and then bring the mixture to a low simmer for 5 minutes.',
      'Remove the skillet from the heat and stir in the chopped parsley.',
      'Using a paper towel to remove any excess water from the eggplants.',
      'Heat a few tablespoons of neutral oil in a large skillet or cast iron pan. Fry the eggplants cut side down for several minutes until they are browned and a little crisped. Flip them and cook the skin side for 2 minutes. Remove and set on a paper towel. Work in batches if necessary.',
      'Place the eggplants on a large, rimmed baking sheet or in a large baking dish. Top with the meat and pepper mixture. Place a slice or two of green chile on top of each eggplant.',
      'Stir together the remaining 2 tablespoons and ½ cup of water together, then pour in the bottom of the rimmed baking sheet or baking dish.',
      'Cover the eggplants with aluminum foil. Bake covered for 20 minutes and then remove the foil and bake for an additional 10 minutes.',
      'Remove from the oven and serve immediately.',
    ],
  ),

//DINNERS

//Breads
  Meal(
    id: 'm3',
    categories: [
      'c3',
      'c1',
    ],
    title: 'Simit Turkish Bagels',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://magazinebbm.com/assets/img/uploads/2021/02/istanbulda-simit-fiyatlarina-zam.jpg',
    duration: 60,
    ingredients: [
      '1 1/2 cup all-purpose flour',
      '1/2 teaspoon salt',
      '1 teaspoon sugar',
      '1 1/2 teaspoon yeast',
      '2 tablespoons vegetable oil',
      '1/2 cup warm water',
      '2 tablespoon molasses',
      '3 tablespoon water',
      '3/4 cup sesame seeds',
    ],
    steps: [
      'Firstly, preheat the oven to 400 degrees Fahrenheit and place a rack in the middle of the oven. Then combine the sugar and yeast with warm water and set aside for three minutes.',
      'Secondly, mix the flour, salt, and vegetable oil in a medium-sized bowl. (I prefer using pyrex mixing bowls, as they are non-porous and don’t absorb stains or odors.)',
      'Next, add the water and yeast mixture and knead for at least seven minutes.',
      'Then, cover it with a clean, dry towel and leave it in a warm place until it doubles in size. That will take about an hour to an hour and a half.',
      'Meanwhile, mix the molasses, water, and sesame seeds and set them aside.',
      'Thirdly, divide the dough into four equal-sized balls. Next, using a floured working surface, form each ball into a rope.',
      'Then, fold the rope and twist both halves of the rope. Finally, join the ends to make a circle, cover, and let sit for 30 minutes.',
      'Lastly, dip each side of the limit in the molasses and sesame seed mixture. Then bake the simit for 15 minutes until golden brown.',
    ],
  ),
//Breads

//SOUPS
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Turkish Lentil Soup (Mercimek Corbasi)',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://thishealthytable.com/wp-content/uploads/2021/09/mercimek-corbasi.jpg',
    duration: 52,
    ingredients: [
      '2 tablespoons olive oil',
      '1 medium yellow onion, diced',
      '1 large or 3 small carrots, peeled and diced',
      '1 medium Russet potato, peeled and diced',
      '2 garlic cloves, sliced',
      '1 tablespoon tomato paste',
      '1 teaspoon cumin',
      '1 teaspoon kosher salt',
      '½ teaspoon paprika',
      '½ teaspoon dried oregano',
      '¼ teaspoon black pepper',
      '¼ teaspoon cayenne OR Aleppo pepper',
      '5 cups vegetable or chicken broth',
      '1 cup red lentils',
      '1 teaspoon dried mint',
      '1 lemon, sliced',
    ],
    steps: [
      ' Heat the olive oil in a large, heavy-bottomed pot. Once the oil is hot, add the diced onion and sauté for 4 minutes.',
      'Add the diced carrot and diced potato to the pot. Sauté for 4 minutes, stirring occasionally.',
      'Add the garlic cloves and stir for 30 seconds.',
      'Add the tomato paste, cumin, salt, paprika, oregano, black pepper, and cayenne. Stir for 30 seconds and then deglaze the bottom of the pot with a small amount of the chicken or vegetable stock.',
      'Add the remaining stock and lentils. Stir and increase heat till the soup is boiling. Reduce the heat and allow to simmer for 30 minutes. Stir occasionally.',
      'If the soup is getting too thick, add up to 1 cup of water.',
      'Remove the soup from the heat and stir in the dried mint. Using an immersion blender or a stand blender, blend the soup till its creamy and all the ingredients are incorporated.',
      'Optional Paprika Oil - Heat the oil in a small pot and add the paprika. Stir to combine and remove from heat. Continue to stir till fully incorporated.',
      'Serve with lemon wedges. If youd like, add a sprinkle of chopped parsley and a drizzle of paprika oil.',
    ],
  ),

//SOUPS

//STREET FOODS
  Meal(
    id: 'm5',
    categories: [
      'c5',
    ],
    title: 'Tantuni (Turkish Lamb Wrap)',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://vidarbergum.com/wp-content/uploads/2021/06/tantuni-turkish-lamb-wrap-5.jpg.webp',
    duration: 30,
    ingredients: [
      '1 kg (2⅕ lbs) lamb (preferably leg), trimmed of fat',
      'water',
      '100 g (3½ oz) butter',
      '2 tsp pul biber (Aleppo pepper)',
      '¾ tsp ground cumin',
      '6 lavash or wheat tortilla wrap breads (c. 30 cm/12 in diameter)',
      'salt and pepper',
    ],
    steps: [
      'Slice the meat into döner like strips, or small cubes, depending on preference. Add to a large pot and cover with lightly salted water by 2-3 cm (1 in). Bring to a boil, then leave to simmer until the meat is completely tender. It will usually be done in around half an hour, but it all depends on how you slice your meat.',
      'Prepare your salad ingredients, so they are ready to add to your wraps as soon as the meat is done.',
      'Heat a thick large bottomed frying pan over medium/high heat. Add half the butter, then, once melted, half of the meat. Fry, stirring occasionally, until browned, around 4-5 minutes. Add a little salt and pepper as well as half of the pul biber and ground cumin. Stir well.',
      'Drop a lavash bread on top of the meat to warm it up and get some of the fats to coat one side of it. Do the same with two other lavash breads. Fill each lavash (clean side down) with the meat and salad items to taste. Serve immediately, or keep warm in a 70 C (160 F) oven while you prepare the remaining tantuni.',
      'Repeat steps 3 and 4 for the remaining three tantunis, or you could do them simultaneously in two separate pans.'
    ],
  ),
//STREET FOODS

//MEZE AND SALADS
  Meal(
    id: 'm6',
    categories: [
      'c6',
    ],
    title: 'Acılı Ezme – Spicy Antep Ezmesi',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.yemek.com/mnresize/1250/833/uploads/2015/02/acili-ezme-one-cikan.jpg',
    duration: 45,
    ingredients: [
      '3 large ripe beef tomatoes',
      '5 fresh chillies',
      '1 large red capsicum pepper seeds removed',
      '1 small green capsicum pepper seeds removed',
      '1 medium cucumber quartered lengthwise & centre removed',
      '1 large onion peeled',
      '½ bunch parsley',
      '2 tablespoons olive oil',
      '1 tablespoon vinegar',
      '1 tablespoon tomato puree',
      '1 teaspoon dried mint',
      'salt & pepper for seasoning',
    ],
    steps: [
      'Place a pan of water on the hob and bring to the boil.',
      'Plunge your tomatoes into the water for just under 1 minute and then remove them and place in cold water.',
      'Now remove the skin from the tomatoes – it should peel away easily because of the boiling water.',
      'Cut your tomatoes in half, scoop out the seeds with a teaspoon and discard the seeds.',
      'Chop your tomatoes as finely as you can without them turning to pulp and add them to a large bowl.',
      'Now chop the onion, pepper, chillies and cucumber as finely as you can and add those to the tomatoes.',
      'Remove the stalks from your parsley and finely chop this before adding that to your other ingredients.',
      'Now add the mint, oil, vinegar, tomato puree and salt.',
      'Give everything a good mix and do a taste test.',
      'Add more chillies if necessary (Antep ezmesi is supposed to be spicy) and, if it seems too loose, add more salça (tomato puree), too.',
      'Place in the fridge for at least one hour before serving.',
    ],
  ),
//MEZE AND SALADS

//DESSERTS
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Turkish Baklava (Fistikli Baklava)',
    affordability: Affordability.Pricey,
    complexity: Complexity.Hard,
    imageUrl:
        'https://hacibabaonline.com/uploads/thumb_fistiklibaklava-17049831610019695.jpg',
    duration: 90,
    ingredients: [
      ' 3 cups sugar',
      '1 ⅔ cups water',
      'Juice of ½ lemon',
      '1 pound Phyllo defrosted overnight in the refrigerator',
      '3 cups shelled pistachios finely chopped',
      '1 ½ cups clarified butter',
      '⅓ cup shelled pistachios finely chopped',
    ],
    steps: [
      'In a medium pot, combine the sugar and water over medium-high heat.  Bring to a boil, then reduce the heat to medium-low and simmer for 20-25 minutes, until slightly thickened and golden in color. Stir in lemon juice, then cool completely in the fridge until ready to use.',
      'Make the clarified butter (see explanation in post for more information on how to do this) and finely chop the pistachios.  Heat oven to 350 degrees F and brush a 9x13-inch baking dish clarified butter. ',
      'Trim the phyllo dough to fit the baking dish, if needed, and cover with a damp kitchen towel to keep it from drying out while assembling the baklava.  Carefully separate 1 sheet of phyllo from the stack and lay it on the bottom of the baking dish.  Brush the phyllo sheet lightly with clarified butter. ',
      'Continue to layer 8-9 more phyllo sheets on top, brushing each sheet with butter until 10 sheets of phyllo have been stacked in the bottom of the baking dish.  Sprinkle ½ of the chopped pistachios over the phyllo base in an even layer.',
      'Repeat the process to create another 8-10 sheet layer of phyllo and butter, followed by the remaining ½ of the nuts, and another top layer made up of the remaining phyllo sheets and butter.  Slice into 36 pieces with a sharp knife, making sure to always cut through all layers of phyllo.',
      'Bake for 60 minutes, until the top is golden brown, and the bottom phyllo layers are baked through.  Use a knife to lift up a corner of one of the rectangles to see if the bottom layers are done.  Check the baklava after 40 minutes and cover with a piece of foil over the top if the baklava is getting too browned.',
      'When the baklava is done, remove from oven and slowly pour the cold syrup over the hot baklava.  The syrup will likely bubble up and some may even overflow. Sprinkle the top of each piece of baklava with the remaining finely chopped pistachios.',
      'Let the baklava cool completely before serving at room temperature.',
    ],
  ),
//DESSERTS
//BEVERAGES
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Ayran – Turkish Yoghurt Drink',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://i.pinimg.com/474x/a9/ee/61/a9ee61f719c09f37458ff9c2672eabf6--visit-turkey-turkish-yogurt.jpg',
    duration: 90,
    ingredients: [
      '400 g natural yoghurt',
      '2cups cold water still or soda',
      '1 pinch sea salt',
    ],
    steps: [
      'Place natural yoghurt, cold water and sea salt in a blender along with any of your chosen optional ingredients: ice cubes, mint, cucumber and black pepper.',
      '400 g natural yoghurt,2 cups cold water,1 pinch sea salt,handful ice cubes,mint,cucumber,pinch black pepper',
      'Mix until ingredients are combined and drink is frothy. This should be around 10-20 seconds. Serve chilled.',
    ],
  ),
//BEVERAGES

//KEBABS
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Adana Kebab',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Hard,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Adana_kebab.jpg/800px-Adana_kebab.jpg',
    duration: 150,
    ingredients: [
      '1 lb. 6 oz. fatty ground lamb',
      '½ medium white onion, coarsely grated (¾ cup)',
      '1 Tbsp. finely chopped Italian parsley',
      '2 tsp. Aleppo pepper',
      '1½ tsp. ground cumin',
      '1½ tsp. kosher salt',
      '3 large garlic cloves, grated (1 tsp.)',
      '1 tsp. ground sumac',
      '1 tsp. Turkish hot red pepper paste (biber salcasi) (optional)',
      '½ tsp. freshly ground black pepper',
      'Pinch of ground cinnamon',
      'Vegetable oil, for grilling',
      '2 large tomatoes on the vine, quartered',
      'Flatbreads, such as pita, for serving',
      'Labneh or thick plain yogurt, for serving',
    ],
    steps: [
      'In a large bowl, add the lamb, onion, parsley, Aleppo pepper, cumin, salt, garlic, sumac, pepper paste (if using), black pepper, and cinnamon. Use your hands to rigorously mix the kebab mixture until completely combined. Divide the meat into 8 equal portions. Mold each around a 10-inch skewer, forming 8-inch-long slightly flattened sausage shapes.',
      'Transfer the kebabs to a large platter or baking sheet, and refrigerate for at least 2 hours or up to overnight.',
      'Heat a grill or grill pan over high heat, and brush the grates or pan lightly with oil. Meanwhile, carefully thread the tomato wedges onto 2 separate skewers and set aside.',
      'When the grill is hot, add the kebabs and cook, rotating them carefully every few minutes, until evenly browned and slightly charred in places, 6–8 minutes. Transfer to a clean platter, and let rest a few minutes. Meanwhile, add the skewered tomatoes and flatbreads to the grill and cook, turning occasionally, until the breads are warmed, and the tomatoes are softened and lightly charred on all sides, about 5 minutes. Transfer to the kebab platter, and serve warm with the labneh on the side.',
    ],
  ),
//KEBABS
];
