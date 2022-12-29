class Choice {
  String imagepath;
  String choiceName;
  bool isClicked ;
  Choice({required this.imagepath, required this.choiceName,required this.isClicked});
}

List<Choice> choices = [
  Choice(imagepath: 'assets/images/red-fort.png', choiceName: 'Places', isClicked: true),
  Choice(imagepath: 'assets/images/exchange-pngrepo-com.png', choiceName: 'Exchange', isClicked: false),
  Choice(imagepath: 'assets/images/train.png', choiceName: 'Trains', isClicked: false),
  Choice(imagepath: 'assets/images/bus-stop.png', choiceName: 'Buses', isClicked: false),
  Choice(imagepath: 'assets/images/taxi.png', choiceName: 'Taxi', isClicked: false),
  Choice(imagepath: 'assets/images/map-pngrepo-com.png', choiceName: 'Locations', isClicked: false),
];
