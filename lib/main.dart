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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
       // color: Colors.red,
        child: Column(
          mainAxisSize: MainAxisSize.max, //refers to the height
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
            TheButton(theText: 'Login to Google',),
            const SizedBox(height:20),
            TheButton(theText: 'Login to Twitter',),
          ],
        ),
      ),  
    );


    
  }

}

class TheButton extends StatelessWidget {
  const TheButton({
    Key? key,
    required this.theText,
  }) : super(key: key);

  final String theText; 

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), 
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15.0)), 
      ),
      child: Text(theText, style: const TextStyle(fontSize: 20),),    
          
    );
  }
}

    