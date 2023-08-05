import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class RandomAvatar extends StatefulWidget {
  const RandomAvatar({Key? key}) : super(key: key);

  @override
  _RandomAvatarState createState() => _RandomAvatarState();
}

class _RandomAvatarState extends State<RandomAvatar> {
  @override
  Widget build(BuildContext context) {
    List imgurl=["https://icons8.com/icon/pCvIfmctRaY8/flutter",
      "https://icons8.com/icon/c9CYgtUGeh1o/butterfly",
      "https://icons8.com/icon/pCvIfmctRaY8/flutter",
      "https://icons8.com/icon/pCvIfmctRaY8/flutter",
      "https://icons8.com/icon/pCvIfmctRaY8/flutter",
      "https://icons8.com/icon/pCvIfmctRaY8/flutter",
      "https://icons8.com/icon/pCvIfmctRaY8/flutter",
      "https://icons8.com/icon/pCvIfmctRaY8/flutter",
      "https://icons8.com/icon/pCvIfmctRaY8/flutter",
      "https://icons8.com/icon/pCvIfmctRaY8/flutter",
      "https://icons8.com/icon/pCvIfmctRaY8/flutter",
      "https://icons8.com/icon/pCvIfmctRaY8/flutter",
      "https://icons8.com/icon/pCvIfmctRaY8/flutter",
      "https://icons8.com/icon/pCvIfmctRaY8/flutter",
      "https://icons8.com/icon/pCvIfmctRaY8/flutter",
      "https://icons8.com/icon/pCvIfmctRaY8/flutter",
    ];
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child:ListView.builder(
        itemCount:imgurl.length ,
          itemBuilder:(context,index){
          return Image.network(imgurl[index]);
          }
      )
    );
  }
}
