import 'package:flutter/material.dart';
import 'package:fluttertest/widgets/characterlistviewwidget.dart';
import 'package:fluttertest/widgets/cotainerwidget.dart';
import 'package:fluttertest/widgets/filterwidget.dart';
import 'package:fluttertest/widgets/legendlistviewwidget.dart';
class LegendviewPage extends StatefulWidget {
  const LegendviewPage({Key? key}) : super(key: key);

  @override
  _LegendviewPageState createState() => _LegendviewPageState();
}

class _LegendviewPageState extends State<LegendviewPage> {
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
              LegendPage()
            ],
          ),
        )

    );
  }
}
