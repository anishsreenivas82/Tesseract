import 'package:connectify/role.dart';
import 'package:connectify/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sawo/sawo.dart';

bool _ishidden = true;
Sawo sawo = new Sawo(
  apiKey: '0cd131c0-de41-48f7-8f3d-0e5091c81aac',
  secretKey: '611913b82f5bde7b00072f24K0O6VNLoWECtisC1RNFiyu20',
);

class SignIn extends StatefulWidget {

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  void initState() {
    super.initState();

    _ishidden = true;
  }

  var config = {};
  // user payload
  String user = "";
  void payloadCallback(context, payload) {
    if (payload == null || (payload is String && payload.length == 0)) {
      payload = "Login Failed :(";
    }
    setState(() {
      user = payload;
    });
  }

  void toogleState(typedata, text) => setState(() {
        config[typedata] = text;
      });

  @override
  Widget build(BuildContext context) {
    Route _createRoute() {
      return PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 1500),
        pageBuilder: (context, animation, secondaryAnimation) => const SignUp(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      );
    }

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFEFBE90),
        body: ListView(
          children: [
            Hero(
              tag: 'container',
              child: Container(
                height: height * 0.44,
                width: width,
                color: Color(0xfff7f4b4),
                child: Column(
                  children: [
                    SizedBox(height: height * 0.09),
                    Text(
                      'Connectify',
                      style: TextStyle(fontFamily: 'Satisfy', fontSize: 30),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      'Sign In',
                      style: TextStyle(fontFamily: 'Satisfy', fontSize: 40),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30, //border color
                      child: Padding(
                          padding: const EdgeInsets.all(2.0), //border size
                          child: CircleAvatar(
                            radius: 27,
                            backgroundImage: AssetImage("assets/logo.png"),
                            backgroundColor: Color(0xfff7f4b4),
                          )),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     // Sawo sawo = new Sawo(
                    //     //   apiKey: config["apiKey"],
                    //     //   secretKey: config["secretKey"],
                    //     // );
                    //     sawo.signIn(
                    //       context: context,
                    //       identifierType: 'email',
                    //       callback: payloadCallback,
                    //     );
                    //   },
                    //   child: Text('Email Login'),
                    // ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     // Sawo sawo = new Sawo(
                    //     //   apiKey: config["apiKey"],
                    //     //   secretKey: config["secretKey"],
                    //     // );
                    //     sawo.signIn(
                    //       context: context,
                    //       identifierType: 'phone_number_sms',
                    //       callback: payloadCallback,
                    //     );
                    //   },
                    //   child: Text('Phone Login'),
                    // ),
                  ],
                ),
              ),
            ),
            // SizedBox(height: height*0.05,),
            Padding(
                padding: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.05, width * 0.05, 0),
              child: Column(
              
                children:  [ElevatedButton(
                        onPressed: () {
                          // Sawo sawo = new Sawo(
                          //   apiKey: config["apiKey"],
                          //   secretKey: config["secretKey"],
                          // );
                          sawo.signIn(
                            context: context,
                            identifierType: 'email',
                            callback: payloadCallback,
                          );
                        },
                        child: Text('Email Login'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Sawo sawo = new Sawo(
                          //   apiKey: config["apiKey"],
                          //   secretKey: config["secretKey"],
                          // );
                          sawo.signIn(
                            context: context,
                            identifierType: 'phone_number_sms',
                            callback: payloadCallback,
                          );
                        },
                        child: Text('Phone Login'),
                      ),
                      ]),
            ),
          ],
        ),
      ),
    );
  }
}
