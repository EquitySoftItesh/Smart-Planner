import 'package:get/get.dart';
import 'package:smartplanner/src/modules/vendor/vendor_mdl.dart';

class VendorController extends GetxController {
  final searchQuery = ''.obs;
  final _vendor = [
    Vendor(
      title: 'Gift Marketplace',
      image: 'assets/vendorcard1.png',
      distance: '2',
      categoryName: 'Restaurants',
      address:
          'Akshya Nagar 1st Block 1st Cross, Rammurthy nagar, Bangalore-560016',
      products: [
        Product(
            name: 'SKYTRENDS Valentine Day Gift',
            price: 10.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Skylofts Beautiful Horse Chocolate',
            price: 3.99,
            image: 'assets/product2.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Tied Ribbons gift pack',
            price: 1.99,
            image: 'assets/product3.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
      ],
    ),
    Vendor(
      title: 'Fabulous Finds',
      image: 'assets/vendorcard2.png',
      distance: '1',
      categoryName: 'Coffee Shops',
      address: '456 Oak St',
      products: [
        Product(
            name: 'Latte',
            price: 4.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Muffin',
            price: 2.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Sandwich',
            price: 6.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
      ],
    ),
    Vendor(
      title: 'The Vintage Thread',
      image: 'assets/vendorcard3.png',
      distance: '3',
      categoryName: 'Grocery Stores',
      address: '789 Elm St',
      products: [
        Product(
            name: 'Milk',
            price: 2.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Eggs',
            price: 1.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Bread',
            price: 3.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
      ],
    ),
    Vendor(
      title: 'Purple Haze',
      image: 'assets/vendorcard4.png',
      distance: '9',
      categoryName: 'Clothing Stores',
      address: '567 Maple St',
      products: [
        Product(
            name: 'Shirt',
            price: 19.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Pants',
            price: 29.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Shoes',
            price: 39.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
      ],
    ),
    Vendor(
      title: 'Go Get Gifts',
      image: 'assets/vendorcard5.png',
      distance: '5',
      categoryName: 'Clothing Stores',
      address: '567 Maple St',
      products: [
        Product(
            name: 'Shirt',
            price: 19.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Pants',
            price: 29.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Shoes',
            price: 39.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
      ],
    ),
    Vendor(
      title: 'Fancy Shop',
      image: 'assets/vendorcard6.png',
      distance: '6',
      categoryName: 'Clothing Stores',
      address: '567 Maple St',
      products: [
        Product(
            name: 'Shirt',
            price: 19.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Pants',
            price: 29.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Shoes',
            price: 39.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
      ],
    ),
    Vendor(
      title: 'Fancy Shop',
      image: 'assets/vendorcard6.png',
      distance: '6',
      categoryName: 'Clothing Stores',
      address: '567 Maple St',
      products: [
        Product(
            name: 'Shirt',
            price: 19.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Pants',
            price: 29.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Shoes',
            price: 39.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
      ],
    ),
    Vendor(
      title: 'Fancy Shop',
      image: 'assets/vendorcard6.png',
      distance: '6',
      categoryName: 'Clothing Stores',
      address: '567 Maple St',
      products: [
        Product(
            name: 'Shirt',
            price: 19.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Pants',
            price: 29.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Shoes',
            price: 39.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
      ],
    ),
    Vendor(
      title: 'Fancy Shop',
      image: 'assets/vendorcard6.png',
      distance: '6',
      categoryName: 'Clothing Stores',
      address: '567 Maple St',
      products: [
        Product(
            name: 'Shirt',
            price: 19.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Pants',
            price: 29.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Shoes',
            price: 39.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
      ],
    ),
    Vendor(
      title: 'Fancy Shop',
      image: 'assets/vendorcard6.png',
      distance: '6',
      categoryName: 'Clothing Stores',
      address: '567 Maple St',
      products: [
        Product(
            name: 'Shirt',
            price: 19.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Pants',
            price: 29.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
        Product(
            name: 'Shoes',
            price: 39.99,
            image: 'assets/product1.png',
            description: [
              "Specification 1 - small cute teddyHeart Box, 1Keychain, 1 Love Message Bottle, 4 Chocolate Box 1 ,1 Couple Chocolate Ch.",
              "It can be an excellent gift option..",
              "It comes with secure packaging..",
              "The valentine day love gift combo is a product of registered brand SKYTRENDS.",
              "Valentine day Combo is a Great Gift for Expressing love to your valentine"
            ],
            imagecarousel: [
              'assets/product1.png',
              'assets/product2.png',
              'assets/product3.png'
            ]),
      ],
    ),
  ].obs;

  List<Vendor> get vendor => _vendor.toList();

  void setSearchQuery(String value) {
    searchQuery.value = value;
  }

  List<Vendor> get filteredVendor {
    if (searchQuery.value.isEmpty) {
      return vendor;
    } else {
      return vendor
          .where((v) =>
              v.title.toLowerCase().contains(searchQuery.value.toLowerCase()))
          .toList();
    }
  }
}
