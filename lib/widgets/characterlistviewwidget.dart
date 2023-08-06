import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/apiservices/apiconnection.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:fluttertest/providers/apiprovider.dart';
import 'package:provider/provider.dart';
class CharacterList extends StatefulWidget {
  const CharacterList({Key? key}) : super(key: key);

  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  Map<String,dynamic>? map;
  List listres=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   dataGet();


  }
  dataGet()async{
    Map<String, dynamic>? dmap= await ApiConnection().getData();
    setState(()  {

      map=dmap;
      listres=map!['characters'];
    });

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
            child: ListView.builder(
              itemCount:listres.length,
                itemBuilder:(context,index){
                return  ListTile(
                  leading:AvatarGlow(
                    glowColor: Colors.blue,
                    endRadius: 20,
                    duration: Duration(milliseconds: 2000),
                    repeat: true,
                    showTwoGlows: true,
                    repeatPauseDuration: Duration(milliseconds: 100),
                    child: Material(     // Replace this child with your own
                      elevation: 8.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: Image.asset("assets/images/layers.png"),
                        radius: 40.0,
                      ),
                    ),
                  ),
                  title:Text(listres[index]['name'].toString()),
                  subtitle:Text(listres[index]['class'].toString()),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                );
            }
            ),
          );



  }
}
