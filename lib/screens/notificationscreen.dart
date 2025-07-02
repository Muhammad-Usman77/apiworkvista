import 'package:apiprojectvista/screens/widgets/notificationwidget.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
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
    );
  }
}
