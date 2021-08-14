import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CorpProfile extends StatefulWidget {
  const CorpProfile({ Key? key }) : super(key: key);

  @override
  _CorpProfileState createState() => _CorpProfileState();
}

class _CorpProfileState extends State<CorpProfile> {
  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(child: Container(
          child:Column(
            
          )
        ), 
        preferredSize: Size.fromHeight(height*0.26)),
      )
    );
  }
}