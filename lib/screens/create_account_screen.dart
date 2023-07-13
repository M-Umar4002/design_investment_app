import '../widgets/app_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Signup_Screen.dart';
import 'Home_Screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  void goBackToSingupPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignupPage(),
        ));
  }

  void switchToHomeScreen() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
  }

  void switchToBottomNavbar() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AppBottomNavBar(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: IconButton(
                      onPressed: () {
                        goBackToSingupPage();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: 15,
                      )),
                ),
              ],
            ),
            Container(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Create an account',
                      style: GoogleFonts.dmSans(
                          color: Color(0xff000000),
                          fontSize: 28,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Invest and double your income now',
                      style: TextStyle(
                        color: Color(0xff4F4F4F),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 25, right: 25, top: 50),
                        height: 55,
                        child: _showNameTextField()),
                    Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        height: 55,
                        child: _showEmailTextField()),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        height: 55,
                        child: _showPasswordTextField()),
                    InkWell(
                        onTap: switchToBottomNavbar,
                        child: _showCreateAccountButton()),
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                          color: Color(0xff31A062),
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextField _showNameTextField() {
    return TextField(
      cursorColor: Color(0xff828282),
      style: TextStyle(color: Color(0xff828282)),
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff828282)),
              borderRadius: BorderRadius.circular(20)),
          hintText: 'Full name',
          hintStyle: TextStyle(color: Color(0xff828282))),
    );
  }

  TextField _showEmailTextField() {
    return TextField(
      cursorColor: Color(0xff828282),
      style: TextStyle(color: Color(0xff828282)),
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff828282)),
              borderRadius: BorderRadius.circular(20)),
          hintText: 'Email address',
          hintStyle: TextStyle(color: Color(0xff828282))),
    );
  }

  TextField _showPasswordTextField() {
    return TextField(
      cursorColor: Color(0xff828282),
      style: TextStyle(color: Color(0xff828282)),
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff828282)),
              borderRadius: BorderRadius.circular(20)),
          hintText: 'Password',
          hintStyle: TextStyle(color: Color(0xff828282))),
    );
  }

  Container _showCreateAccountButton() {
    return Container(
      margin: EdgeInsets.only(top: 15, left: 25, right: 25, bottom: 20),
      height: 60,
      decoration: BoxDecoration(
          color: Color(0xff31A062), borderRadius: BorderRadius.circular(20)),
      child: Center(
          child: Text(
        "Create account",
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFFFFF)),
      )),
    );
  }
}
