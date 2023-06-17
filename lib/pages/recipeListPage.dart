import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:recipe_genie/pages/recipeDetails.dart';

class recipesList extends StatefulWidget {
  const recipesList({super.key});

  @override
  State<recipesList> createState() => _recipesListState();
}

class _recipesListState extends State<recipesList> {
  Future navigateToDetailsPage(context) async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return recipeDetails();
      }),
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
                      hintText: "Search Recipes",
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    DropShadow(
                      blurRadius: 2,
                      offset: const Offset(3, 3),
                      spread: 1,
                      child: SizedBox.fromSize(
                        size: Size(width, height * 0.22),
                        child: ClipRRect(
                          child: Container(
                            // borderRadius: BorderRadius.circular(20.0),
                            // color: Color(0xFFff9f18),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                                border: Border.all(
                                  width: 3,
                                  color: Color(0xFF60bb63),
                                )),
                            child: InkWell(
                              splashColor: Colors.blueGrey[50],
                              onTap: () {
                                navigateToDetailsPage(context);
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  // Icon(Icons.shopping_cart), // <-- Icon
                                  Text(
                                    "Recipe 1",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF455A64)),
                                  ), // <-- Text
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    DropShadow(
                      blurRadius: 2,
                      offset: const Offset(3, 3),
                      spread: 1,
                      child: SizedBox.fromSize(
                        size: Size(width, height * 0.22),
                        child: ClipRRect(
                          child: Container(
                            // borderRadius: BorderRadius.circular(20.0),
                            // color: Color(0xFFff9f18),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                                border: Border.all(
                                  width: 3,
                                  color: Color(0xFF60bb63),
                                )),
                            child: InkWell(
                              splashColor: Colors.blueGrey[50],
                              onTap: () {
                                navigateToDetailsPage(context);
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  // Icon(Icons.shopping_cart), // <-- Icon
                                  Text(
                                    "Recipe 2",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF455A64)),
                                  ), // <-- Text
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    DropShadow(
                      blurRadius: 2,
                      offset: const Offset(3, 3),
                      spread: 1,
                      child: SizedBox.fromSize(
                        size: Size(width, height * 0.22),
                        child: ClipRRect(
                          child: Container(
                            // borderRadius: BorderRadius.circular(20.0),
                            // color: Color(0xFFff9f18),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                                border: Border.all(
                                  width: 3,
                                  color: Color(0xFF60bb63),
                                )),
                            child: InkWell(
                              splashColor: Colors.blueGrey[50],
                              onTap: () {
                                navigateToDetailsPage(context);
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  // Icon(Icons.shopping_cart), // <-- Icon
                                  Text(
                                    "Recipe 3",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF455A64)),
                                  ), // <-- Text
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    DropShadow(
                      blurRadius: 2,
                      offset: const Offset(3, 3),
                      spread: 1,
                      child: SizedBox.fromSize(
                        size: Size(width, height * 0.22),
                        child: ClipRRect(
                          child: Container(
                            // borderRadius: BorderRadius.circular(20.0),
                            // color: Color(0xFFff9f18),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                                border: Border.all(
                                  width: 3,
                                  color: Color(0xFF60bb63),
                                )),
                            child: InkWell(
                              splashColor: Colors.blueGrey[50],
                              onTap: () {
                                navigateToDetailsPage(context);
                              },
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  // Icon(Icons.shopping_cart), // <-- Icon
                                  Text(
                                    "Recipe 4",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF455A64)),
                                  ), // <-- Text
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
