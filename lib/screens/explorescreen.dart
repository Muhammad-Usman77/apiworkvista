import 'package:apiprojectvista/screens/widgets/explorewidget.dart';
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
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
