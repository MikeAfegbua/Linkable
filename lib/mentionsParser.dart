import 'package:linkable/constants.dart';
import 'package:linkable/link.dart';
import 'package:linkable/parser.dart';
import 'package:linkable/user_model.dart';
import 'package:collection/collection.dart';

typedef LinkCallback = void Function(UserModel userModel);

class MentionParser implements Parser {
  List<UserModel> users;
  String text;

  MentionParser(this.users, this.text);

  @override
  parse() {
    String pattern = r'@\w+(?:\s+\w+)*';

    RegExp regExp = RegExp(pattern, caseSensitive: false);

    Iterable<RegExpMatch> _allMatches = regExp.allMatches(text);
    List<Link> _links = <Link>[];

    for (RegExpMatch match in _allMatches) {
      final username = match.group(0)!.substring(1);

      final user = users.firstWhereOrNull((user) =>
          user.name!.toLowerCase().trim() == username.toLowerCase().trim());

      if (user != null) {
        _links.add(Link(regExpMatch: match, type: mention, user: user));
      } else {
        // Handle cases where the user is not found
      }
    }

    return _links;
  }
}
