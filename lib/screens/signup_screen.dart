import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'create_account_screen.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  void switchToCreateAccountPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CreateAccountScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  Image.asset(
                    'assets/assetLogo.png',
                    width: 300,
                    height: 240,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text('Stay on top of your finance with us.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w700,
                            fontSize: 30)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 40),
                    child: Text(
                      'We are your new financial Advisors to recommed the best investments for you.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff4F4F4F),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
                onTap: switchToCreateAccountPage,
                child: _showCreateAccountButton()),
            Text(
              'Login',
              style: TextStyle(
                  color: Color(0xff31A062),
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            )
          ],
        ),
      ),
    );
  }

  Container _showCreateAccountButton() {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 8),
      height: 55,
      decoration: BoxDecoration(
          color: Color(0xff331A062), borderRadius: BorderRadius.circular(20)),
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
