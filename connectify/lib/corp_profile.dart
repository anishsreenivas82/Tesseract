import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CorpProfile extends StatefulWidget {
  const CorpProfile({Key? key}) : super(key: key);

  @override
  _CorpProfileState createState() => _CorpProfileState();
}

class _CorpProfileState extends State<CorpProfile> {
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFEFBE90),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(height * 0.26),
          child: AppBar(
              backgroundColor: Color(0xfff7f4b4),
              centerTitle: true,
              flexibleSpace: Container(
                  height: height * 0.26,
                  width: width,
                  color: Color(0xfff7f4b4),
                  child: Center(
                      child: Column(children: [
                    SizedBox(
                      height: height * 0.09,
                    ),
                    Text(
                      "Connectify",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Satisfy',
                        color: Color(0xff171f28),
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      "Corporate Donors",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontFamily: "Almendra",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ]))))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: width * 0.34,
                height: height * 0.18,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.add_a_photo,
                    color: Colors.black,
                  ),
                  backgroundColor: Color(0xfff7f4b4),
                ),
                // child:
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  color: Color(0xfff7f4b4),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    width * 0.05, height * 0.05, width * 0.05, 0),
                child: TextFormField(
                    decoration: InputDecoration(
                  labelText: 'Name of the firm',
                  fillColor: Colors.white,
                  icon: Icon(Icons.person),
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
                  labelText: 'Address',
                  fillColor: Colors.white,
                  icon: Icon(Icons.notes),
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
              
            ],
          ),
        ),
      ),
    ));
  }
}
