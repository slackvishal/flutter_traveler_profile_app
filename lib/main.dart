
import 'package:flutter/material.dart';
import 'package:flutter_traveler_profile_app/SizeConfig.dart';
import 'package:flutter_traveler_profile_app/home.dart';
import 'package:flutter_traveler_profile_app/notifications.dart';
import 'package:flutter_traveler_profile_app/profilefirst.dart';
import 'package:flutter_traveler_profile_app/profilesecond.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: ProfileHome(),
            );
          },
        );
      },
    );
  }
}

class ProfileHome extends StatefulWidget {
  ProfileHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfileHomeState createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> with SingleTickerProviderStateMixin{

  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Notifications(),
    ProfileSecond(),
    ProfileFirst(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 10 * SizeConfig.heightMultiplier,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
        ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8),
            child: GNav(
                gap: 6,
                activeColor: Colors.white,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                duration: Duration(milliseconds: 800),
                tabBackgroundColor: Colors.blue,
                tabs: [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: LineIcons.bell,
                    text: 'Notifications',
                  ),
                  GButton(
                    icon: LineIcons.calendar,
                    text: 'Trips',
                  ),
                  GButton(
                    icon: LineIcons.user,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                }),
          ),
        ),
      ),

    );
  }
}
