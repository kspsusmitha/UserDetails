import 'package:flutter/material.dart';
import '../model/user.dart';

class UserDetailScreen extends StatelessWidget {
  final User user;

  const UserDetailScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 201, 236, 195),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 113, 196, 100),
        title: Text(
          user.name,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-vector/isolated-young-handsome-man-set-different-poses-white-background-illustration_632498-649.jpg",
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                user.name,
                style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
              ),
              SizedBox(height: 20),
              Text(
                'Username',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                user.username,
                style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
              ),
              SizedBox(height: 20),
              Text(
                'Email',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                user.email,
                style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
              ),
              SizedBox(height: 20),
              Text(
                'Phone',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                user.phone,
                style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
              ),
              SizedBox(height: 20),
              Text(
                'Website',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                user.website,
                style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
              ),
              SizedBox(height: 20),
              Text(
                'Address',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '${user.address.street}, ${user.address.suite}, ${user.address.city}, ${user.address.zipcode}',
                style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
              ),
              Text(
                'Geo: (${user.address.geo.lat}, ${user.address.geo.lng})',
                style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
              ),
              SizedBox(height: 20),
              Text(
                'Company',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                user.company.name,
                style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
              ),
              Text(
                user.company.catchPhrase,
                style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
              ),
              Text(
                user.company.bs,
                style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
