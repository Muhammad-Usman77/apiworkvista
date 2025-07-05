import 'package:apiprojectvista/utils/clr.dart';
import 'package:flutter/material.dart';

class ExploreWidget extends StatelessWidget {
final   String? name;
 final  String? profileImage;
 final  String? exploreImage;
 final  String? detailText;
 final  IconData? iconData1;
 final  IconData? iconData2;
const  ExploreWidget({super.key, this.name, this.profileImage, this.exploreImage, this.detailText, this.iconData1, this.iconData2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('$profileImage')),
              ),
            ),
            Text('$name',style: TextStyle(color: AppColor.appclr),),
          ],
        ),
        Text('$detailText',style: TextStyle(color: AppColor.appclr),),
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(

          ),child: Image.asset('$exploreImage'),
        ),
        Row(children: [
          Icon(iconData1,color: AppColor.appclr,),
          SizedBox(width: 20,),
          Icon(iconData2,color: AppColor.appclr,),
        ],)
      ],
    );
  }
}
