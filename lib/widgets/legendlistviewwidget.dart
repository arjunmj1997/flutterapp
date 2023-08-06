import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/apiservices/apiconnection.dart';
import 'package:fluttertest/models/legendmodel.dart';





class LegendPage extends StatefulWidget {
  const LegendPage({Key? key}) : super(key: key);

  @override
  _LegendPageState createState() => _LegendPageState();
}

class _LegendPageState extends State<LegendPage> {
  //Map map={};
  Map<String, dynamic>? map;
  List<LegendModel>? listres = [];

  @override
void initState()  {
    // TODO: implement initState
    super.initState();

     // listres =  await ApiConnection().getlegendData() ;

dataGet();

  }

   dataGet() async {
    //Map dmap= await ApiConnection().getlegendData();
    listres = await ApiConnection().getlegendData();

    return listres;
  }

  Widget build(BuildContext context) {
      return ListView.builder(
        itemCount: listres!.length,
        itemBuilder: (context,index) {
          return Text(listres![index].content.toString());
        }
          );
        }

                }

    // return FutureBuilder(
    //     future: ApiConnection().getlegendData(),
    //     builder: (context, snapshot) {
    //         if (snapshot.hasData) {
    //           return ListView.builder(
    //               itemCount: snapshot.data!.length,
    //               itemBuilder: (context, index) {
    //                 return ListTile(
    //                     leading: CircleAvatar(
    //                       backgroundColor: Colors.grey,
    //                     ),
    //                     title: Text(
    //                         snapshot.data![index].content.toString().trim())
    //                 );
    //               }
    //           );
    //         }
    //
    //      else if (snapshot.hasError) {
    //       return const Text("Something went wrong");
    //       }
    //       else {
    //       return const CircularProgressIndicator();
    //       }
    //     }
    // );
    // return FutureBuilder(
    //     future: ApiConnection().getlegendData(),
    //     builder: (context, snapshot) {
    // try{
    // if (snapshot.hasData) {
    // return ListView.builder(
    // itemCount: snapshot.data!.length,
    // itemBuilder: (context, index) {
    // return ListTile(
    // leading: CircleAvatar(
    // backgroundColor: Colors.grey,
    // ),
    // title: Text(
    // snapshot.data![index].content.toString().trim())
    // );
    // }
    // );
    // }else{
    //   return CircularProgressIndicator();
    // }
    // }catch(e){
    //   print(e.toString());
    // }
    //
    // }
    //
    //
    //
    // );
  //}

//}