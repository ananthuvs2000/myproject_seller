import 'package:flutter/material.dart';
import 'package:myprojectseller/login/login.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen(){
    Future.delayed(const Duration(seconds: 1),() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPg(),));
    },);
  }
  @override
  void initState() {
  
    // TODO: implement initState
    super.initState();
      changeScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Image.asset('assets/images/signup.jpeg',fit: BoxFit.cover,),
      ),
    );
  }
}