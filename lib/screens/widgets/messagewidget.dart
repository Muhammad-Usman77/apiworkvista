import 'package:apiprojectvista/utils/clr.dart';
import 'package:flutter/material.dart';

class MessageWidgets extends StatelessWidget {
  final String? image;
  const MessageWidgets({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage('$image')),
          ),
        ),
        Card(
          color: AppColor.btnback2,
          child: Column(
            children: [
              Text(
                'usman awan usman awan\n usman awan usman awan\n usman awan usman\n usman',
                style: TextStyle(color: AppColor.appclr),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MessageWidgets2 extends StatelessWidget {
  const MessageWidgets2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Card(
          color: AppColor.btnback2,

          child: Column(
            children: [
              Text(
                'usman awan usman awan\n usman awan usman awan\n usman awan usman\n usman',
                style: TextStyle(color: AppColor.appclr),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
