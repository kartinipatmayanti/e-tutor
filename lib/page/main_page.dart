import 'package:e_tutor/page/kosakata_page.dart';
import 'package:e_tutor/page/materi_page.dart';
import 'package:e_tutor/page/tentang_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Expanded(
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Materi()));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/ic_materi.png"),
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Materi E-Tutor",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.all(10),
                child: Expanded(
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => KosaKata()));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/ic_kosakata.png"),
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Translate E-Tutor",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.all(10),
                child: Expanded(
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TentangKami()));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/ic_tentang.png"),
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Tentang E-Tutor",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
