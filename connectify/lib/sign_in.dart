// import 'package:connectify/role.dart';
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

    if (user != "") {
      Future.delayed(Duration.zero, () {
        Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, _, a) => Role(),
            ));
      });
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFEFBE90),
        body: ListView(
          children: [
            Hero(
              tag: 'container',
              child: Container(
                height: height * 0.30,
                width: width,
                color: Color(0xfff7f4b4),
                child: Column(
                  children: [
                    SizedBox(height: height * 0.05),
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
                    )
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: height * 0.05,
            // ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.05, width * 0.05, 0),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                          height: height * 0.35,
                          width: width * 0.75,
                          decoration: BoxDecoration(
                            image: new DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1521790361543-f645cf042ec4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: height * 0.25),
                              ElevatedButton.icon(
                                  onPressed: () {
                                    sawo.signIn(
                                      context: context,
                                      identifierType: 'email',
                                      callback: payloadCallback,
                                    );
                                  },
                                  icon: Icon(Icons.email),
                                  label: Text(
                                    'Email Login',
                                    style: TextStyle(
                                      fontFamily: 'Almendra',
                                      color: Color(0xffd4fff7),
                                      fontSize: 15,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff171f28),
                                  )),
                            ],
                          ))),
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                          height: height * 0.35,
                          width: width * 0.75,
                          decoration: BoxDecoration(
                            image: new DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1523206489230-c012c64b2b48?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: height * 0.25),
                              ElevatedButton.icon(
                                onPressed: () {
                                  sawo.signIn(
                                    context: context,
                                    identifierType: 'phone_number_sms',
                                    callback: payloadCallback,
                                  );
                                  print(user);
                                },
                                icon: Icon(Icons.phone),
                                label: Text(
                                  'Phone Login',
                                  style: TextStyle(
                                    fontFamily: 'Almendra',
                                    color: Color(0xffd4fff7),
                                    fontSize: 15,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff171f28),
                                ),
                              )
                            ],
                          ))),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
