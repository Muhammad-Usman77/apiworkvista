import 'package:apiprojectvista/screens/chatdetails.dart';
import 'package:apiprojectvista/screens/commonwidgets/tabwidgets.dart';
import 'package:apiprojectvista/screens/widgets/explorewidget.dart';
import 'package:apiprojectvista/utils/clr.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appclr2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatDetailsScreen(),
                      ),
                    );
                  },
                  child: BackBtn2(
                    icons: Icons.arrow_back_ios_new,
                    text1: 'John Ever',
                  ),
                ),
                SizedBox(height: 15),

                TabWidgets2(text1: 'Feed', text2: 'Officals', text3: 'Career'),
                SizedBox(height: 20),

                Expanded(
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ExploreWidget(
                            profileImage: 'assets/Rectangle.png',
                            name: 'John lie',
                            detailText:
                                'asdfasfds adsfdsafdsa asdfsdf asdfsdafdas asdfsafd asdfsadf ',
                            exploreImage: 'assets/Explore.png',
                            iconData1: Icons.favorite_outline,
                            iconData2: Icons.share_outlined,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
