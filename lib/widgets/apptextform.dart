import 'package:flutter/material.dart';
class ApptextForm extends StatefulWidget {
  const ApptextForm({Key? key}) : super(key: key);

  @override
  _ApptextFormState createState() => _ApptextFormState();
}

class _ApptextFormState extends State<ApptextForm> {
  TextEditingController searchcntrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: searchcntrl,
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.search,size:28,color: Colors.black,),
          suffixIcon:Icon(Icons.close)

      ),
    );
  }
}
