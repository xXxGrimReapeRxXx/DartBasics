void main() {
  print(howMuchYouBench(155, squat_kilos: 55));
  // so we need explicidly to tell that the second variable squat_kilos has certain value assigned to it
  // we can not just say howMuchYouBench(155,55);

  print(howMuchYouBoat(kilos: 45, boated: 22));
}

howMuchYouBench(int kilos, {int squat_kilos = 45}) {




  
  return "Woah you bench ! $kilos kgs! nice!,\t\t\n but you squat only $squat_kilos ?!... bad";
}

// this way we can call the function with values in different order as long as we give them names
howMuchYouBoat({int? kilos, int? boated}) {
  String answer =
      'Woah you boat ! $kilos kgs! nice!,\t\t\n but you squat only $boated ?!... bad';
  return answer;
}
