import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:recipe_genie/pages/nutritions.dart';

class recipeDetails extends StatefulWidget {
  const recipeDetails({super.key});

  @override
  State<recipeDetails> createState() => _recipeDetailsState();
}

class _recipeDetailsState extends State<recipeDetails> {
  Future navigateToNutritiontPage(context) async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return nutritionDetails();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width,
                    height: height * 0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        border: Border.all(
                          width: 3,
                          color: Color(0xFF60bb63),
                        )),
                    child: const Center(
                      child: Text(
                        "Dish Photo",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF455A64)),
                      ),
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    "Dish Name",
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFFff9f18)),
                  ),
                ),
                DropShadow(
                  blurRadius: 2,
                  offset: const Offset(3, 3),
                  spread: 1,
                  child: SizedBox.fromSize(
                    size: Size(200, 40),
                    child: ClipRRect(
                      child: Material(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Color(0xFF60bb63),
                        child: InkWell(
                          splashColor: Colors.blueGrey[50],
                          onTap: () {
                            navigateToNutritiontPage(context);
                          },
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // Icon(Icons.shopping_cart), // <-- Icon
                              Text(
                                "Nutrition Details",
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
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width,
                    height: height, //!Comment it out when using this container
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        border: Border.all(
                          width: 3,
                          color: Color(0xFF60bb63),
                        )),
                    child: const Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Instructions",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF455A64)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
