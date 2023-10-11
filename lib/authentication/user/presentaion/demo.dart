import 'package:flutter/material.dart';

class MyScrollableContent extends StatelessWidget {
  const MyScrollableContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 200.0,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Content that is taller than the screen',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 200.0,
            color: Colors.green,
            child: const Center(
              child: Text(
                'More content',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 200.0,
            color: Colors.orange,
            child: const Center(
              child: Text(
                'Even more content',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
