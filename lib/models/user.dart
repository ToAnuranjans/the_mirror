class User {
  String guid;
  String picture;
  int age;
  Name name;
  String company;
  String email;
  String phone;
  String address;
  String about;
  DateTime registered;

  User(
      {this.guid,
      this.picture,
      this.age,
      this.name,
      this.company,
      this.email,
      this.phone,
      this.address,
      this.about});

  factory User.fromJson(Map<String, dynamic> json) {
    print(json);
    return User(
      guid: json["guid"],
      picture: json["picture"],
      age: json["age"],
      name: Name.fromJson(json["name"]),
      company: json["company"],
      email: json["email"],
      phone: json["phone"],
      address: json["address"],
      about: json["about"],
    );
  }
}

class Name {
  String first;
  String last;

  Name({this.first, this.last});

  factory Name.fromJson(Map<String, dynamic> json) {
    print(json);
    return Name(first: json["first"], last: json["last"]);
  }
}
