import 'package:flutter/material.dart';
import 'package:linkable/linkable.dart';
import 'package:linkable/user_model.dart';

void main() => runApp(new LinkableExample());

class LinkableExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Linkable example',
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Linkable(
                users: [
                  UserModel(name: 'Michael Okhaimoh', id: '2'),
                  UserModel(name: 'Michael grey', id: '20'),
                ],
                onOpen: (user) {
                  print(user.id);
                },
                onTap: () {
                  print('tapped');
                },
                text:
                    "Hi!\nI'm Anup.\n\nYou can email me at 1anuppanwar@gmail.com.\nOr just whatsapp me @ +91-8968894728.\n\nFor more info visit: \ngithub.com/anupkumarpanwar \nor\nhttps://www.linkedin.com/in/anupkumarpanwar/ \n@Michael Okhaimoh   \n\n @michael grey",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('homePAGE'),
    );
  }
}
