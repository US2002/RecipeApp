import 'package:flutter/material.dart';

class nutritionDetails extends StatefulWidget {
  const nutritionDetails({super.key});

  @override
  State<nutritionDetails> createState() => _nutritionDetailsState();
}

class _nutritionDetailsState extends State<nutritionDetails> {
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
          child: Padding(
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
                  "Nutrition Photo",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF455A64)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
