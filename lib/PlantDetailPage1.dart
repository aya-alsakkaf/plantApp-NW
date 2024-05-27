import 'package:flutter/material.dart';
import 'package:loginplant/ShoppingCart.dart';

class PlantDetails extends StatelessWidget {
  const PlantDetails({super.key});

  @override
  Widget build(BuildContext context) {
    const sageGreen = Color(0xFF9CAD92);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: sageGreen,
        title: const Text(
          'Tropical Plants',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 30),
          Image.asset(
            'assets/tree1.jpg',
            width: 300,
            height: 400,
            fit: BoxFit.contain,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            margin: EdgeInsets.only(top: 20),
            child: Center(
              child: Text(
                'Money Tree',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'How easy it is to take care of? ',
                  style: TextStyle(
                    // fontWeight: FontWeigh,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '8/10',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "About the Tree:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16,
                ),
              )),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            margin: EdgeInsets.only(top: 5, bottom: 20),
            child: Text(
              "Money Trees (Pachira aquatica) are popular for bringing good luck. Place them in bright, indirect light and keep them in a warm spot between 65-75°F. Water when the top inch of soil is dry, about every 1-2 weeks, ensuring good drainage. Increase humidity by misting leaves or using a humidifier. Use well-draining soil and repot every 2-3 years. Feed monthly in spring and summer with balanced fertilizer. Trim yellow or damaged leaves and wipe them to remove dust. If leaves turn yellow, let the soil dry out before watering again.  ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: sageGreen,
                foregroundColor: Colors.white,
                minimumSize: Size(50, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShoppingCart()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart),
                  SizedBox(width: 10),
                  Text(
                    'Add to Cart',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
