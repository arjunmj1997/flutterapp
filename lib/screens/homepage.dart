

import 'package:flutter/material.dart';
import 'package:fluttertest/widgets/aboutlistwidget.dart';
import 'package:fluttertest/screens/characterspage.dart';

import '../widgets/legendlistviewwidget.dart';
import 'aboutviewpage.dart';
import 'legendviewpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController _tabcntrl=TabController(length: 3, vsync:this,initialIndex: 0);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //_tabcntrl=TabController(length: 3, vsync:this,initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 80,
       title: Text('Home',style: TextStyle(color: Colors.white,fontSize: 20),),
        bottom: TabBar(
          controller: _tabcntrl,
          tabs: [
          Text("Characters"),
          Text("Legend"),
          Text("About")
        ],),

      ),
      body: TabBarView(
        controller: _tabcntrl,
        children: [
          CharactersPage(),
         LegendviewPage(),
         AboutviewPage()
        ],

      ),
    );
  }
}
