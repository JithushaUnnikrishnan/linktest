import 'package:flutter/material.dart';


class tt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Circle with Images and Text'),
        ),
        body: Center(
          child: CircleWithText(),
        ),
      ),
    );
  }
}

class CircleWithText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            // Main Circle
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueGrey,
              ),
              child: Stack(
                children: [
                  // Four Smaller Circles
                  Positioned(
                    left: 0,
                    top: 0,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/image1.png'), // Replace with your image path
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/image2.png'), // Replace with your image path
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/image3.png'), // Replace with your image path
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/image4.png'), // Replace with your image path
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(
          'Your Text Here',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
