import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FelxibleScreen extends StatefulWidget {
  const FelxibleScreen({super.key});

  @override
  State<FelxibleScreen> createState() => _FelxibleScreenState();
}

class _FelxibleScreenState extends State<FelxibleScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,

      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text('Message'), Text('|'), Text('Message')],
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.amber),
              ),

              Icon(Icons.format_list_bulleted, color: Colors.amber),
              Icon(Icons.assistant_navigation, color: Colors.amber),
            ],
          ),
        ),
      ),
    );
  }
}
