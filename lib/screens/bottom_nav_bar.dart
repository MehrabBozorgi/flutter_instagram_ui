import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/screens/profile_screen.dart';
import 'package:flutter_instagram_ui/screens/reels_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'add_post_screen.dart';
import 'explore_screen.dart';
import 'first_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const FirstScreen(),
      ExploreScreen(),
      Container(),
      const ReelsScreen(),
       ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          inactiveIcon: const Icon(Icons.home_outlined),
          activeColorPrimary: Colors.grey.shade800,
          iconSize: 28),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.search_rounded),
          inactiveIcon: const Icon(Icons.search_outlined),
          activeColorPrimary: Colors.grey.shade800,

          iconSize: 28),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.add_box_rounded),
          inactiveIcon: const Icon(Icons.add_box_outlined),
          activeColorPrimary: Colors.grey.shade800,
          onPressed: (p0) {

            Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 400),
                pageBuilder: (context, _, __) =>   AddPostScreen(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                    position: animation.drive(
                      Tween<Offset>(
                        begin: const Offset(1.0, 0.0),
                        end: const Offset(0.0, 0.0),
                      ),
                    ),
                    child: child,
                  );
                },
              ),
            );


          },
          iconSize: 28),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.video_collection),
          inactiveIcon: const Icon(Icons.video_collection_outlined),
          activeColorPrimary: Colors.grey.shade800,
          iconSize: 28),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          inactiveIcon: const Icon(Icons.person_outline),
          activeColorPrimary: Colors.grey.shade800,
          iconSize: 28),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}
