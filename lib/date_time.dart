import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePage extends StatefulWidget {
  const DateTimePage({super.key});

  @override
  _DateTimePageState createState() => _DateTimePageState();
}

class _DateTimePageState extends State<DateTimePage> {


  void _pickDate() {
    // Your logic to pick a date
    setState(() {
      // Update the state within setState()
       // For example, setting it to the current date/time
    });
  }

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
                Text('Current Time is: ${
                    DateFormat('Hms').format(time)}',
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                ElevatedButton(onPressed: () {
                  _pickDate();
                }, child:
                const Text('Current time'),
                ),
                OutlinedButton(onPressed: () async{
                  DateTime? datePicker = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2019),
                      lastDate: DateTime(2024)
                  );
                  if(datePicker != null){
                    if (kDebugMode) {
                      print(DateFormat('yyyy-MM-dd').format(datePicker));
                    }
                  }
                  }, child:
                    const Text('Show Date'),
                ),
              ],
            ),
          )
      ),
    );
  }
}