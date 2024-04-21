import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moral_app/screens/login/login_screen.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask A Question'),
        centerTitle: true,
      ), 
      drawer: const NavigationDrawer(),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding:EdgeInsets.all(20),
          ),
          child: Text('Submit'),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> LoginScreen() ),
            );
          },
        ),
      )
    );
  }
}

class NavigationDrawer extends StatelessWidget{
  const NavigationDrawer({Key? key}) : super(key:key);

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
      top:MediaQuery.of(context).padding.top,
    ),
  );
  Widget buildMenuItems(BuildContext context) => Column(
    children: [
      ListTile(
        // leading: const Icon(Icons.home_outlined),
        title: const Text('Home'),
        onTap: ()=>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const Home(),
            )),
      ),
      ListTile(
        // leading: const Icon(Icons.favorite_border),
        title: const Text('About Us'),
        onTap: () {},
      ),
       ListTile(
        // leading: const Icon(Icons.favorite_border),
        title: const Text('View Past Questions'),
        onTap: () {},
      ),
       ListTile(
        // leading: const Icon(Icons.favorite_border),
        title: const Text('Sign Out'),
        onTap: ()=>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            )),
      )
    ],
  );

    // TODO: implement build
}