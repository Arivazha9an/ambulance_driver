class Location {
  String? placeName;
  String? placeAddress;
  String? mapplsPin;

  Location({this.placeName, this.placeAddress, this.mapplsPin});

  Location.fromJson(Map<String, dynamic> json) {
    placeName = json['placeName'];
    placeAddress = json['placeAddress'];
    mapplsPin = json['mapplsPin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['placeName'] = this.placeName;
    data['placeAddress'] = this.placeAddress;
    data['mapplsPin'] = this.mapplsPin;
    return data;
  }
}
//