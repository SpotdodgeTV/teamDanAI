import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moral_app/about_us.dart';
import 'package:moral_app/login_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // Sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(232, 228, 214, 1),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: signUserOut, 
              icon: Icon(Icons.logout)
              )
            ],
          backgroundColor: const Color.fromRGBO(235, 204, 102, 1),
          title: const Text('Ask A Question'),
          centerTitle: true,
        ),
        drawer: const NavigationDrawer(),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
            ),
            child: const Text('Submit'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  LogIN()),
              );
            },
          ),
          
        )
      );
  }
}



class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );
  Widget buildMenuItems(BuildContext context) => Column(
        children: [
          ListTile(
            // leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () =>
                Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const Home(),
            )),
          ),
          ListTile(
            // leading: const Icon(Icons.favorite_border),
            title: const Text('About Us'),
            onTap: () =>
                Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const AboutUs(),
            )),
          ),
          ListTile(
            // leading: const Icon(Icons.favorite_border),
            title: const Text('View Past Questions'),
            onTap: () {},
          ),
          ListTile(
            // leading: const Icon(Icons.favorite_border),
            title: const Text('Sign Out'),
            onTap: () =>
                Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) =>  LogIN(),
            )),
          )
        ],
      );

  // TODO: implement build
}
