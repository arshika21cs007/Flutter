import 'package:coffee_shop/screens/home/widgets/item_coffee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            padding: EdgeInsets.only(top: 50.0,left:15.0,right: 15.0 ),
            decoration:const BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(150)
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                        child:Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white
                          ),
                          child:TextField(
                            decoration: InputDecoration(
                              hintText: 'Search a Coffee...',
                            ),
                          ) ,
                        ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).colorScheme.primary
                      ),
                      child: Icon(CupertinoIcons.search,color: Colors.white),
                    )
                  ],
                ),
                const Spacer(),
                Text('search your',style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  letterSpacing: 1,
                  fontStyle: FontStyle.italic
                ),),

        Text('Favourite Coffee',style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: Colors.white,
                  letterSpacing: 1,
                  fontStyle: FontStyle.italic
              ),),
                const SizedBox(height: 30),
            ],
            ),

      ),
       Expanded(
           child:GridView.count(
             padding: const EdgeInsets.symmetric(horizontal:10,vertical: 15),
             crossAxisCount:2,
             childAspectRatio: 3/4,
             crossAxisSpacing: 10,
             mainAxisSpacing: 20,
             children: const [
               Itemcoffee(image:'item1.jpeg'),
               Itemcoffee(image:'item2.jpeg'),
               Itemcoffee(image:'item3.jpeg'),
               Itemcoffee(image:'item4.jpeg'),
               Itemcoffee(image:'item1.jpeg'),
               Itemcoffee(image:'item2.jpeg'),
               Itemcoffee(image:'item3.jpeg'),
               Itemcoffee(image:'item4.jpeg'),
               Itemcoffee(image:'item1.jpeg'),
               Itemcoffee(image:'item2.jpeg'),
               Itemcoffee(image:'item3.jpeg'),
               Itemcoffee(image:'item4.jpeg'),

             ],
           ),
       )
      ],

    ));
  }
}
