import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text(
                'R E C I P E G E N I E',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
              ),
            ),
            elevation: 10,
            backgroundColor: Color(0xFFf4a335),
            automaticallyImplyLeading: false,
          ),
          body: Column(children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 310.0,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w300,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFdee9f3),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15),
                        hintText: "Search Ingredients",
                        suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                  ),
                  IconButton(
                    iconSize: 35,
                    onPressed: () {},
                    icon: Icon(Icons.edit_note),
                  ),
                ],
              ),
            ),
            SizedBox.fromSize(
              size: Size(200, 40),
              child: ClipRRect(
                child: Material(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFFdfe6f5),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      width: 3,
                      color: Color(0xFFf4a335),
                    )),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 150,
                        height: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0.0),
                            border: Border.all(
                              width: 3,
                              color: Color(0xFFeeeee4),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 150,
                        height: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0.0),
                            border: Border.all(
                              width: 3,
                              color: Color(0xFFeeeee4),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 175,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      width: 3,
                      color: Color(0xFFf4a335),
                    )),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 150,
                        height: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0.0),
                            border: Border.all(
                              width: 3,
                              color: Color(0xFFeeeee4),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 150,
                        height: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0.0),
                            border: Border.all(
                              width: 3,
                              color: Color(0xFFeeeee4),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ])),
    );
  }
}
