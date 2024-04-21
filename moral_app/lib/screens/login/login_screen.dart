import 'package:flutter/material.dart';
import 'package:moral_app/home.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('DAN'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding:EdgeInsets.all(20),
          ),
          child: Text('LOG IN'),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> Home() ),
            );
          },
        ),
      )
    );
  }
}