import 'dart:convert';




import 'package:fluttertest/models/charactermodel.dart';
import 'package:fluttertest/models/legendmodel.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart'as http;





class ApiConnection {
  // Future<CharModel?> getData() async {
  //   //ApiUrl api=ApiUrl();
  //   //String url=api.charurl;
  //   List<Map<String,dynamic>> data=[];
  //   try{
  //     var response = await http.get(Uri.parse("https://saltucreativesuite.com/api/flutter/programming/test-1/characters"));
  //     if (response.statusCode == 200) {
  //       //var jsons=response.body;
  //      Map<String,dynamic> datas=json.decode(response.body);
  //      //data=datas.map((e)=>CharModel.fromJson(e)).toList();
  //     // return data;
  //
  //       return CharModel.fromJson(datas);
  //             }
  //           }catch(e){
  //     print(e);
  //     Fluttertoast.showToast(msg: "Error while fetching data");
  //   }
  // }
  Future<Map<String,dynamic>?> getData() async {
    //ApiUrl api=ApiUrl();
    //String url=api.charurl;
   // List<Map<String,dynamic>> data=[];
    try{
      var response = await http.get(Uri.parse("https://saltucreativesuite.com/api/flutter/programming/test-1/characters"));
      if (response.statusCode == 200) {
        //var jsons=response.body;

       Map<String,dynamic> datas=json.decode(response.body);
       //data=datas.map((e)=>CharModel.fromJson(e)).toList();
      // return data;
       return datas;
              }
            }catch(e){
      print(e);
      Fluttertoast.showToast(msg: "Error while fetching data");
    }
  }
  Future getlegendData() async {

      var response = await http.get(Uri.parse("https://saltucreativesuite.com/api/flutter/programming/test-1/legend "));
      if (response.statusCode == 200) {
        //var jsons=response.body;

       Map datas=json.decode(response.body);
       //data=datas.map((e)=>CharModel.fromJson(e)).toList();
      // return data;
       final results=datas['content'] ;
       //final transform=results.map((e) => LegendModel.fromJson(e)).toList();
       return results;
              }else{
           throw Exception("Error");
      }



  }
  Future<Map> getaboutData() async {

      var response = await http.get(Uri.parse("https://saltucreativesuite.com/api/flutter/programming/test-1/about  "));
      if (response.statusCode == 200) {
        //var jsons=response.body;

       Map datas=json.decode(response.body);
       //data=datas.map((e)=>CharModel.fromJson(e)).toList();
      // return data;
       return datas;
              }else{
           throw Exception("Error");
      }



  }


}