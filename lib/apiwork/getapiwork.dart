import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetApiWork extends StatefulWidget {
  const GetApiWork({super.key});

  @override
  State<GetApiWork> createState() => _GetApiWorkState();
}

class _GetApiWorkState extends State<GetApiWork> {
  getApiUsers() async {
    var url = 'https://jsonplaceholder.typicode.com/users';
    var uri = Uri.parse(url);
    var response = await http.get(uri);
    var responsebody = jsonDecode(response.body);
    return responsebody;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getApiUsers(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snapshot.data[index]['username']),
                        subtitle: Text(snapshot.data[index]['id'].toString()),
                      );
                    },
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
