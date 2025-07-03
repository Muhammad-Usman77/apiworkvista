import 'package:flutter/material.dart';

class RafWidgets extends StatelessWidget {
 final  String text1;
 final  String image1;
  const RafWidgets({super.key, required this.text1, required this.image1});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text(text1)],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Image.asset(height: 250, width: double.infinity, image1),
            ],
          ),
        ),
      ],
    );
  }
}

class RafWidgets2 extends StatelessWidget {
 final  String text1;
 final  String image1;
 const  RafWidgets2({super.key, required this.text1, required this.image1});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Image.asset(height: 250, width: double.infinity, image1),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text(text1)],
          ),
        ),
      ],
    );
  }
}
