
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Home!", style: TextStyle(color: Colors.white),),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade50,
        child: Center(

          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              border: Border.all(
                width: 2,
                color: Colors.white,
              ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 2,
                    color: Colors.blue,
                  )
                ],
              shape: BoxShape.circle,
            ),
            // child:Container(

            //     child: Image.asset("assets/images/shivratrilogolab.jpg"),
            //
            // ),
          ),
        ),
      )
    );
  }
}
