class Guests {
  String? name;
  String? mobile;

  Guests({this.name, this.mobile});
//get data from json
  Guests.fromJson(Map<String, dynamic> map) {
    this.name = map['name'];
    this.mobile = map['mobile'];
  }
}
