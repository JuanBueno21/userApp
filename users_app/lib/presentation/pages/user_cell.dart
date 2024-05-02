import 'package:flutter/material.dart';
import '../../domain/models/user.dart';

class UserCell extends StatelessWidget {
  static const name = "user-cell";
  final User user;

  const UserCell({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
      child: Card(
        elevation: 5.0,
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.people),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(user.name),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.mail),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(user.email),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.web),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(user.website),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
