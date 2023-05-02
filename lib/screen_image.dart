import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Home(),
          ),
        ),
      ),
    );
  }
}


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var imageVisible=false;

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

        if(imageVisible)Image.asset("images/img.png",width: 200,height: 200,),
        Image.network("https://icons.iconarchive.com/icons/custom-icon-design/happy-easter/256/Bunny-icon.png",width: 200,height: 200,),
        ElevatedButton(onPressed: (){

          setState(() {

            imageVisible = !imageVisible;
          });

        }, child: Text("Change Image"))
      ],
    );
  }
}
