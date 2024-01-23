import 'dart:io';

void main() {
  print("Hello knight!");
  print("Current Health: ${healthbar(40)}");
  print(
      "Pick your weapon!\n 1. Old axe \n 2. Dragonslayer sword \n 3. A magick rock");

  String? weaponpick = stdin.readLineSync();
  String? chosenWeapon = myweapon(weaponpick);

  if (chosenWeapon != null) {
    print("You picked: $chosenWeapon");
  } else {
    print("Invalid weapon choice. Please pick a valid option (1, 2, or 3).");
  }
}

int healthbar(int damage) {
  int currentHP = 100;
  currentHP -= damage;
  return currentHP;
}

int eatmeal() {
  print("What a delicious stake! I can feel my energy rizing!");
  currentHP += 10;
}

String? myweapon(String? weaponpick) {
  String? weapon;

  switch (weaponpick) {
    case "1":
      print("Wow amazing! An axe made from dwarfs!");
      weapon = "Old axe";
      break;
    case "2":
      print("The legend says it was used to slay 10 dragons...");
      weapon = "Dragonslayer sword";
      break;
    case "3":
      print("Some wizard forgot about this...");
      weapon = "Magick rock";
      break;
    default:
      print("Invalid option. Please pick a valid option (1, 2, or 3).");
  }

  return weapon;
}
