import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    

    return SafeArea(
      child: Scaffold(
        // appBar: PreferredSize(
        //   preferredSize: Size.fromHeight(height * 0.44),
        //   child: AppBar(
            // flexibleSpace: Hero(
            //   tag: 'container',
            //   child: Container(
            //     height: height * 0.44,
            //     width: width,
            //     color: Color(0xfff7f4b4),
            //     child: Column(
            //       children: [
            //         SizedBox(height: height * 0.09),
            //         Text(
            //           'Connectify',
            //           style: TextStyle(fontFamily: 'Satisfy', fontSize: 30),
            //         ),
            //         SizedBox(
            //           height: height * 0.01,
            //         ),
            //         Text(
            //           'Sign In',
            //           style: TextStyle(fontFamily: 'Satisfy', fontSize: 40),
            //         ),
            //         CircleAvatar(
            //           backgroundColor: Colors.black,
            //           radius: 30, //border color
            //           child: Padding(
            //               padding: const EdgeInsets.all(2.0), //border size
            //               child: CircleAvatar(
            //                 radius: 27,
            //                 backgroundImage: AssetImage("assets/logo.png"),
            //                 backgroundColor: Color(0xfff7f4b4),
            //               )),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
        //   ),
        // ),
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
                  ],
                ),
              ),
            ),
            // SizedBox(height: height*0.05,),
            Padding(
              padding: EdgeInsets.fromLTRB(width*0.05, height*0.05, width*0.05, 0),
              child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email-Id',
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.amber,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.brown,width: 2)),)),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(width*0.05, height*0.05, width*0.05, height*0.05),
              child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.amber,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.brown,width: 2)),)),
            ),

             ElevatedButton.icon(
                            onPressed: () {
                             Navigator.push(
                                context,
                                PageRouteBuilder(
                                  
                                    pageBuilder: (context,_,a) => SignIn(),transitionDuration: Duration(milliseconds: 500)));
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
                              "Sign In",
                              style: TextStyle(
                                fontFamily: 'Almendra',
                                color: Color(0xffd4fff7),
                                fontSize: 15,
                              ),
                            ))
          ],
        ),
      ),
    );
  }
}
