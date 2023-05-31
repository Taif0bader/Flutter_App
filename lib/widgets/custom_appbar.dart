
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool automaticallyImplyLeading;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.automaticallyImplyLeading = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,

      automaticallyImplyLeading: automaticallyImplyLeading,

      title: Container(
        //padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        //color: Colors.black,

        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: Color(0xFF94B49F)),
        ),


      ),centerTitle: true,

      iconTheme: IconThemeData(color: Color(0xFF94B49F),size: 30),

      actions: [

           //padding: EdgeInsets.all(20),
           Padding(
             padding: const EdgeInsets.only(right: 15.0),
             child: Image.asset('assets/wahajs.png',scale: 0.6),
           ),
      ],
    );
  }

  Size get preferredSize => Size.fromHeight(40.0);
}