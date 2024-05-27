import 'package:flutter/material.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});
  @override
  Widget build(BuildContext context) {
    const sageGreen = Color(0xFF9CAD92);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sageGreen,
        title: const Text(
          'English Ivy',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(height: 30),
          Image.network(
            ' https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1660073579-512UawMs32L._SL500_.jpg?crop=1xw:1.00xh;center,top&resize=980:* ',
            height: 400,
            fit: BoxFit.contain,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(30),
            child: Text(
              'Rating: 9/10',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 21,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              " English ivy, a non-regulated Class C noxious weed, is a woody, evergreen, perennial vine often found in King County's urban and suburban forests.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
