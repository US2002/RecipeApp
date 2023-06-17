import 'dart:math';
import 'package:flutter/material.dart';
import 'package:recipe_genie/pages/pantryPage.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool? _isChecked = false;
  final List _itemData = List.generate(1000, (index) {
    return {"name": "Item", "age": Random().nextInt(90) + 10};
  });

  Future navigateToPantryPage(context) async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return pantrypage();
      }),
    );
  }

  Widget _listItem(index) {
    return Container(
      padding: const EdgeInsets.only(bottom: 1, top: 1),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Colors.black26))),
      child: Center(
        child: CheckboxListTile(
          title: Text(
            _itemData[index]['name'].toString(),
            style: const TextStyle(
              color: Color(0xFF78909C),
              fontSize: 18,
            ),
            textAlign: TextAlign.left,
          ),
          value: _isChecked,
          onChanged: (bool? value) {
            setState(() {
              _isChecked = value;
            });
          },
          activeColor: Color(0xFFff9f18),
          checkColor: Color(0xFF60bb63),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
      ),
      // trailing: Text(
      //   _peopleData[index]['age'].toString(),
      //   style: const TextStyle(fontSize: 8, color: Colors.purple),
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Center(
              child: Text(
                'R E C I P E G E N I E',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Color((0xFF60bb63)),
                ),
              ),
            ),
            elevation: 2,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 310.0,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.blueGrey[800],
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.blueGrey[50],
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15),
                          prefixIcon: IconButton(
                            iconSize: 23,
                            color: Color(0xFFff9f18),
                            onPressed: () {},
                            icon: Icon(Icons.search_sharp),
                          ),
                          hintText: "Search Ingredients",
                          // suffixIcon: IconButton(
                          //   iconSize: 23,
                          //   color: Color(0xFFff9f18),
                          //   onPressed: () {},
                          //   icon: Icon(Icons.search),
                          // ),
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
                      iconSize: 38,
                      onPressed: () {
                        // navigateToPantryPage(context);
                      },
                      color: Colors.blueGrey[700],
                      icon: Icon(Icons.edit_note),
                    ),
                  ],
                ),
              ),
              SizedBox.fromSize(
                size: Size(200, 40),
                child: ClipRRect(
                  child: Material(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Color(0xFFff9f18),
                    child: InkWell(
                      splashColor: Colors.blueGrey[50],
                      onTap: () {},
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // Icon(Icons.shopping_cart), // <-- Icon
                          Text(
                            "Search Recipes",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ), // <-- Text
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: width * 1,
                  height: height * 0.45,
                  decoration: BoxDecoration(
                    color: Color(0xFF60bb63),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: 150,
                            height: height * 0.45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                                border: Border.all(
                                  width: 3,
                                  color: Color(0xFFeeeee4),
                                )),
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    'Spices',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Colors.blueGrey[700],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                      itemCount: _itemData.length,
                                      itemBuilder: (_, index) {
                                        return _listItem(index);
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Container(
                  width: width * 1,
                  height: height * 0.22,
                  decoration: BoxDecoration(
                    color: Color(0xFF60bb63),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: 150,
                            height: height * 0.22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                                border: Border.all(
                                  width: 3,
                                  color: Color(0xFFeeeee4),
                                )),
                            child: Text(
                              'Spices',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.blueGrey[700],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          )),
    );
  }
}
