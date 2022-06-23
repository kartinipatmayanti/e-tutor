import 'dart:convert';
import 'dart:async';
import 'package:e_tutor/model/model_kosakata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;

import 'package:translator/translator.dart';

class KosaKata extends StatefulWidget {
  const KosaKata({Key? key}) : super(key: key);

  @override
  _KosaKataState createState() => _KosaKataState();
}

class _KosaKataState extends State<KosaKata> {
  
  GoogleTranslator translator = new GoogleTranslator();   //using google translator
  
  
  String out = "";
  final lang=TextEditingController();   //getting text


void trans()
  {
    
    translator.translate(lang.text, to: 'id')   //translating to hi = hindi
      .then((output) 
      {
          setState(() {
           //out = output;                          //placing the translated text to the String to be used
            out = output.text;                          //placing the translated text to the String to be used
          });
          print(out);
      });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff0e1446)),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                        margin: EdgeInsets.only(top: 120, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Translate",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Menerjemahkan bahasa Inggris ke Indonesia",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      "assets/images/kosakata.jpg",
                      width: 330,
                      height: 200,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              TextField(
                controller: lang,
              ),
              RaisedButton(
            color: Color(0xff0e1446),
            child: Text("Press !!", 
            style: TextStyle(color: Colors.white ),),            //on press to translate the language using function
            onPressed: ()
            {
              trans();
            },
          ),
          Text(out.toString())                    //translated string
            ],
          )
        ),
      ),
            ),
          ],
        ),
      ),
    );
  }
}