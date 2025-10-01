import 'package:flutter/material.dart';

class FabWidget extends StatelessWidget {
  const FabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          floatingActionButton: Builder(
            builder: (context) => FloatingActionButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('You pressed the button!')),
              );
            },
            child: const Icon(Icons.thumb_up),
            backgroundColor: Colors.pink,
          ),
        ),
      ),
    );
  }
}