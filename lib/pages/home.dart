import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'R E C I P E G E N I E',
            ),
          ),
          elevation: 10,
          backgroundColor: Colors.deepPurple[200],
          automaticallyImplyLeading: false,
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search",
                suffixIcon: const Icon(Icons.search),
                // prefix: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(200, 40),
            child: ClipRRect(
              child: Material(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.deepPurple[50],
                child: InkWell(
                  splashColor: Colors.deepPurple[200],
                  onTap: () {},
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Icon(Icons.shopping_cart), // <-- Icon
                      Text("Search Recipes"), // <-- Text
                    ],
                  ),
                ),
              ),
            ),
          )
        ]));
  }
}
