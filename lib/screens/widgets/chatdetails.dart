import 'package:apiprojectvista/utils/clr.dart';
import 'package:flutter/material.dart';

class ChatDetailsWidgets extends StatelessWidget {
  final String? name;
  final String? image;
  final IconData? icons;
  final String? subName;
  const ChatDetailsWidgets({
    super.key,
    this.image,
    this.name,
    this.subName,
    this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: AppColor.btnback2,
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage('$image')),
        ),
      ),
      title: Text('$name', style: TextStyle(color: AppColor.appclr)),
      subtitle: Text('$subName', style: TextStyle(color: AppColor.appclr)),
      trailing: Icon(icons, color: AppColor.appclr),
    );
  }
}
