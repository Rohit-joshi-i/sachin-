import 'package:flutter/material.dart';
class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Center(
        child: Icon(Icons.home,size: 100,),
      ),
    );
  }
}
