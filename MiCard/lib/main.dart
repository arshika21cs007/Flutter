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
      debugShowCheckedModeBanner: false,
      title: 'MiCard',
      home:Scaffold(
        backgroundColor:Colors.teal,
        body:SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              CircleAvatar(
                radius: 50.0,
                backgroundImage:AssetImage('images/arshika.jpg'),
              ),
              Text(
                'Arshika Gunasekaran',
                 style:TextStyle(
                  fontFamily:'Pacifico',
                 fontSize: 40.0,
                 color: Colors.white,
                 fontWeight:FontWeight.bold,
              )
              ),
              Text(
                  'Software Developer',
                  style:TextStyle(
                    fontFamily:'Source Sans Pro',
                    fontSize: 20.0,
                    color: Colors.teal[100],//Colors.teal.shade100
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  )
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                color: Colors.teal.shade100,
                ),
              ),

              Card(

                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child:ListTile(
                  leading: Icon(
                    Icons.phone,
                    color:Colors.teal.shade900,
                  ),
                  title: Text(
                    '+91 6382648105',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                      color: Colors.teal.shade900,

                    ),
                  ),
                )
              ),
              Card(

                margin: EdgeInsets.symmetric(vertical:10.0,horizontal: 25.0 ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color:Colors.teal.shade900,
                    ),
                    title: Text(
                      'arshikagunasekaran@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        color: Colors.teal.shade900,

                      ),
                    ),
                  )
              )
              )],
        )

      )
    ));
    } }


