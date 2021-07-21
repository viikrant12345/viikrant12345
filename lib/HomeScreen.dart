import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500,
        child: ListView(
          children: [
            Padding(padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/Image/logo.png',
                width: 100,
                height: 100,),
                ElevatedButton(


                    onPressed: () {},
                    child: const Text('Upload Prescription'),
                  ),
                Icon(Icons.search),
                Icon(Icons.shopping_cart),
                Icon(Icons.view_headline_rounded)

              ],



            ),

            ),
            SizedBox(height: 10,),
             CarouselSlider(items: [
               Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage('assets/Image/couponcard.png'),
                    fit: BoxFit.cover,
                  )
                ),
               ),
               SizedBox(height: 5,),
               Container(
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(12)),
                     image: DecorationImage(
                       image: AssetImage('assets/Image/couponcarda.png'),
                       fit: BoxFit.cover,
                     )
                 ),
               ),
               SizedBox(height: 5,),
               Container(
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(12)),
                     image: DecorationImage(
                       image: AssetImage('assets/Image/couponcardb.png'),
                       fit: BoxFit.cover,
                     )
                 ),
               ),

               Container(
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(12)),
                     image: DecorationImage(
                       image: AssetImage('assets/Image/couponcardc.png'),
                       fit: BoxFit.cover,
                     )
                 ),
               )
             ], options: CarouselOptions(
               height: 202
             )),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 300,
              width: 300,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: 300,
                      height: 400,

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border(
                              bottom: BorderSide(color: Colors.red,width: 2.0),
                              top: BorderSide(color: Colors.red,width: 2.0),
                              right: BorderSide(color: Colors.red,width: 2.0),
                              left: BorderSide(color: Colors.red,width: 2.0)

                          )
                      ),
                      margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
                    ),
                  ),
                  Positioned(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 200,
                        height: 30,
                        color: Colors.white,
                        child: Container(
                          width: 190,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Top Selling Medicines in India'
                              ,style: TextStyle(
                                fontSize: 10,
                                color: Colors.white


                            ),
                            ),
                          ),
                        ),

                      ),

                    ),
                  ),




                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text('Shop by Barands',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),


             child: Column(
               children: [
                 Row(
                     children: [
                       Container(
                         child: new Image.asset(
                           'assets/Image/brandlogo.png',
                           height: 60.0,
                           fit: BoxFit.cover,
                         ),
                       ),

                       Container(
                         child: new Image.asset(
                           'assets/Image/brandlogoa.png',
                           height: 60.0,
                           fit: BoxFit.cover,
                         ),
                       ),
                     ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Center(
                       child: Container(
                         child: new Image.asset(
                           'assets/Image/brandlogob.png',
                           height: 60.0,

                           fit: BoxFit.cover,
                         ),
                       ),
                     ),
                     SizedBox(
                       width: 70,
                     ),

                     Container(
                       child: new Image.asset(
                         'assets/Image/brandlogoc.png',
                         height: 60.0,
                         fit: BoxFit.cover,
                       ),
                     ),
                   ],
                 ),
                 
               ],
             ),


            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text('We Love Our Clients',
                style: TextStyle(fontWeight: FontWeight.bold),

              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 300,
                height: 400,
                decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.only(top: 10.0,bottom: 10.0),

                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text('Super Speed!',

                          style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize:20,
                          ),

                        ),

                      ),
                      Stack(
                        children:<Widget> [
                         new Container(
                            padding: EdgeInsets.all(30.0),
                            alignment: Alignment.center,

                            child: Text('This is a great design and I hope that we will create a website'
                                ' with a good signature. ThemeMove team is '
                                '     reactive and kind. Thanks for the help so far.',
                                   style: new TextStyle(
                                     fontSize: 10
                                   ),   )
                          ),
                          Image.asset('assets/Image/')


                        ],
                      ),



                    ],
                  ),
                ),



              ),




          ],

        ),
      ),



    );
  }
}