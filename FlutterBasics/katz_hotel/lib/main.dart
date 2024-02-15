import 'package:flutter/material.dart';
import 'package:katz_hotel/themenu.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    home: Scaffold(
      appBar: AppBar(
          title: const Text(
              style: TextStyle(
                  color: Color.fromARGB(3, 3, 3, 3),
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
              "KETZ MOTEL"),
          centerTitle: true),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(222),
              ),
              child: Text("The Menu"),
            ),
            ListTile(
              title: const Text("Creepy Spiders"),
              onTap: () {
                spiders_are_here();
                //redirection to page with spiders
              },
              hoverColor: const Color.fromARGB(0, 221, 109, 4),
            ),
             ListTile(
              title: const Text("Go see doctor Zalost?"),
              onTap: () {
                doctor_Zalost();
              },
              hoverColor: const Color.fromARGB(0, 221, 109, 4),
              textColor: Colors.redAccent,
            )
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(155.155),
        child: Text("Welcome to Ketz Motel!"),
      ),
      backgroundColor: Color.fromARGB(253, 185, 8, 67),
      // bottomNavigationBar: AlertDialog(
      //     content: Align(
      //   widthFactor: 10.0,
      //   heightFactor: 10.0,
      // )),
    ),
  ));
}

// String? spiders_are_here() {
//   print("spiders!! run");
// }
