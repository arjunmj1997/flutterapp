import 'package:flutter/material.dart';
import 'package:fluttertest/widgets/characterlistviewwidget.dart';
import 'package:fluttertest/widgets/cotainerwidget.dart';
import 'package:fluttertest/widgets/filterwidget.dart';
class CharactersPage extends StatefulWidget {
  const CharactersPage({Key? key}) : super(key: key);

  @override
  _CharactersPageState createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppContainer(width:MediaQuery.of(context).size.width, height:90, color:Colors.blue),
             FilterWidget(),
             CharacterList()
          ],
        ),
      )

    );
  }
}
