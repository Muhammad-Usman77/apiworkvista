import 'package:apiprojectvista/utils/clr.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  final IconData? iconData1;
  final String? text1;
  final IconData? iconData2;
  final String? text2;
  final IconData? iconData3;
  final String? text3;
  
  const NotificationWidget({
    super.key,
    this.iconData1,
    this.text1,
    this.iconData2,
    this.text2,
    this.text3,
    this.iconData3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(iconData1, color: AppColor.appclr),
              Text('$text1', style: TextStyle(color: AppColor.appclr)),
              Icon(iconData2, color: AppColor.appclr),
            ],
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text('$text2', style: TextStyle(color: AppColor.appclr)),
        ),
        SizedBox(height: 5),

        Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Row(
            children: [
              Icon(iconData3, size: 15, color: AppColor.appclr),
              SizedBox(width: 5),
              Text('$text3', style: TextStyle(color: AppColor.appclr)),
            ],
          ),
        ),
      ],
    );
  }
}
