import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStackWidget extends StatelessWidget {
  const MyStackWidget({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widget"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Stack(

          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.blueAccent,
            ),
            Positioned(
              left: 10,
              top: 10,
              bottom: 10,
              right: 10,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}