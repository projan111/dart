import 'package:flutter/material.dart';
import 'package:practice_projects/date_time.dart';

class MyInputField extends StatelessWidget {
  const MyInputField({super.key});


  @override
  Widget build(BuildContext context){

    final emailText = TextEditingController();
    final passwordText = TextEditingController();

    var toggleObscureText = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DateTimePage())
                );
                }, child: const Text(
                "Get Current Date & Time",
                style: TextStyle(
                    color: Colors.blue
                ),
              )
              ),
              TextField(
                controller: emailText,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 3,
                      )
                  ),
                  suffixText: "email",
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 3,
                    )
                  )
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: passwordText,
                obscuringCharacter: '*',
                obscureText: toggleObscureText,
                decoration: InputDecoration(
                  hintText: 'password',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 3,
                        ),
                    ),
                      suffixText: "password",
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.remove_red_eye, color: Colors.grey,),
                      onPressed: (){
                        toggleObscureText = false;
                      },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 3,
                        )
                    )
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    onPressed: (){
                    String uEmail = emailText.text.toString();
                    String uPassword = passwordText.text.toString();
                    
                    print("Email: $uEmail, Pass: $uPassword");

                  }, child: const Text("Login"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}