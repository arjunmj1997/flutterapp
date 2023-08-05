import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/apiservices/apiconnection.dart';
import 'package:http/http.dart'as http;





class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  Map map={};
  List listres=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataGet();
  }
  // dataGet()async{
  //   Map dmap= await ApiConnection().getaboutData();
  //   setState(() {
  //     map=dmap;
  //     listres=map['content'];
  //   });
  //
  // }
  dataGet()async{
   var response=await http.get(Uri.parse("https://saltucreativesuite.com/api/flutter/programming/test-1/about "));
   if(response.statusCode==200){
     setState(() {
        map=json.decode(response.body);

     });

   }

  }

  Widget build(BuildContext context) {
    // return FutureBuilder(
    //   future:ApiConnection().getData(),
    //     builder:( context,snapshot){
    //     if(snapshot.hasData){
    //       return ListView.builder(
    //         itemCount:snapshot.data,
    //           itemBuilder:(context,index){
    //           return  ListTile(
    //             leading: CircleAvatar(
    //               backgroundColor: Colors.grey,
    //             ),
    //             title:
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
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child:Text(map['content'].toString())
    );
    // child:ListView.builder(
    //   itemCount: listres.length,
    //     itemBuilder:(context,index){
    //       return Center(child: Text(listres[index]));
    //     }
    // )




  }
}
