import 'package:apiprojectvista/screens/widgets/rafwidgets.dart';
import 'package:flutter/material.dart';

class RafPage extends StatefulWidget {
  const RafPage({super.key});

  @override
  State<RafPage> createState() => _RafPageState();
}

class _RafPageState extends State<RafPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                final even = index % 2;
                return even == 0
                    ? RafWidgets(
                        text1: 'usman awan software engineer',
                        image1: 'assets/Rectangle.png',
                      )
                    : RafWidgets2(
                        text1: 'usman awan software engineer',
                        image1: 'assets/Rectangle.png',
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
