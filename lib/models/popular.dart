


class Popular {
  String imagepath;
  String locationName;
  String address;
  String kilometre;

  Popular({required this.imagepath,required this.address,required this.kilometre,required this.locationName});
}

List<Popular> populars = [
  Popular(imagepath: 'assets/images/eifel.png', address: 'Eifiel Tower', kilometre: '2450 km', locationName: 'Paris'),
  Popular(imagepath: 'assets/images/china.jpg', address: 'Beautiful china', kilometre: '2450 km', locationName:'China'),

];