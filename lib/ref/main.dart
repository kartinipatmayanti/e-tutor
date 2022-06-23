import 'package:flutter/material.dart';
import 'package:translator/translator.dart';


void main()
{
  runApp(
    MaterialApp(
      home: App(),
    )
  );
  
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

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

       translator.translate(lang.text, to: 'en')   //translating to hi = hindi
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
      appBar: AppBar(
        title: Text("Translate"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              TextField(
                controller: lang,
              ),
              RaisedButton(
            color: Color(0xff0e1446),
            child: Text("Press", 
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
    );
  }
}