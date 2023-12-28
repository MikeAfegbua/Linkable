import 'user_model.dart';

class Link {
  RegExpMatch regExpMatch;
  String type;
  UserModel? user;

  Link({required this.regExpMatch, required this.type, this.user});
}
