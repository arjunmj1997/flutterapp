import 'package:flutter/material.dart';
import 'package:fluttertest/widgets/apptextform.dart';
class AppContainer extends StatefulWidget {
  final double width;
 final double height;
 final Color color;
   AppContainer({Key? key, required this.width, required this.height, required this.color}) : super(key: key);

  @override
  _AppContainerState createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ApptextForm(),
      ),
    );
  }
}
