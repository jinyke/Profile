import 'package:flutter/material.dart';

void main() {
  runApp(PortfolioApp());
}

// ignore: must_be_immutable
class PortfolioApp extends StatelessWidget {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black87,
            title: Container(
              decoration: BoxDecoration(),
              child: Text(
                'Ojinika Chukunwem',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage('images/profile1.png')),
                      color: Colors.black12),
                  alignment: Alignment.center,
                ),
                Container(
                  height: 50,
                  width: 500,
                  decoration: BoxDecoration(color: Colors.black12),
                  alignment: Alignment.center,
                  child: Text(
                    'Mobile Developer',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      height: 100,
                      width: 500,
                      decoration: BoxDecoration(color: Colors.black12),
                      alignment: Alignment.center,
                      child: Center(
                          child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            hintText: 'ojinikachukunwem@gmail.com',
                            icon: Icon(Icons.email),
                          ),
                        ),
                      )
                          //child:, Text('ojinikachukunwem@gmail.com')),
                          )),
                ),
                Expanded(
                  child: Container(
                      height: 100,
                      width: 500,
                      decoration: BoxDecoration(color: Colors.black12),
                      alignment: Alignment.center,
                      child: Center(
                          child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            hintText: '+2347034238322',
                            icon: Icon(Icons.phone),
                          ),
                        ),
                      )
                          //child:, Text('ojinikachukunwem@gmail.com')),
                          )),
                ),
                Expanded(
                  child: Container(
                      height: 100,
                      width: 500,
                      decoration: BoxDecoration(color: Colors.black12),
                      alignment: Alignment.center,
                      child: Center(
                          child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            hintText: 'Owerri',
                            icon: Icon(Icons.location_pin),
                          ),
                        ),
                      )
                          //child:, Text('ojinikachukunwem@gmail.com')),
                          )),
                ),
              ],
            ),
          ),
        ));
  }
}
