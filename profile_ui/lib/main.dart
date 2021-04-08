import 'package:flutter/material.dart';
import 'components/ProfilePageComponents/stack_for_profile.dart';
import 'constants/constantColors.dart';
import 'components/bottom_App_Bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<String> posts = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
    'assets/images/7.png',
    'assets/images/8.png',
    'assets/images/9.png',
    'assets/images/10.png',
    'assets/images/11.png',
    'assets/images/12.png',
    'assets/images/13.png',
    'assets/images/14.png',
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
    'assets/images/7.png',
    'assets/images/8.png',
    'assets/images/9.png',
    'assets/images/10.png',
    'assets/images/11.png',
    'assets/images/12.png',
    'assets/images/13.png',
    'assets/images/14.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: kGradColor,
        ),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.message_rounded),
            onPressed: () {},
          ),
          IconButton(icon: Icon(Icons.more_horiz_rounded), onPressed: () {})
        ],
      ),
      bottomNavigationBar: TabBarMaterialWidget(),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, isScolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.white,
                collapsedHeight: 380,
                expandedHeight: 380,
                flexibleSpace: StackForProfile(),
              ),
              SliverPersistentHeader(
                delegate: MyDelegate(TabBar(
                  tabs: [
                    Tab(icon:Icon(Icons.info_outline_rounded)),
                    Tab(icon: Icon(Icons.grid_on)),
                    Tab(icon: Icon(Icons.group_rounded)),
                  ],
                  indicatorColor: Colors.redAccent,
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.blueAccent,
                )),
                floating: true,
                pinned: true,
              )
            ];
          },
          body: TabBarView(
            children: [1, 2, 3]
                .map((tab) => GridView.count(
                      physics: BouncingScrollPhysics(),
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      mainAxisSpacing: 2.0,
                      crossAxisSpacing: 2.0,
                      children: posts
                          .map((e) => Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(e),
                                        fit: BoxFit.fill)),
                              ))
                          .toList(),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  MyDelegate(this.tabBar);
  final TabBar tabBar;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color(0xff202125),
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
