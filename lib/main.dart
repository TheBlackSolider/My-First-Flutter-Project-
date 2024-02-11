// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(240, 15, 74, 116),
        title: Text(
          "Knedall Profile",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.message,
          size: 30,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.wallet_giftcard,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30), // Adjusted spacing
            CircleAvatar(
              radius: 80, // Increased radius
              backgroundImage:
                  AssetImage('img/Ken phot.jpg'), // Add your image path here
            ),
            SizedBox(height: 10), // Adjusted spacing
            cardColor(Icons.person, "Name", "Kendall Roy"),
            SizedBox(height: 5), // Adjusted spacing
            cardColor(Icons.work, "Position", "CEO"),
            SizedBox(height: 5), // Adjusted spacing
            cardColor(Icons.phone, "Phone number", "(512) 990-0009"),
            SizedBox(height: 5), // Adjusted spacing
            cardColor(Icons.email, "Email", "kendall_roy@gmail.com"),
            SizedBox(height: 5), // Adjusted spacing
            cardColor(Icons.location_on, "Address", "USA - NYC"),
            SizedBox(height: 5), // Adjusted spacing
          ],
        ),
      ),
    );
  }

  Widget cardColor(IconData icon, String title, String subtitle) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Card(
        color: Color.fromARGB(240, 15, 74, 116),
        elevation: 4, // Add elevation to create a shadow effect
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(color: Colors.grey), // Add a border
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.black,
          ),
          title: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
