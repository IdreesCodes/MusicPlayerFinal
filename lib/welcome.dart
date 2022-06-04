import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login/Dashboard.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SizedBox(
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.menu, color: Colors.black,size: 48.0,),

                        Image.asset("assets/logo.png", width: 42.0,),


                      ],
                    ),
                  ),
                  Padding
                    (padding: EdgeInsets.all(18.0),
                    child: Text('  Music Player\n \n',
                      style: TextStyle(color: Colors.white,
                          fontSize: 48.0,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 2),
                    )
                    ,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(60, 10, 30, 10),
                    child: Image.asset('assets/lago.png',),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Padding(padding: EdgeInsets.all(17.0),

                    child: Center(
                      child: Wrap(
                        spacing: 100.0,
                        runSpacing: 70.0,
                        children: [
                          SizedBox(


                            width: 120,
                            height: 120,
                            child: Card(
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    IconButton(
                                      icon: Image.asset('assets/g2.png', width: 34.0,),
                                      iconSize: 30,
                                      onPressed: () {
                                        Navigator.pushNamed(context, 'gAuth');
                                      },
                                    ),

                                    SizedBox(
                                      height: 10.0,
                                    ),

                                  ],

                                ),
                              ),

                            ) ,

                          ),
                          SizedBox(

                            width: 120,
                            height: 120,
                            child: Card(
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    IconButton(
                                      icon:  Image.asset('assets/imgg.png',width: 44.0,),
                                      iconSize: 50,
                                      onPressed: () {
                                        Navigator.pushNamed(context, 'login');
                                      },
                                    ),

                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "From storage",
                                      style: TextStyle(

                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 18.0

                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ) ,
                          ),
                          /*  SizedBox(

                          width: 120,
                          height: 120,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Image.asset('assets/micro.jpg',width: 64.0,),
                                    iconSize: 50,
                                    onPressed: () {
                                      Navigator.pushNamed(context, 'link');
                                    },
                                  ),

                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "Record",
                                    style: TextStyle(

                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18.0

                                    ),
                                  )
                                ],
                              ),
                            ),
                          ) ,
                        ),




                        SizedBox(

                          width: 120,
                          height: 120,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Image.asset('assets/weather.png',width: 64.0,),
                                    iconSize: 50,
                                    onPressed: () {
                                      Navigator.pushNamed(context, 'link');
                                    },
                                  ),


                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "Weather",
                                    style: TextStyle(

                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18.0

                                    ),
                                  )
                                ],
                              ),
                            ),
                          ) ,
                        ),

                        */


                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
