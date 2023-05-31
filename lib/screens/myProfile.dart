import 'package:flutter/material.dart';
import 'package:wahaj/widgets/custom_appbar.dart';
import 'package:wahaj/widgets/custom_navbar.dart';
import 'package:wahaj/screens/profile/components/body.dart';
class myProfileScreen extends StatelessWidget {
  static const String routeName = '/user';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => myProfileScreen(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'My Profile'),
      bottomNavigationBar: CustomNavBar(screen: routeName),
      //child: Image(
      // image: AssetImage('assetslWahaj logo 1 .png'),
      body: Body(),

    );

  }
}