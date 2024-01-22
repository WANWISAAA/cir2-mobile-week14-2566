import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  const CardDemo({super.key}); //1.constuctor
  //2.Build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Card Viwe'),
      ),
      body: Center(
        child: Card(
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint("CARD-1");
            },
            child: const SizedBox(
              width: 300,
              height: 100,
              child: Column(
                children: [
                  Icon(Icons.home),
                  Text("CARD-1")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
