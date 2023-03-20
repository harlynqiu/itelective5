// ignore: file_names
import 'package:flutter/material.dart';

void main() {
  runApp(const CustomLogin());
}

class CustomLogin extends StatelessWidget {
  const CustomLogin({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CustomScreen(),
    );
  }
}

class CustomScreen extends StatelessWidget {
  const CustomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (
        Container(
          width: MediaQuery.of(context).size.width, 
          color: Colors.grey, // this is the color of the background not the card itself
          child:(
            Column(
              mainAxisAlignment: MainAxisAlignment.center, // this makes the card be in the center
              children: [
                Container(),
              ],
            )

          ),
        )
        
      ),
        
    );
  }
}