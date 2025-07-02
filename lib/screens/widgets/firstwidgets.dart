import 'package:flutter/material.dart';

class Firstwidgets extends StatelessWidget {
 final  String? text1;
 final  String? image;
 const  Firstwidgets({super.key, this.text1, this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,

          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('$text1')],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormField(),
              Image.network(
                height: 200,
                width: double.infinity,
                'https://24sevenfairmart.site/$image',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
