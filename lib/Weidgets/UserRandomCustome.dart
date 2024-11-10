import 'package:flutter/material.dart';

class UserRandomCustome extends StatelessWidget {
  final String Name;
  final String Email;
  final String Phone;
  final String image;

  UserRandomCustome({
    required this.Name,
    required this.Email,
    required this.image,
    required this.Phone,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      width: 400,
      height: 190,
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(image),
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name: $Name", style: TextStyle(fontSize: 16)),
              Text("Email: $Email", style: TextStyle(fontSize: 16)),
              Text("Phone: $Phone", style: TextStyle(fontSize: 16)),
            ],
          ),
        ],
      ),
    );
  }
}
