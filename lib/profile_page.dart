import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Profile'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // background image and bottom contents
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: new AssetImage("assets/images/1.png"),
                  fit: BoxFit.cover,
                )),
                height: 200.0,
              ),
            ],
          ),
          // Profile image
          Positioned(
            top: 200.0, // (background container size) - (circle height / 2)
            child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: new AssetImage("assets/images/2.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            top: 225,
            child: Row(
              children: [
                Text(
                  'Greetings, Welcome to the Musayi Admin Panel.',
                  style: TextStyle(
                    fontSize: 40,
                    height: 5,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
