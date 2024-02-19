void main() {
  print("Welcome to the party! Mystery Inc!");
  print("What monsters are we hunting today?");
  List<String> myGuests = ["Velma", "Shaggy", "ScoobyDo", "Daphny", "Fred"];
  print(myGuests);
  print("Lets add a creepy monster to the party");
  myGuests.add("CreepyMonster1");
  print(myGuests);
  print("What place is Fred in the list??");
  int whereIsFred = myGuests.indexOf("Fred");
  print("Fred is at $whereIsFred");
}
