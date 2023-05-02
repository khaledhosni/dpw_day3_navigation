import 'package:dpw_day3_navigation/screen2.dart';
import 'package:dpw_day3_navigation/screen_list2.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
            child: HomeBody(),
          ),
        ),
      ),
    );
  }
}



class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  String _text="";

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(_text),
        ElevatedButton(onPressed: () async{

          String username="Khaled";
         var data=await Navigator.push(context, MaterialPageRoute(builder: (buildcontxt)=> ScreenListView()  ));

         Fluttertoast.showToast(msg: data);
        }, child: Text("Go to Screen B"))

      ],

    );
  }
}
