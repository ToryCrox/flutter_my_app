


import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';


@JsonSerializable(explicitToJson: true)
class User{

  String name;
  String email;
  Address address;

  User(this.name, this.email, this.address);


  @override
  String toString() {
    return 'User{name: $name, email: $email, address: $address}';
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Address{
  String city;
  String street;

  Address(this.city, this.street);

  @override
  String toString() {
    return 'Address{city: $city, street: $street}';
  }

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}