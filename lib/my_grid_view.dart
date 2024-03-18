import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context){

    var arrColor = [
      Colors.red,
      Colors.amber,
      Colors.orange,
      Colors.yellow,
      Colors.lime,
      Colors.greenAccent,
      Colors.green
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
        backgroundColor: Colors.orange,
      ),
      body: GridView.builder(itemBuilder: (context, index){
        return Container(
          color: arrColor[index],
        );
      }, itemCount: arrColor.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6
          ),
      ),
    );
  }
}