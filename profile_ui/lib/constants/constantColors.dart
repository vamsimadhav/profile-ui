import 'package:flutter/material.dart';

final kBlueBlack = Color(0xff09031D);
final kWhite  = Color(0xffffffff);
final kGrey = Color(0xff636367);
final kGreyBlack = Color(0xff202125);
final kTextButton = Color(0xffff9820);
final kWhiteGrey = Color(0xffc4c4c4);

final kGradColor = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.05,0.99],
    colors: [
      Colors.black87,
      kGrey,
    ],
  ),
);

final kGradContColor = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.05,0.99],
    colors: [
      kGrey,
      kGreyBlack,

    ],
  ),
);