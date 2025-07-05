import 'package:apiprojectvista/screens/commonwidgets/tabwidgets.dart';
import 'package:apiprojectvista/screens/explorescreen.dart';
import 'package:apiprojectvista/screens/widgets/notificationwidget.dart';
import 'package:apiprojectvista/utils/clr.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appclr2,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExploreScreen()),
                  );
                },
                child: BackBtn3(
                  icons1: Icons.arrow_back_ios_new,
                  text1: 'Notification',
                  icons2: Icons.clear,
                ),
              ),
              SizedBox(height: 20),
              TabWidgets1(
                text1: 'General Notification',
                text2: 'Ride Notification',
              ),
              SizedBox(height: 10),

              Expanded(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Card(
                              color: AppColor.btnback2,
                              child: NotificationWidget(
                                iconData1: Icons.notifications_none_outlined,
                                text1: 'Zoe Sended You A Message',
                                iconData2: Icons.delete_outline_rounded,
                                text2: 'sfafdsaf  asdfjasldf jsld....',
                                iconData3: Icons.watch_later_outlined,
                                text3: 'Just Watch',
                              ),
                            ),
                          ),
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
    );
  }
}
