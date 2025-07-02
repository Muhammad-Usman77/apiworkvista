import 'package:apiprojectvista/screens/widgets/chatdetails.dart';
import 'package:flutter/material.dart';

class ChatDetailsScreen extends StatefulWidget {
  const ChatDetailsScreen({super.key});

  @override
  State<ChatDetailsScreen> createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Card(
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
    );
  }
}
