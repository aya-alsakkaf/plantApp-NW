import 'package:flutter/material.dart';
import 'package:loginplant/ShoppingCart.dart';
import 'package:loginplant/signup.dart';
import 'PlantDetailPage1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Plant> plants = const [
    Plant(
        name: 'Money Tree',
        price: 30,
        imageUrl:
            'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1658931779-51RJ3e6NEdL._SL500_.jpg?crop=1.00xw:0.752xh;0,0.248xh&resize=980:*',
        isRecommended: true),
    Plant(
        name: 'Spider Plant',
        price: 22,
        imageUrl:
            'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1629245918-51w2is3YV4L._SL500_.jpg?crop=1xw:1.00xh;center,top&resize=980:*'),
    Plant(
        name: 'Orchid',
        price: 11,
        imageUrl:
            'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1679004880-orchid-plant-64139492ee2f5.jpg?crop=0.7144444444444444xw:1xh;center,top&resize=980:*'),
    Plant(
        name: 'Peace Lily',
        price: 24,
        imageUrl:
            'data:image/jpeg;base64,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',
        isRecommended: true),
    Plant(
        name: 'Asparagus Fern',
        price: 13,
        imageUrl:
            'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1554477330-beautiful-asparagus-fern-plant-in-a-basket-royalty-free-image-972247932-1546889240.jpg?crop=0.457xw:0.301xh;0.447xw,0.372xh&resize=980:*',
        isRecommended: true),
    Plant(
        name: 'English Ivy',
        price: 43,
        imageUrl:
            'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1660073579-512UawMs32L._SL500_.jpg?crop=1xw:1.00xh;center,top&resize=980:*',
        isRecommended: true),
  ];

  @override
  Widget build(BuildContext context) {
    const sageGreen = Color(0xFF9CAD92);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: sageGreen,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShoppingCart()));
            },
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search plants',
                prefixIcon: const Icon(Icons.search, color: sageGreen),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green[900]!),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              cursorColor: Colors.green[900],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
              ),
              itemCount: plants.length,
              itemBuilder: (context, index) {
                return PlantCard(
                  name: plants[index].name,
                  price: plants[index].price,
                  imageUrl: plants[index].imageUrl,
                  isRecommended: plants[index].isRecommended,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  final String name;
  final int price;
  final String imageUrl;
  final bool isRecommended;

  const PlantCard({
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl,
    this.isRecommended = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isRecommended ? Color.fromARGB(255, 255, 255, 255) : Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PlantDetails()));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Expanded(
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    '\$$price',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    // Add to cart
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShoppingCart()));
                  },
                  icon: Icon(Icons.trolley, color: Colors.white),
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xFF9CAD92),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Plant {
  final String name;
  final int price;
  final String imageUrl;
  final bool isRecommended;

  const Plant({
    required this.name,
    required this.price,
    required this.imageUrl,
    this.isRecommended = false,
  });
}
