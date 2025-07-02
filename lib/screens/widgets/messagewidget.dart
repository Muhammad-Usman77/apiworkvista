import 'package:flutter/material.dart';

class MessageWidgets extends StatelessWidget {
 final  String? image;
 const  MessageWidgets({super.key, this.image});

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
          child: Column(
            children: [
              Text(
                'usman awan usman awan\n usman awan usman awan\n usman awan usman\n usman',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MessageWidgets2 extends StatelessWidget {
  MessageWidgets2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Card(
          child: Column(
            children: [
              Text(
                'usman awan usman awan\n usman awan usman awan\n usman awan usman\n usman',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
