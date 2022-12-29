


class Popular {
  String imagepath;
  String locationName;
  String address;
  String kilometre;

  Popular({required this.imagepath,required this.address,required this.kilometre,required this.locationName});
}

List<Popular> populars = [
  Popular(imagepath: 'assets/images/habib_bourguiba.jpg', address: 'Mausoleum Of Habib Bourguiba', kilometre: '2450 km', locationName: 'Monastir'),
  Popular(imagepath: 'assets/images/caption.jpg', address: 'Ribat of monastir', kilometre: '2450 km', locationName:'Monastir'),
  Popular(imagepath: 'assets/images/Yasmina-Center.jpg', address: 'Yasmina Center', kilometre: '2450 km', locationName:'Monastir'),
  Popular(imagepath: 'assets/images/marina.jpg', address: 'Marina Cap Monastir', kilometre: '2450 km', locationName:'Monastir'),
];