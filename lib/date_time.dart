import 'package:flutter/material.dart';

class DateTimePage extends StatelessWidget {
  const DateTimePage({super.key});

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Date & Time'),
      ),
      body: Center(
          child: SizedBox(
            width: 200,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Current Time is: ${time.hour}: ${time.minute}: ${time.second}',
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                ElevatedButton(onPressed: () {

                }, child:
                const Text('Current time'),
                ),
              ],
            ),
          )
      ),
    );
  }
}