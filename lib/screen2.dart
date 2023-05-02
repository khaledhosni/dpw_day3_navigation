import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  String _username;
  Screen2(this._username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_username),
        ),
        body: Center(
          child: Container(
            child: Home(_username),
          ),
        ),
      );

  }
}



class Home extends StatefulWidget {
   Home(this._username, {Key? key}) : super(key: key);
  String _username;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _text="";

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(widget._username),
        ElevatedButton(onPressed: (){

          Navigator.pop(context,"returned data from screen B");
        }, child: Text("<< Go Back"))

      ],

    );
  }
}
