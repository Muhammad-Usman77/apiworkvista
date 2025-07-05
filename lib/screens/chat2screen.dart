import 'package:apiprojectvista/screens/commonwidgets/tabwidgets.dart';
import 'package:apiprojectvista/screens/historyscreen.dart';
import 'package:apiprojectvista/screens/widgets/chatdetails.dart';
import 'package:apiprojectvista/utils/clr.dart';
import 'package:flutter/material.dart';

class ChatScreen2 extends StatefulWidget {
  const ChatScreen2({super.key});

  @override
  State<ChatScreen2> createState() => _ChatScreen2State();
}

class _ChatScreen2State extends State<ChatScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appclr2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: 10,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HistoryScreen()),
                    );
                  },
                  child: BackBtn2(
                    icons: Icons.arrow_back_ios_new,
                    text1: 'Message',
                  ),
                ),
              ),
              SizedBox(height: 20),
              TabWidgets1(text1: 'General Message', text2: 'Ride Explore'),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Card(
                          color: AppColor.btnback2,
                          child: ChatDetailsWidgets(
                            image: 'assets/Rectangle.png',
                            name: 'John lie',
                            subName:
                                'aweawer awrawer aerawerw awerwre aerwer aerw .....',
                            icons: Icons.message_outlined,
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
