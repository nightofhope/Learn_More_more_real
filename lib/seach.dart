import 'package:flutter/material.dart';
import 'package:learn_more_more/screens/couse/couse.dart';

class sec extends StatelessWidget {
  const sec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ค้นหารายวิชา"),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSeach());
              },
              icon: Icon(Icons.search))
        ],
      ),
    );
  }
}

class DataSeach extends SearchDelegate<String> {
  final data = [
    "การเคลื่อนที่",
    "สนามของแรง",
    "การเคลื่อนที่แบบต่างๆ",
    "สนามแม่เหล็ก",
    "คลื่นกล",
    "คลื่นแม่เหล็กไฟฟ้า",
    "กัมมันตรังสี",
  ];

  final recentdata = [
    "การเคลื่อนที่",
    "สนามของแรง",
    "การเคลื่อนที่แบบต่างๆ",
    "สนามแม่เหล็ก",
    "คลื่นกล",
    "คลื่นแม่เหล็กไฟฟ้า",
    "กัมมันตรังสี",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => sec()));
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Card(
      color: Colors.amber[300],
      shape: StadiumBorder(),
      child: Center(child: Text(query)),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final Suggestionslist = query.isEmpty
        ? recentdata
        : data.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => couse1()));
        },
        leading: Icon(Icons.location_history),
        title: RichText(
            text: TextSpan(
                text: Suggestionslist[index].substring(0, query.length),
                style: TextStyle(
                    color: Colors.amber[200], fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: Suggestionslist[index].substring(query.length),
                  style: TextStyle(color: Colors.amber[100]))
            ])),
      ),
      itemCount: Suggestionslist.length,
    );
  }
}
