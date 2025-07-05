import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({super.key});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.access_alarms, color: Colors.amber),
                Wrap(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 200),
                      child: Text(
                        ' usman awan usman awan usman awan usman awan usman awan',
                      ),
                    ),
                  ],
                ),
                Icon(Icons.watch_later_outlined),
              ],
            ),
            SizedBox(height: 30),
            Wrap(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 200),
                  child: Text(
                    ' usman awan usman awan usman awan usman awan usman awan',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
