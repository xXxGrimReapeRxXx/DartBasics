import 'package:flutter/material.dart';

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
                showImagePopup(context, 'assets/ketz_hello.jpg');
                spiders_are_here();

                //redirection to page with spiders
              },
              hoverColor: const Color.fromARGB(0, 221, 109, 4),
              textColor: Colors.redAccent,
            ),
            ListTile(
              title: const Text("Go see doctor Zalost?"),
              onTap: () {
                doctor_Zalost();
                // redirection to the sad doctor
              },
              hoverColor: const Color.fromARGB(0, 221, 109, 4),
              textColor: Colors.redAccent,
            ),
          ],
        ),
      ),
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
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Creepy Spiders'),
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
