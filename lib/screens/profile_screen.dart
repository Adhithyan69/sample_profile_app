
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_profile_app/widgets/profile_info_card.dart';
import '../core.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: appbarClr,
        centerTitle: true,
        title: Text(
          'My Profile',
          style: TextStyle(fontFamily: ft, color: Colors.black),
        ),
      ),
      body: _isLoading
          ? Center(child: CupertinoActivityIndicator())
          : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('lib/assets/images/userIcon3.jpg'),
          ),
          SizedBox(height: 20),
          profileInfoCard(title: 'Name', subTitle: ' Adhithyan'),
          profileInfoCard(title: 'Email', subTitle: ' aadhiadhithyan001@gmail.com'),
          profileInfoCard(title: 'Ph', subTitle: ' 7902262171'),
          SizedBox(height: 50,),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: buttonClr,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: SizedBox(
              width: 85,
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios_outlined,color: appbarClr,size: 15,),
                  SizedBox(width: 5,),
                  Text('Go Back',style: TextStyle(fontFamily: ft, color: appbarClr)),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
