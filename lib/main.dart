
import 'package:flutter/material.dart';
import 'package:practice_projects/users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rojan App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, fontFamily: "MainFont")
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const User(),
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

    var arrName = ["Loki", "Haris", "Yogi", "Dashain", "Kiran", "Subin"];

    return Scaffold(
        appBar: AppBar(
          title: const Text("User List", style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.orange,
        ),
        body: ListView.separated(itemBuilder: (context, index){
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/user.png"),
              backgroundColor: Colors.blue,
              child: Text("text"), // we can place texts inside the avatar as well
            ),
            title: Text(arrName[index]),
            subtitle: const Text('Number'),
            trailing: const Icon(Icons.add),
          );
        },
          itemCount: arrName.length,
          separatorBuilder: (context, index){
            return const Divider(height: 20, thickness: 0.8,);
          },
        )

    );
  }
}
