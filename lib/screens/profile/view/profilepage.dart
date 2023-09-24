import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360),
                          color: Colors.black54,
                        
                        ),
                        child: Image.asset('assets/images/profille.jpeg',fit: BoxFit.cover,),
                              ),
                      ),
                            SizedBox(height: 5,),
              Text('Ananthu Vs',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              Text('7306413956',style: TextStyle(fontWeight: FontWeight.w500),),
                    ],
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