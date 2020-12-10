import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:login_test/screens/signin_screen.dart';
import 'package:login_test/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackShade1,
        automaticallyImplyLeading: false,
        title: Text("App Home Screen"),
        actions: [
          Center(
              child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => SigninScreen(),
                ),
              );
            },
            child:
                Text("Log out", style: TextStyle(fontWeight: FontWeight.bold)),
          )),
          SizedBox(width: 10)
        ],
      ),
      body: Center(
          child: Icon(CommunityMaterialIcons.home,
              color: Colors.white, size: 120.0)),
    );
  }
}
