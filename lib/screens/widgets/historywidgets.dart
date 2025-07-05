import 'package:apiprojectvista/utils/clr.dart';
import 'package:flutter/material.dart';

class HistoryWidgets extends StatelessWidget {
 final  IconData? icons1;
 final  String? text1;
 final  IconData? icons2;

 const  HistoryWidgets({super.key, this.icons1, this.text1, this.icons2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.btnback2,
      ),
      child: Row(
        children: [
          Icon(icons1, color: AppColor.appclr),
          Text('$text1', style: TextStyle(color: AppColor.appclr)),
          Icon(icons2, color: AppColor.appclr),
        ],
      ),
    );
  }
}
