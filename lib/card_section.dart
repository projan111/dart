
import 'package:flutter/material.dart';
import 'package:practice_projects/ui_helper/utils.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Section", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(
                      elevation: 10,
                      shadowColor: Colors.blue,
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            SizedBox(
                                height: 100,
                                width: 200,
                                child: Image.asset("assets/images/Plant.png")
                            ),
                            const Center(
                              child: Text("I'm a plant!", style: TextStyle(
                                  color: Colors.white, fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                const SizedBox(height: 8,),
                Card(
                    elevation: 10,
                    shadowColor: Colors.blue,
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SizedBox(
                              height: 100,
                              width: 200,
                              child: Image.asset("assets/images/Plant.png")
                          ),
                          const Center(
                            child: Text("I'm a plant!", style: TextStyle(
                                color: Colors.white, fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),
                            ),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(height: 8,),
                Card(
                    elevation: 10,
                    shadowColor: Colors.blue,
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SizedBox(
                              height: 100,
                              width: 200,
                              child: Image.asset("assets/images/Plant.png")
                          ),
                          const Center(
                            child: Text("I'm a plant!", style: TextStyle(
                                color: Colors.white, fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),
                            ),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(height: 8,),
                Card(
                    elevation: 10,
                    shadowColor: Colors.blue,
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SizedBox(
                              height: 100,
                              width: 200,
                              child: Image.asset("assets/images/Plant.png")
                          ),
                          const Center(
                            child: Text("I'm a plant!", style: TextStyle(
                                color: Colors.white, fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),

      ),
    );
}
}