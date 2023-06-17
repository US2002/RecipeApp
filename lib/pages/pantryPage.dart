import 'dart:math';
import 'package:flutter/material.dart';

class pantrypage extends StatefulWidget {
  const pantrypage({super.key});

  @override
  State<pantrypage> createState() => _pantrypageState();
}

class _pantrypageState extends State<pantrypage> {
  bool? _isChecked = true;
  final List _itemData = List.generate(1000, (index) {
    return {"name": "Item", "age": Random().nextInt(90) + 10};
  });
  Widget _listItem(index) {
    return Container(
      // padding: const EdgeInsets.only(bottom: 1, top: 1),
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
          activeColor: Colors.white,
          checkColor: Color(0xFF60bb63),
          controlAffinity: ListTileControlAffinity.leading,
          // tristate: true,
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
        appBar: AppBar(
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF60bb63),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'R E C I P E G E N I E',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Color(0xFF60bb63),
            ),
          ),
          elevation: 2,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: width,
                  child: TextField(
                    style: TextStyle(
                      color: Colors.blueGrey[800],
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blueGrey[50],
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15),
                      suffixIcon: IconButton(
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
              ),
              // Center(
              //   child: SizedBox.fromSize(
              //     size: Size(200, 40),
              //     child: ClipRRect(
              //       child: Material(
              //         borderRadius: BorderRadius.circular(50.0),
              //         color: Color(0xFFff9f18),
              //         child: InkWell(
              //           splashColor: Colors.blueGrey[50],
              //           onTap: () {},
              //           child: const Column(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: <Widget>[
              //               // Icon(Icons.shopping_cart), // <-- Icon
              //               Text(
              //                 "Search Ingredients",
              //                 style: TextStyle(
              //                     fontWeight: FontWeight.w900,
              //                     color: Colors.white),
              //               ), // <-- Text
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: width * 1,
                  height: height,
                  // decoration: BoxDecoration(
                  //   color: Color(0xFF60bb63),
                  //   borderRadius: BorderRadius.circular(15.0),
                  // ),
                  child: ListView.builder(
                      itemCount: _itemData.length,
                      itemBuilder: (_, index) {
                        return _listItem(index);
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
