import 'package:apiprojectvista/utils/clr.dart';
import 'package:flutter/material.dart';

class TabWidgets1 extends StatelessWidget {
  final String? text1;
  final String? text2;
  const TabWidgets1({super.key, this.text1, this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('$text1', style: TextStyle(color: AppColor.appclr)),
        Text('|', style: TextStyle(color: AppColor.appclr)),
        Text('$text2', style: TextStyle(color: AppColor.appclr)),
      ],
    );
  }
}

class TabWidgets2 extends StatelessWidget {
  final String? text1;
  final String? text2;
  final String? text3;
  const TabWidgets2({super.key, this.text1, this.text2, this.text3});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('$text1', style: TextStyle(color: AppColor.appclr)),
        Text('|', style: TextStyle(color: AppColor.appclr)),
        Text('$text2', style: TextStyle(color: AppColor.appclr)),
        Text('|', style: TextStyle(color: AppColor.appclr)),
        Text('$text3', style: TextStyle(color: AppColor.appclr)),
      ],
    );
  }
}

class BackBtn1 extends StatelessWidget {
  final IconData? icons;
  const BackBtn1({super.key, this.icons});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Icon(icons, color: AppColor.appclr)]);
  }
}

class BackBtn2 extends StatelessWidget {
  final IconData? icons;
  final String? text1;
  const BackBtn2({super.key, this.icons, this.text1});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(icons, color: AppColor.appclr),
        Text('$text1', style: TextStyle(color: AppColor.appclr)),
        SizedBox(),
      ],
    );
  }
}

class BackBtn3 extends StatelessWidget {
  final IconData? icons1;
  final String? text1;
  final IconData? icons2;
  const BackBtn3({super.key, this.icons1, this.text1, this.icons2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(icons1, color: AppColor.appclr),
        Text('$text1', style: TextStyle(color: AppColor.appclr)),
        Icon(icons2, color: AppColor.appclr),
      ],
    );
  }
}
