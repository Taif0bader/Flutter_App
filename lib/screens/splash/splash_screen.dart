import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/blocs.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    Timer(
       Duration(seconds: 1),
          () => Navigator.pushNamed(context, '/'),
     );

    // return BlocListener(
    //   // listenWhen: (previous, current) => previous.authUser != current.authUser,
    //   listener: (context, state) {
    //   //   print('Splash screen Auth Listener');
    //   },
     return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(
                image: AssetImage('assets/images/logo.png'),
               // width: 280,
               //  height: 280,
              ),
            ),
            // //SizedBox(height: 5),
            // Text(
            //     'WAHAJ',
            //     style: Theme.of(context).textTheme.headline2!.copyWith(
            //       color: Color(0xFF62856E),
            //
            //     ),
            //   ),

          ],
        ),
      );

  }
}