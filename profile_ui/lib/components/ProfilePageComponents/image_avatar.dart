import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        backgroundColor: Colors.black,
        radius: 60.0,
        child: Container(
          height: 160,
          width: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/avatar1.jpg'),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
          ),
        )
      ),
    );
  }
}