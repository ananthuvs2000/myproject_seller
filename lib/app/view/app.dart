import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprojectseller/l10n/l10n.dart';
import 'package:myprojectseller/login/view/loginpage.dart';
import 'package:myprojectseller/screens/splashscreen/splashscreen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'food ON table',
      theme: ThemeData(brightness: Brightness.light,
                        fontFamily: 'Poppins'      
        // appBarTheme: const AppBarTheme(color:Colors.black),
        // colorScheme: ColorScheme.fromSwatch(
        //   accentColor: Colors.black,
        // ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home:const SplashScreen(),
    );
  }
}
