import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circle Slider", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.orange,
      ),
      body: const SizedBox(
        child: Column(
          children: [
             CatItems(),
             CatSlider(),
          ],
        ),
      ),
    );
  }
}

class CatItems extends StatelessWidget {
  const CatItems({super.key});

  @override
  Widget build(BuildContext context){
    return  Expanded(
        flex: 2,
        child: Container(
          color: Colors.blueGrey,
          child: ListView.builder(itemBuilder: (context, index) =>
          const Padding(padding: EdgeInsets.all(11),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.black38,
              ),
            ),
          ), itemCount: 10,
            scrollDirection: Axis.horizontal,
          ),
        ),

      );

  }
}

class CatSlider extends StatelessWidget{
  const CatSlider({super.key});

  @override
  Widget build(BuildContext context){
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.green,
        child: ListView.builder(itemBuilder: (context, index) =>
        const Padding(padding: EdgeInsets.all(11),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.black38,
            ),
          ),
        ), itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),

    );
  }
}