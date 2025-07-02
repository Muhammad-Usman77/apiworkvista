import 'dart:convert';

import 'package:apiprojectvista/screens/widgets/firstwidgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Getapiscreen extends StatefulWidget {
  const Getapiscreen({super.key});

  @override
  State<Getapiscreen> createState() => _GetapiscreenState();
}

class _GetapiscreenState extends State<Getapiscreen> {
  getPostApi() async {
    var url = Uri.parse('https://24sevenfairmart.site/api/v1/about');
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);
    return responsebody;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getPostApi(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                final even = index % 2;
                return Column(
                  children: [
                    Text(
                      'About Us',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    even == 0
                        ? Firstwidgets(
                            image: snapshot.data[index]['image'],
                            text1: snapshot.data[index]['title'],
                          )
                        : Firstwidgets(
                            image: snapshot.data[index]['image'],
                            text1: snapshot.data[index]['title'],
                          ),
                  ],
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
