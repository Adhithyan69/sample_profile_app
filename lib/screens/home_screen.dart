import 'package:flutter/material.dart';
import 'package:sample_profile_app/core.dart';
import 'package:sample_profile_app/screens/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarClr,
        title: Text(
          'Welcome to flutter internship',
          style: TextStyle(fontFamily: ft, color: Colors.black),
        ),
      ),
      body: Center(child: MaterialButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
          },
              color: buttonClr,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: SizedBox(
          width: 95,
          child: Row(
            children: [
              Text('View Profile',style: TextStyle(fontFamily: ft, color: appbarClr)),
              SizedBox(width: 5,),
              Icon(Icons.arrow_forward_ios_outlined,color: appbarClr,size: 15,)
            ],
          ),
        ),
      )),
    );
  }
}
