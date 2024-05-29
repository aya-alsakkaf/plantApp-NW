import 'package:flutter/material.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    const sageGreen = Color(0xFF9CAD92);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 237, 237),
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: sageGreen,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Card(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                tileColor: Colors.white,
                leading: Image.asset(
                  "assets/tree1.jpg",
                  width: 100,
                  height: 100,
                ),
                title: Text("Money Tree"),
                subtitle: Text("Price: 30 KWD"),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Card(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                tileColor: Colors.white,
                leading: Image.asset(
                  "assets/tree2.jpg",
                  width: 100,
                  height: 100,
                ),
                title: Text("Spider Plant"),
                subtitle: Text("Price: 20 KWD"),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Card(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                tileColor: Colors.white,
                leading: Image.asset(
                  "assets/orchid.webp",
                  width: 100,
                  height: 100,
                ),
                title: Text("Orchid Plant"),
                subtitle: Text("Price: 80 KWD"),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          SizedBox(height: 460),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              "Total Price: 130 KWD",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "CHECK OUT",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: sageGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
