import 'package:flutter/material.dart';
import 'package:practice_projects/ui_helper/utils.dart';

class MyNewPage extends StatelessWidget {
  const MyNewPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Home"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Hello World!", style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.orange),
            ),
            Text("Nameste", style: myTextStyle11(textColor: Colors.green),)
          ],
        ),
      ),
    );
  }
}
