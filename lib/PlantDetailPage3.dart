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
          'Orchid',
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
            'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1679004880-orchid-plant-64139492ee2f5.jpg?crop=0.7144444444444444xw:1xh;center,top&resize=980:*',
            width: 300,
            height: 400,
            fit: BoxFit.contain,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(30),
            child: Text(
              'Rating: 8/10',
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
              "The flower of the orchid plant is colorful, fragrant and can vary in sizes from microscopic plants (Platystele) to long vines (Vanilla) to gigantic plants (Grammatophullum). ",
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
