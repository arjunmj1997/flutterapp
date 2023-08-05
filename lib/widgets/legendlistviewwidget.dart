import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/apiservices/apiconnection.dart';





class LegendPage extends StatefulWidget {
  const LegendPage({Key? key}) : super(key: key);

  @override
  _LegendPageState createState() => _LegendPageState();
}

class _LegendPageState extends State<LegendPage> {
  //Map map={};
  var map;
  List listres=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataGet();
  }
  dataGet()async{
    //Map dmap= await ApiConnection().getlegendData();
    setState(() async {
     // map=dmap;
      map=await ApiConnection().getlegendData();
    });
    return map;
  }
  Widget build(BuildContext context) {
    return Text(map.toString());

              }

    // return FutureBuilder(
    //   future:ApiConnection().getlegendData(),
    //     builder:( context,snapshot){
    //     if(snapshot.hasData){
    //       return ListView.builder(
    //         itemCount:snapshot.data!.length,
    //           itemBuilder:(context,index){
    //           return  ListTile(
    //             leading: CircleAvatar(
    //               backgroundColor: Colors.grey,
    //             ),
    //             title:Text(snapshot.data![index]['content'])
    //           );
    //       }
    //       );
    //     }else if(snapshot.hasError){
    //      return const Text("Something went wrong");
    //     }
    //     else{
    //       return const CircularProgressIndicator();
    //     }
    //     }
    // );
    // return Text(
    //   map['content'].toString()
    // );
      // child:ListView.builder(
      //   itemCount: listres.length,
      //     itemBuilder:(context,index){
      //       return Center(child: Text(listres[index]));
      //     }
      // )




  }

