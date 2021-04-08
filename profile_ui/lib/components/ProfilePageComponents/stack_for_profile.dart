import 'package:flutter/material.dart';

import '../../profileView.dart';
import 'image_avatar.dart';

class StackForProfile extends StatelessWidget {
  const StackForProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          ProfileView(),
          Positioned(
            top: 150,
            left: 20,
            child: ImageAvatar(),
          ),
        ],
      ),
    );
  }
}