import 'package:flutter/material.dart';
import 'package:practice_projects/circle_widget_slider.dart';

class CallBackFunc extends StatelessWidget {
  const CallBackFunc({super.key});

  @override
  Widget build(BuildContext context) {

    callBack(){
        print("Clicked!!!!");
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("I'm call back Func"),
        backgroundColor: Colors.black38,
      ),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: callBack,
                child: const Text('Call back'),
              ),
            ),
            Center(
              child: OutlinedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CircleWidget())
                );
              }, child: const Text("circle slider")),
            ),
          ],
        ),
      ),
    );
  }
}