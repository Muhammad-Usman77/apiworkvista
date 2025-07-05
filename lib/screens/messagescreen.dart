import 'package:apiprojectvista/screens/commonwidgets/tabwidgets.dart';
import 'package:apiprojectvista/screens/notificationscreen.dart';
import 'package:apiprojectvista/screens/widgets/messagewidget.dart';
import 'package:apiprojectvista/utils/clr.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appclr2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationScreen(),
                    ),
                  );
                },
                child: BackBtn2(
                  icons: Icons.arrow_back_ios_new,
                  text1: 'John Ever',
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    final even = index % 2;
                    return Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          even == 0
                              ? MessageWidgets(image: 'assets/Rectangle.png')
                              : MessageWidgets2(),
                        ],
                      ),
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
