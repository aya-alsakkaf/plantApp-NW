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
        imageUrl: 'assets/tree1.jpg',
        isRecommended: true),
    Plant(name: 'Spider Plant', price: 22, imageUrl: 'assets/tree2.jpg'),
    Plant(name: 'Orchid', price: 11, imageUrl: 'assets/orchid.webp'),
    Plant(
        name: 'Peace Lily',
        price: 24,
        imageUrl: 'assets/peaceLily.webp',
        isRecommended: true),
    Plant(
        name: 'Asparagus Fern',
        price: 13,
        imageUrl: 'assets/tree3.jpeg',
        isRecommended: true),
    Plant(
        name: 'English Ivy',
        price: 43,
        imageUrl: 'assets/tree4.jpg',
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
                enabledBorder: OutlineInputBorder(
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
                child: Image.asset(
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
                    '$price KWD',
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
