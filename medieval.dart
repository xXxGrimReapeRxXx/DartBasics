void main() {
  print("Hello knight!");
  print(healthbar(40));
}

healthbar(int damage) {
  int currenthp = 100;
  currenthp = currenthp - damage;
  return currenthp;
}
