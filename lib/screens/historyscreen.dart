import 'package:apiprojectvista/screens/commonwidgets/tabwidgets.dart';
import 'package:apiprojectvista/screens/widgets/historywidgets.dart';
import 'package:apiprojectvista/utils/clr.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appclr2,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15),
            BackBtn3(
              icons1: Icons.arrow_back_ios_new,
              text1: "Booking History",
              icons2: Icons.delete_outline,
            ),
            SizedBox(height: 15),

            TabWidgets2(
              text1: 'Schedule',
              text2: 'Completed',
              text3: 'Cancelled',
            ),
            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                children: [
                  Icon(Icons.sort_outlined, color: AppColor.appclr),
                  Text('By Date', style: TextStyle(color: AppColor.appclr)),
                ],
              ),
            ),
            Divider(color: AppColor.appclr),
            Expanded(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: HistoryWidgets(
                          icons1: Icons.watch_later_outlined,
                          text1: 'Loram Lipsum Dolar Sir Ami Consitucular Au ',
                          icons2: Icons.check_box_outlined,
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
