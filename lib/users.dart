import 'package:flutter/material.dart';
import 'package:practice_projects/call_back_func.dart';
import 'package:practice_projects/card_section.dart';
import 'package:practice_projects/input_page.dart';
import 'package:practice_projects/main.dart';
import 'package:practice_projects/my_grid_view.dart';
import 'package:practice_projects/new_page.dart';
import 'package:practice_projects/ui_helper/utils.dart';
import 'package:practice_projects/widgets/rounded_button.dart';

class User extends StatelessWidget{
  const User({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Page", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
        backgroundColor: Colors.deepOrange,
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Center(
                child: Text(
                  "Welcome To The Flutter Practice Realm!",
                  style: TextStyle(
                      fontSize: 16
                  ),
                )
            ),
          ),

          Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const MyHomePage(title: 'Home Page'),
                    ),
                );
              },
                child: const Text("User List"),
              ),

              ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyNewPage(),
                  ),
                );
              },
                  child: const Text("Go to new page"),
              ),
              OutlinedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CardSection())
                );
              }, child: const Text(
                "Card Section"
              )),
              OutlinedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyInputField())
                );
                }, child: const Text(
                  "Login"
              )),
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyGridView())
                );
                
                }, child: const Text('Grid View')),

              // Go to call back function
              OutlinedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                    const CallBackFunc()
                  )
                );
                }, child: const Text('Go to call back')),
              
              // Custom widget button
              Column(
                children: [
                  SizedBox(
                    width: 200,
                    height: 45,
                    child: RoundedButton(btnName: "Play",
                      icon: const Icon(Icons.play_arrow, color: Colors.white,),
                      callBack: (){
                      print("Custom Button");
                    },
                      textStyle: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 8,),
                  SizedBox(
                    width: 200,
                    height: 45,
                    child: RoundedButton(btnName: "Pause",
                      icon: const Icon(Icons.pause, color: Colors.white,),
                      bgColor: Colors.orange,
                      callBack: (){
                        print("Custom Button");
                      },
                      textStyle: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}