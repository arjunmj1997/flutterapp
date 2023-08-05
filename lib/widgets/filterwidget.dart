import 'package:flutter/material.dart';
class FilterWidget extends StatefulWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  _FilterWidgetState createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 35,
          width: 180,
          color: Colors.white,
          child: Row(
            children: [
              Text("Series",),
              SizedBox(
                width: 25,
              ),
              Icon(Icons.keyboard_arrow_down),
              // SizedBox(
              //   width: 16,
              // ),
              Text("Class"),
              SizedBox(
                width: 30,
              ),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ),
        Text("Selected: Dragon Ball",style: TextStyle(fontSize: 15),)
      ],
    );
  }
}
