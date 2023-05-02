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

            Expanded(
              child: ListView.builder(itemBuilder: (bcontext,index){
                return MovieItemRow();
              },
              itemCount: 10,
                shrinkWrap: true,
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.vertical,
              ),
            )
          ],

      ),
    );
  }
}


class MovieItemRow extends StatelessWidget {
  const MovieItemRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: InkWell(
        highlightColor: Colors.yellow,

        onTap: (){

        },
        child: Row(

          crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Image.asset('images/img.png',width: 100,height: 100,),

                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Row(
                         children: [
                            Expanded(child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Titanic", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18),),

                            )
                            ),
                           Text("1996")
                         ],
                       ),

                       Padding(
                         padding: const EdgeInsets.only(left: 8.0,right: 8,top: 4,bottom: 8),
                         child: Text("description of the moviee bla bla bla jhgdajkh jshdbcfj jhsdgcjnb  djhsb"),
                       )
                     ],
                 ),
                  ),



             ],

        ),
      ),
    );
  }
}
