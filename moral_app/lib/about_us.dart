import 'package:flutter/material.dart';
import 'package:moral_app/home.dart';
import 'package:moral_app/screens/login/login_screen.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: const Color.fromRGBO(232, 228, 214, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(235, 204, 102, 1),
          title: const Text('Meet the Developers'),
          centerTitle: true,
        ),
        drawer: const NavigationDrawer(),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                child: ElevatedButton(
                  //  TODO: change where button is
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Text('Ask Another Question'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                ),
              ),
              Container(
                  child: const Image(
                image: AssetImage(
                  'images/robot.png',
                ),
              ))
            ],
          ),
        ));

    // body: Center(
    //   child: ElevatedButton(
    //     style: ElevatedButton.styleFrom(
    //       padding: const EdgeInsets.all(20),
    //     ),
    //     child: const Text('Ask Another Question'),
    //     onPressed: () {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => Home()),
    //       );
    //     },
    //   ),
    // ));
  }
}

//this controls the side navigation bar and what buttons go to where
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
              builder: (context) => LogIN(),
            )),
          )
        ],
      );

  // TODO: implement build
}
