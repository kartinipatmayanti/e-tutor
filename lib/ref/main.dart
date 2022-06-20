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
  
  
  late String out;
  final lang=TextEditingController();   //getting text


  void trans()
  {
    
    translator.translate(lang.text, to: 'it')   //translating to hi = hindi
      .then((output) 
      {
          setState(() {
           out = output;                          //placing the translated text to the String to be used
          });
          print(out);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Translate !!"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              TextField(
                controller: lang,
              ),
              RaisedButton(
            color: Colors.red,
            child: Text("Press !!"),            //on press to translate the language using function
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