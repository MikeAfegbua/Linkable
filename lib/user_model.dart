// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  String? connectId;
  String? id;
  String? name;
  String? email;

  @override
  List<Object?> get props => [id];
  UserModel({
    this.connectId,
    this.name,
    this.id,
    this.email,
  });

  UserModel.fromJson(Map<String, dynamic> json, {String? connectID}) {
    if (json.isNotEmpty) {
      connectId = connectID ?? "";
      id = json['id'];

      name = json['name'];
      email = json['email'];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['name'] = name;
    data['email'] = email;

    return data;
  }
}
