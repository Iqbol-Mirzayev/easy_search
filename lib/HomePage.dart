import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Set<Map<String, dynamic>> searchedUsers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Search App"),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: TextFormField(
                decoration: const InputDecoration(hintText: "Search something"),
                onChanged: (v) {
                  searchedUsers.clear();
                  setState(() {});
                  for (var element in users) {
                    if (element['name'].toString().toLowerCase() ==
                        v.toString().toLowerCase()) {
                      searchedUsers.add(element);
                    }
                  }
                },
              ),
            ),
            Expanded(
              flex: 8,
              child: ListView.builder(
                itemBuilder: ((context, index) {
                  return Card(
                    child: ListTile(
                      title : Text(searchedUsers.toList()[index]['name']),
                      subtitle : Text(searchedUsers.toList()[index]['job']),
                    ),
                  );
                }
                
                ),
                itemCount: searchedUsers.length,
              ),
            ),
          ],
        ));
  }
}

List<Map<String, dynamic>> users = [
  {"name": "Sarvar", "job": "Front-end developer"},
  {"name": "Tohir", "job": "Front-end developer"},
  {"name": "Nodir", "job": "Front-end developer"},
  {"name": "Qodir", "job": "Front-end developer"},
  {"name": "Alisher", "job": "Front-end developer"},
  {"name": "Botir", "job": "Front-end developer"},
  {"name": "Aziz", "job": "Front-end developer"},
  {"name": "Eshmat", "job": "Front-end developer"},
  {"name": "Toshmat", "job": "Front-end developer"},
  {"name": "Shohjaxon", "job": "Flutter developer"}
];
