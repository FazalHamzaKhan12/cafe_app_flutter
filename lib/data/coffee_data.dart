import '../models/coffee_model.dart';

List<Coffee> coffeeList = [
  Coffee(
    name: 'Caffe Mocha',
    image:
        'https://www.shutterstock.com/image-photo/top-view-mocha-hot-coffee-260nw-628302803.jpg',
    price: 4.53,
    rating: 4.8,
    type: "Ice/Hot",
    subtitle: 'Deep Foam',
    description:
        'A smooth blend of espresso and steamed milk, creating a rich creamy experience with subtle roasted flavors',
    sizes: ['S', 'M', 'L'],
    ingredients: ['Espresso', 'Milk', 'Chocolate'],
    category: 'Mocha',
  ),
  Coffee(
    name: 'Flat White',
    image:
        'https://media.istockphoto.com/id/1365835656/photo/a-cup-of-coffee-latte-on-a-wooden-table.jpg?s=612x612&w=0&k=20&c=y60TRhN8qdG2I2XMs5S2ECrBHDKw2uCn_dgJ_ZWxfwg=',
    price: 3.53,
    rating: 4.8,
    type: "Ice/Hot",
    subtitle: 'Espresso',
    description:
        'Espresso with a small amount of milk foam, offering a bold yet balanced taste loved by coffee purists.',
    sizes: ['S', 'M', 'L'],
    ingredients: ['Espresso', 'Microfoam'],
    category: 'Latte',
  ),
  Coffee(
    name: 'Caramel Macchiato',
    image:
        'https://www.shutterstock.com/image-photo/top-view-hot-coffee-latte-600nw-699497503.jpg',
    price: 4.25,
    rating: 4.7,
    type: "Ice/Hot",
    subtitle: 'Caramel Drizzle',
    description:
        'A rich espresso diluted with hot water, delivering a smoother, lighter cup that retains strong flavor depth.',
    sizes: ['S', 'M', 'L'],
    ingredients: ['Espresso', 'Milk', 'Vanilla Syrup', 'Caramel'],
    category: 'Macchiato',
  ),
  Coffee(
    name: 'Cappuccino',
    image: 'https://cafefabrique.com/cdn/shop/articles/Cappuccino.jpg',
    price: 3.75,
    rating: 4.6,
    type: "Ice/Hot",
    subtitle: 'Frothy Top',
    description:
        'Equal parts espresso, steamed milk, and foam, producing a frothy delight with a harmonious bitter-sweet blend.',
    sizes: ['S', 'M', 'L'],
    ingredients: ['Espresso', 'Steamed Milk', 'Foamed Milk'],
    category: 'Classic',
  ),
];
