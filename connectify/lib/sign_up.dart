import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
bool _ishidden = true;

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

   @override
  void initState() {
    super.initState();

    _ishidden = true;
  }

  @override
  Widget build(BuildContext context) {

     double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
       
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
                      'Sign Up',
                      style: TextStyle(fontFamily: 'Almendra', fontSize: 40),
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
              padding: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.05, width * 0.05, 0),
              child: TextFormField(
                  decoration: InputDecoration(
                labelText: 'Email-Id',
                fillColor: Colors.white,
                icon: Icon(Icons.email),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.amber,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.brown, width: 2)),
              )),
            ),
             Padding(
              padding: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.05, width * 0.05, 0),
              child: TextFormField(
                
                  decoration: InputDecoration(
                labelText: 'Phone Number',
                fillColor: Colors.white,
                icon: Icon(Icons.phone),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.amber,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.brown, width: 2)),
              )),
            ),
             Padding(
              padding: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.05, width * 0.05, 0),
              child: TextFormField(
                obscureText: _ishidden,
                  decoration: InputDecoration(
                     suffix: InkWell(child: Icon(_ishidden ? Icons.visibility : Icons.visibility_off),onTap:(){setState(() {
                      _ishidden = !_ishidden;
                    });}),
                labelText: 'Password',
                fillColor: Colors.white,
                icon: Icon(Icons.password),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.amber,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.brown, width: 2)),
              )),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.05, width * 0.05, height * 0.01),
              child: TextFormField(
                obscureText: _ishidden,
                  decoration: InputDecoration(
                     suffix: InkWell(child: Icon(_ishidden ? Icons.visibility : Icons.visibility_off),onTap:(){setState(() {
                      _ishidden = !_ishidden;
                    });}),
                labelText: 'Confirm Password',
                fillColor: Colors.white,
                icon: Icon(Icons.password),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.amber,
                      width: 2,
                      
                    ),
                    borderRadius: BorderRadius.circular(20)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.brown, width: 2)),
              )),
            ),

            

            Center(
              child: Container(
                width: width * 0.3,
                child: ElevatedButton.icon(
                    onPressed: () {},
                     
                    icon: Icon(
                      Icons.next_plan,
                      color: Color(0xffd4fff7),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff171f28),
                    ),
                    label: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontFamily: 'Almendra',
                        color: Color(0xffd4fff7),
                        fontSize: 15,
                      ),
                    )),
              ),
            ),
            // SizedBox(height: height * 0.005),
            //         Text(
            //           "Dont have an Account?",
            //           textAlign: TextAlign.center,
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 15,
            //               fontFamily: 'Almendra'),
            //         ),
            //         TextButton(
            //           onPressed: () {
            //             // Navigator.push(context,
            //             //     MaterialPageRoute(builder: (context) => SignUp()));
            //           },
            //           child: Text(
            //             "Sign Up",
            //             textAlign: TextAlign.center,
            //             style: TextStyle(
            //                 color: Colors.black,
            //                 fontSize: 15,
            //                 fontFamily: 'Almendra',
            //                 decoration: TextDecoration.underline),
            //           ),
            //         ),
          ],
        ),
      ),
    );
  }
}