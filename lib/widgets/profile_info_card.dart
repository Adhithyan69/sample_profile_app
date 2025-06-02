import 'package:flutter/material.dart';
import 'package:sample_profile_app/core.dart';

Widget profileInfoCard({required String title, required String subTitle}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Material(
      shadowColor: Colors.grey,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 22),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Text(
              "$title : ",
              style: TextStyle(color: Colors.grey.shade500),
            ),
            Text(
              subTitle,
              style: TextStyle(color: buttonClr),
            ),
          ],
        ),
      ),
    ),
  );
}
