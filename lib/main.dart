
import 'package:first_app/view/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';

main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
     theme: ThemeData(primarySwatch: Colors.red),
     darkTheme: ThemeData(primarySwatch: Colors.red),
     color: Colors.red,
     debugShowCheckedModeBanner: false,
     home:  const SplashScreen(),
   );
  }
}