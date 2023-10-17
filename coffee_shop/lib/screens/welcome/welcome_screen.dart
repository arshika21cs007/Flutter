import 'package:coffee_shop/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black87 ,
      body: Column(
        children: [
         Expanded(child:Image.asset('assets/images/welcome.jpeg')) ,
          Padding(
              padding: EdgeInsets.all(20)),
              Column(
              children: [
                Text(
                  'Welcome back to our new coffee shop',
                   style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                     color: Colors.white,
                     height: 1.5
                   ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                    'We are here to serve you,we have different types of coffee for you in low price',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey,
                        height: 1.5
                    ),
                  textAlign: TextAlign.center,
                 ),
                ElevatedButton(
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder:(_)=>const HomeScreen()));

                },
                  child: const Text('Get Started'),
                )
              ]
          )
        ],
      ),
    );
  }
}
