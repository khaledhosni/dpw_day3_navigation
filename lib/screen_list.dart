import 'package:flutter/material.dart';



class ScreenListView extends StatefulWidget {
  const ScreenListView({Key? key}) : super(key: key);

  @override
  State<ScreenListView> createState() => _ScreenListViewState();
}

class _ScreenListViewState extends State<ScreenListView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(

        mainAxisSize: MainAxisSize.max,
        children: [

          ListView(
            children: [
              Card(
                  child: ListTile(
                    title:Text("List Item 1") ,
                  ),
              ),
              Card(
                child: ListTile(
                  title: Text("List Item 2"),
                ),
              ),
              Card(
                  child: ListTile(
                    title: Text("List Item 3"),
                  )
              ),
            ],
            padding: EdgeInsets.all(10),
            shrinkWrap: true,
          )
        ],
      ),
    );
  }
}
