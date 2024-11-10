import 'package:apiuserrandom/Providers/UserRandomProvider.dart';
import 'package:apiuserrandom/Weidgets/UserRandomCustome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserRandomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "User Random",
          style: TextStyle(color: Colors.green),
        ),
        backgroundColor: Colors.black,
      ),
      body: Consumer<UserRandomProvider>(
        builder: (context, objectprovider, child) {
          var objectmodel = objectprovider.userrandommodel;

          if (objectmodel == null) {
            
            objectprovider.getalldata();
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: objectmodel.results.length,
              itemBuilder: (context, index) {
                var user = objectmodel.results[index];

                
                String name = user["name"]["first"] ?? "No Name";
                String email = user["email"] ?? "No Email";
                String phone = user["phone"] ?? "No Phone";
                String image = user["picture"]["thumbnail"] ??
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfPadMIsHgHdhz8hO_WCoLj-aedbKy4UJRlg&s";

                return UserRandomCustome(
                  Name: name,
                  Email: email,
                  Phone: phone,
                  image: image,
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
          Provider.of<UserRandomProvider>(context, listen: false).getalldata();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
