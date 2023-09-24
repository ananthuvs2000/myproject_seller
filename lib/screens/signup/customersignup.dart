import 'package:flutter/material.dart';
import 'package:myprojectseller/login/login.dart';

class CustomerSignup extends StatelessWidget {
  const CustomerSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/signup.jpeg')),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 200,left: 30,right: 30),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Enter your name',
                          fillColor:Colors.white70,
                          filled: true,

                        ),
                      ),
                      SizedBox(height: 20,),
                       TextFormField(
                        decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          prefixIcon: Icon(Icons.call),
                          hintText: 'Enter your phone number',
                          fillColor:Colors.white70,
                          filled: true,

                        ),
                      ),
                      SizedBox(height: 20,),
                       TextFormField(
                        decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          prefixIcon: Icon(Icons.mail_outline_outlined),
                          hintText: 'Enter your email',
                          fillColor:Colors.white70,
                          filled: true,

                        ),
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          prefixIcon: Icon(Icons.lock_outline_rounded),
                          hintText: 'Enter your password',
                          fillColor:Colors.white70,
                          filled: true,

                        ),
                      ),
                      SizedBox(height: 30,),
                      ElevatedButton
                      (
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade600),
                        textStyle:MaterialStateProperty.all<TextStyle>(
                TextStyle(fontSize: 20,),
              ), shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
                        ),
                        onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPg(),));
                      }, child: Text("SIGN IN")),
                      
                    ],
                    
                  ),
                  
                ),
                
              )
              
              ),
          ],
        ),

      ),
    );
  }
}