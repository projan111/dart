
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

    var arrName = ["Loki", "Haris", "Yogi", "Dashain", "Kiran", "Subin"];

    return Scaffold(
        appBar: AppBar(
          title: const Text("Welcome Home!", style: TextStyle(color: Colors.white),),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: ListView.separated(itemBuilder: (context, index){
          return ListTile(
            leading: Text('$index', style: const TextStyle(fontSize: 16),),
            title: Text(arrName[index]),
            subtitle: const Text('Number'),
            trailing: const Icon(Icons.add),
          );
        },
          itemCount: arrName.length,
          separatorBuilder: (context, index){
            return const Divider(height: 100, thickness: 1,);
          },
        )

    );
  }
}
