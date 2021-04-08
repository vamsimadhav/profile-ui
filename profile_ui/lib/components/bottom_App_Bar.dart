import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabBarMaterialWidget extends StatefulWidget {
  @override
  _TabBarMaterialWidgetState createState() => _TabBarMaterialWidgetState();
}

class _TabBarMaterialWidgetState extends State<TabBarMaterialWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8,
      color: Color(0xff08080a),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildItemBottomBar(
              index: 0,
              icon: SvgPicture.asset('assets/icons/home.svg'),
              onPressed: () {}),
          buildItemBottomBar(
              index: 1,
              icon: SvgPicture.asset('assets/icons/search.svg'),
              onPressed: () {}),
          buildItemBottomBar(
              index: 2,
            icon: SvgPicture.asset('assets/icons/pluscircle.svg'),
              onPressed: () {}),
          buildItemBottomBar(
              index: 3,
            icon: SvgPicture.asset('assets/icons/fourm.svg'),
              onPressed: () {}),
          buildItemBottomBar(
              index: 4,
            icon: SvgPicture.asset('assets/icons/activity.svg'),
              onPressed: () {}),
        ],
      ),
    );
  }
}

Widget buildItemBottomBar(
    {@required int index, @required Widget icon,  Color clr, @required Function onPressed}) {
  return IconButton(
    icon: icon,
    onPressed: onPressed,
    color: clr,
  );
}
