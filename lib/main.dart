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
      body: (
        Container(
          width: MediaQuery.of(context).size.width, 
          color: Colors.grey, // this is the color of the background not the card itself
          child:(
            Column(
              mainAxisAlignment: MainAxisAlignment.center, // this makes the card be in the center
              children: [
                Container(
                 // padding: const EdgeInsets.symmetric(horizontal:80),
                  width: 700, //width of the card
                  height: 480, // height of the card! 
                  child: (
                    Card  (
                      elevation: 50,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0), // card borders    
                      ),
                      color: Colors.white,
                      child: (
                         Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Row(
                                children:  [
                                  const SizedBox(height:20),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal:40,vertical: 40),
                                    
                                    child: const CircleAvatar (
                                      radius: 55,
                                      backgroundColor: Colors.white,
                                      foregroundImage: AssetImage(
                                      "assets/mypic.png",
                                      ),
                                    ),
                                  ),
                                  Column(
                                    
                                    children: const [
                                      Text("Posts", 
                                          style: TextStyle(fontSize:20,color: Color.fromARGB(255, 23, 47, 125)),
                                        ),
                                      SizedBox(height:10),
                                      Text("23", 
                                        style: TextStyle(fontSize:20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 23, 47, 125)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 100,),
                                  Column(
                                    children: const [
                                      Text("Followers", 
                                          style: TextStyle(fontSize:20,color: Color.fromARGB(255, 23, 47, 125)),
                                        ),
                                      SizedBox(height:10),
                                      Text("326", 
                                        style: TextStyle(fontSize:20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 23, 47, 125)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 90,),
                                  Column(
                                    children: const [
                                      Text("Following", 
                                          style: TextStyle(fontSize:20, color: Color.fromARGB(255, 23, 47, 125)),
                                        ),
                                      SizedBox(height:10),
                                      Text("120", 
                                        style: TextStyle(fontSize:20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 23, 47, 125)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children:  [
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal:40,vertical: 5),
                                    child: const Text("Harlyn Nichole Qiu",
                                    style:TextStyle(fontSize:20, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 23, 47, 125))),
                                  ),  
                                ],
                              ),
                              Row(
                                children:  [
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal:40,vertical: 5),
                                    child:
                                      const Text("UI/ UX Designer",
                                      style:TextStyle(fontSize:18, color: Color.fromARGB(255, 23, 47, 125))),
                                  ),
                                ],
                              ),  
                              const SizedBox(height:20),
                              Row(
                                children:  [
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal:40,vertical: 5),
                                    child:
                                      const Text("About",
                                      style:TextStyle(fontSize:20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 23, 47, 125))),
                                  ),
                                ],
                              ),
                              Row(
                                children:  [
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal:40,vertical: 5),
                                    child:
                                      const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare\npretium placerat ut platea. Purus blandit integer sagittis massa\nvel est hac.",
                                      textAlign: TextAlign.justify,
                                      maxLines: 3,
                                      style:TextStyle(fontSize:20, height:1.5, color: Color.fromARGB(255, 23, 47, 125))),
                                  ),
                                ],
                              ),

                            ],
                          )
                        ),
                      )
                    ),
                  ),
              ],        
            )
          ), 
        ) 
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

/*Container(
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
  */