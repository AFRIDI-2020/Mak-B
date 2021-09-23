import 'package:flutter/material.dart';

class RefferredPeople extends StatefulWidget {
  const RefferredPeople({Key? key}) : super(key: key);

  @override
  _RefferredPeopleState createState() => _RefferredPeopleState();
}

class _RefferredPeopleState extends State<RefferredPeople> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
    );
  }
}
