import 'package:flutter/material.dart';

class UserModel{
  final int? id;
  final String? name;
  final String? phone;
  UserModel({required this.id , required this.name , required this.phone});
}

class UserScreen extends StatelessWidget {

  List<UserModel> users = [
    UserModel(id: 1, name: 'mahir Mokhtar', phone: '0910000'),
    UserModel(id: 1, name: 'abdo Mokhtar', phone: '90000'),
    UserModel(id: 1, name: 'ali Mokhtar', phone: '898989'),
    UserModel(id: 1, name: 'mohamed Mokhtar', phone: '0910000'),
    UserModel(id: 1, name: 'ahmed Mokhtar', phone: '989080'),
    UserModel(id: 1, name: 'mona Mokhtar', phone: '2323'),
    UserModel(id: 1, name: 'ali Mokhtar', phone: '333223'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Users'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey[200],
          ),
          itemCount: users.length,
        ));
  }

  Widget buildUserItem(UserModel user) => Card(
    elevation: 1,
    child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
               CircleAvatar(
                radius: 30,
                child: Text(
                  '${user.id}',
                  style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children:  [
                  Text(
                    '${user.name}',
                    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${user.phone}',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
  );
}
