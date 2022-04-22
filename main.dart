import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menses_app/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
     fontFamily: "Cairo",
     scaffoldBackgroundColor: kBackgroundColor,
     textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
   var size = MediaQuery.of(context).size;
       return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
            color: Color(0xFFF5CEB8),
            image: DecorationImage(image: AssetImage("assets/images/pilates.jpg"),
            ),
              ),
            color: Colors.black,
            ),
            SafeArea(
              child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
              child:Container(
                alignment: Alignment.center,
                height: 52, 
                width: 52,
                decoration: BoxDecoration(
                  color: Color(0xFFF2BEA1),
                shape: BoxShape.circle,
                ),
                child: SvgPicture.asset("assets/icons/menu.svg")
                ),
              ),
              Text(
                "Siyona Lodha",
              style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(fontWeight: FontWeight.w900),
              ),
                ],
              ),
              ),
          ),
          
            ],
        ),
    );
  }
}