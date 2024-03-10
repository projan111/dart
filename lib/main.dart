
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
        color: Colors.blue.shade50,
        height: double.infinity,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset("assets/images/shivratrilogolab.jpg"),
                  Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    color: Colors.white,
                    width: double.infinity,
                    child: const Column(
                      children: [
                        Text("Maha Shivaratri", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,),),
                        Text("Nepali's one of the great festival")
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: (){}, child: const Text("Explore",)),
                        ElevatedButton(onPressed: (){}, child: const Text("View Post",))
                      ],
                    ),
                  ),
                  Image.asset("assets/images/shivratrilogolab.jpg"),
                  Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    color: Colors.white,
                    width: double.infinity,
                    child: const Column(
                      children: [
                        Text("Maha Shivaratri", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,),),
                        Text("Nepali's one of the great festival")
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: (){}, child: const Text("Explore",)),
                        ElevatedButton(onPressed: (){}, child: const Text("View Post",))
                      ],
                    ),
                  ),
                ],

              )
          ),


      )
    );
  }
}
