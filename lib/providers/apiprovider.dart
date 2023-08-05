import 'package:flutter/cupertino.dart';
import 'package:fluttertest/apiservices/apiconnection.dart';

class ApiProvider extends ChangeNotifier{

  ApiConnection api=ApiConnection();
  Future getAll() async {
    Map<String, dynamic>? dmap= await ApiConnection().getData();
    notifyListeners();
    return dmap;
  }

}