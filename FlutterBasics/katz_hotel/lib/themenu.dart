import 'package:flutter/material.dart';

class KetzMenu extends StatelessWidget {
  final BuildContext context;

  KetzMenu(this.context);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: axisDirectionToAxis(AxisDirection.down),
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(222),
            ),
            child: Text("The Menu",
                style: TextStyle(
                    fontFamily: AutofillHints.addressCity,
                    fontSize: 35,
                    decoration: TextDecoration.overline,
                    backgroundColor: Colors.deepOrange)),
          ),
          MenuItem(
            title: "Creepy Spiders",
            onTap: () {
              showImagePopup(context, 'assets/spiders.jpg');
              spidersAreHere();
              // redirection to page with spiders
            },
          ),
          MenuItem(
            title: "Go see doctor Zalost?",
            onTap: () {
              showImagePopup(context, 'assets/doctor_zalost.jpg');
              doctorZalost();
              // redirection to the sad doctor
            },
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final Function onTap;

  MenuItem({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () => onTap(),
      hoverColor: const Color.fromARGB(0, 221, 109, 4),
      textColor: Colors.redAccent,
    );
  }
}

void showImagePopup(BuildContext context, String imagePath) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        title: const Text('Creepy Spiders'),
        children: [
          Image(
            height: 300.0, // Adjust height as needed
            width: 300.0, // Adjust width as needed
            image: AssetImage(imagePath),
          ),
        ],
      );
    },
  );
}

void spidersAreHere() {
  print("spiders!! run");
}

void doctorZalost() {
  print("I am sad and all will be sad!");
}
