import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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

                   padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
                   width: 500,
                   height: 700,
                   child: SingleChildScrollView(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         CircleAvatar(
                           radius: 50.0,
                           backgroundColor: Colors.transparent,
                           backgroundImage: AssetImage('assets/Image/logo.png'),
                         ),
                         SizedBox(height: 108,),
                         TextField(
                           controller: nameController,
                           decoration: InputDecoration(
                             hintText: 'Email Address',
                             fillColor: Colors.black12


                           ),
                         ),
                         SizedBox(height: 5,),
                         TextField(
                           controller: passwordController,
                           decoration: InputDecoration(
                             hintText: 'Password',
                               fillColor: Colors.black38,


                           ),
                         ),
                         Align(

                           alignment: Alignment.centerRight,
                           child: TextButton(
                             onPressed: (){//forgot password screen
                             },
                             child:
                             Text('Forgot Password?',
                                 style: TextStyle(
                                     color: Colors.black38)
                             ),
                           ),
                         ),
                         SizedBox(height: 30,),
                         ElevatedButton(
                           style: ButtonStyle(
                             backgroundColor:  MaterialStateProperty.all<Color>(Colors.red),

                           ),
                           onPressed: () {},

                           child: Text('Sign In'

                         ),
                         ),

                          SizedBox(height: 40,),
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
                   ),
                 ),
               ),

             ],


           )

    );
  }
}
