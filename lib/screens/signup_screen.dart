import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:login_test/screens/home_screen.dart';
import 'package:login_test/screens/signin_screen.dart';
import 'package:login_test/utils/colors.dart';
import 'package:login_test/widgets/custom_button.dart';
import 'package:login_test/widgets/custom_text_form_field.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
 final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 60.0, bottom: 24.0),
                  child: Center(
                    child: Center(
                      child: Icon(CommunityMaterialIcons.account,
                          color: Colors.white, size: 120.0),
                    ),
                  ),
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 36.0,
                    vertical: 36.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CustomTextFormField(
                        borderWidth: 1.0,
                        borderStyle: BorderStyle.solid,
                        hasPrefixIcon: true,
                        textInputType: TextInputType.name,
                        hintText: 'First name',
                        prefixIcon: Icon(Icons.account_circle),
                        controller: firstNameController,
                      ),
                      CustomTextFormField(
                        borderWidth: 1.0,
                        borderStyle: BorderStyle.solid,
                        hasPrefixIcon: true,
                        textInputType: TextInputType.name,
                        hintText: 'Last name',
                        prefixIcon: Icon(Icons.account_circle),
                        controller: lastNameController,
                      ),
                      CustomTextFormField(
                        borderWidth: 1.0,
                        borderStyle: BorderStyle.solid,
                        hasPrefixIcon: true,
                        textInputType: TextInputType.emailAddress,
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.account_circle),
                        controller: emailController,
                      ),
                      CustomTextFormField(
                        borderWidth: 1.0,
                        borderStyle: BorderStyle.solid,
                        hasPrefixIcon: true,
                        textInputType: TextInputType.visiblePassword,
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Password',
                        obscured: true,
                        controller: passwordController,
                      ),
                      CustomButton(
                        title: 'SIGN UP',
                        textStyle: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold),
                        color: AppColors.white,
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) => SigninScreen(),
                            ),
                          );
                        },
                        // textStyle: textTheme.button,
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Have an account? ',
                            style: TextStyle(color: AppColors.white),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      SigninScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
