import 'package:flutter/material.dart';
import 'package:katz_hotel/themenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "KETZ MOTEL",
          style: TextStyle(
            color: Color.fromARGB(3, 3, 3, 3),
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(child: KetzMenu(context)),
      body: const Center(
        child: Image(
          height: 35000,
          width: 60000,
          image: AssetImage('assets/ketz_hello.jpg'),
        ),
      ),
      backgroundColor: Color.fromARGB(253, 185, 8, 67),
    );
  }

  void showImagePopup(BuildContext context, String imagePath) {
    // String? picky;
// if (context == y){
//   picky == y
// } to make logic that based on the context shows custom messege wether that be dr. zalost or spiders

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text("picky"),
          children: [
            Image(
              height: 30.0, // Adjust height as needed
              width: 30.0, // Adjust width as needed
              image: AssetImage(imagePath),
            ),
          ],
        );
      },
    );
  }
}

void spiders_are_here() {
  // Your spiders_are_here logic
}

void doctor_Zalost() {
  // Your doctor_Zalost logic
}
