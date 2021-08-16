import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectify/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class Anim extends StatefulWidget {
  @override
  _AnimState createState() => _AnimState();
}

class _AnimState extends State<Anim> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xafc98bd2),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * 0.067),
              Center(
                  child: Text(
                'Connectify',
                style: TextStyle(fontFamily: 'Satisfy', fontSize: 40),
              )),
              Container(
                height: height * 0.50,
                width: width,
                child: Lottie.asset('assets/lottie.json'),
                padding: EdgeInsets.all(8),
              ),
              Hero(
                tag: 'container',
                child: Container(
                  height: height * 0.36,
                  width: width,
                  decoration: BoxDecoration(
                    color: Color(0xfff7f4b4),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        bottomRight: Radius.zero,
                        topLeft: Radius.circular(40.0),
                        bottomLeft: Radius.zero),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.04),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 35, //border color
                        child: Padding(
                            padding: const EdgeInsets.all(2.0), //border size
                            child: Center(
                              child: CircleAvatar(
                                radius: 33,
                                backgroundImage: AssetImage("assets/logo.png"),
                                backgroundColor: Color(0xfff7f4b4),
                              ),
                            )),
                      ),
                      SizedBox(height: height * 0.03),
                      SizedBox(
                        width: width * 0.86,
                        height: height * 0.10,
                        child: Text(
                          "Connect seamlessly with Volunteers,Donors and Not-for-profit organizations to continue making the world a better place!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Almendra',
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      // SizedBox(height: height * 0.005),
                      ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                    pageBuilder: (context, _, a) => SignIn(),
                                    transitionDuration:
                                        Duration(milliseconds: 1000)));
                            // Navigator.of(context).push(_createRoute());
                          },
                          icon: Icon(
                            Icons.next_plan,
                            color: Color(0xffd4fff7),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff171f28),
                          ),
                          label: Text(
                            "Continue",
                            style: TextStyle(
                              fontFamily: 'Almendra',
                              color: Color(0xffd4fff7),
                              fontSize: 15,
                            ),
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
