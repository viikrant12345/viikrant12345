import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Sinup extends StatefulWidget {
  const Sinup({Key? key}) : super(key: key);

  @override
  _SinupState createState() => _SinupState();
}

class _SinupState extends State<Sinup> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Stack(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height/4,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/Image/backup.png"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),

                      Container(
                        height: MediaQuery.of(context).size.height/4,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/Image/backdown.png"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),

                    ],

                  ),
                ),
                Center(
                  child: Container(

                    width: 300,
                    height: 700,
                   // color: Colors.red,
                       child:
                       SingleChildScrollView(
                         child: Column(
                           children: [
                             CircleAvatar(
                               radius: 50.0,
                               backgroundColor: Colors.transparent,
                               backgroundImage: AssetImage('assets/Image/logo.png'),
                             ),
                             SizedBox(
                               height: 108,
                             ),

                             TextField(
                               controller: nameController,
                               decoration: InputDecoration(
                                   hintText: 'Full Name',
                                   fillColor: Colors.black12


                               ),
                             ),
                             SizedBox(
                               height: 10,
                             ),
                             TextField(
                               controller: nameController,
                               decoration: InputDecoration(
                                   hintText: 'Email Address',
                                   fillColor: Colors.black12


                               ),
                             ),
                             SizedBox(
                               height: 10,
                             ),
                             TextField(
                               controller: nameController,
                               decoration: InputDecoration(
                                   hintText: 'Passowrd',
                                   fillColor: Colors.black12


                               ),
                             ),
                             SizedBox(
                               height: 50,
                             ),
                             ElevatedButton(
                               style: ButtonStyle(
                                 backgroundColor:  MaterialStateProperty.all<Color>(Colors.red),

                               ),
                               onPressed: () {},

                               child: Text('Sign In'

                               ),
                             ),
                             SizedBox(height: 55,),
                             Row(

                               children: [
                                 // Padding(padding: EdgeInsets.fromLTRB(10, 10,10, 10)),
                                 Align(

                                   alignment: Alignment.centerRight,
                                   child: TextButton(
                                     onPressed: (){//forgot password screen
                                     },
                                     child:
                                     Text('Alrady have on Account!',
                                         style: TextStyle(
                                             color: Colors.black38)



                                     ),
                                   ),
                                 ),
                                 Align(

                                   alignment: Alignment.centerRight,
                                   child: TextButton(

                                     onPressed: (){//forgot password screen
                                     },
                                     child:

                                     Text('Sign Up',
                                       style: TextStyle(
                                           color: Colors.red

                                       ),



                                     ),
                                   ),
                                 ),
                               ],

                             )

                           ],
                         ),
                       )
                  ),
                )
              ],
      ),

    );
  }
}