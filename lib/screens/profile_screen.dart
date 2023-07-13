import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bank_account_info_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void switchToBankAccountInfoScreen() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BankAccountInfoScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F9),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      size: 15,
                    )),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Profile',
                      style: GoogleFonts.dmSans(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: 28),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12, bottom: 8),
                  child: Image.asset(
                    'assets/profilePicture.png',
                    width: 95,
                    height: 95,
                  ),
                ),
                Text(
                  'Jonas Macroni',
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                Text(
                  'Expert',
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
                _showContactInfoTile(),
                _showFundingSourceInfoTile(),
                InkWell(
                    onTap: switchToBankAccountInfoScreen,
                    child: _showBankAccountInfoTile()),
                _showDocumentInfoTile(),
                _showSettingsTile()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _showContactInfoTile() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 45,
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Color(0xffFFFFFF),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Icon(Icons.contacts, size: 20),
            SizedBox(width: 25),
            Text(
              'Contact Info',
              style: TextStyle(
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 16,
        )
      ]),
    );
  }

  Container _showFundingSourceInfoTile() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 45,
      color: Color(0xffFFFFFF),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Image.asset(
              'assets/fundingSourceIcon.png',
              width: 19,
              height: 14,
            ),
            SizedBox(width: 26),
            Text(
              'Source of Funding Info',
              style: TextStyle(
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 16,
        )
      ]),
    );
  }

  Container _showBankAccountInfoTile() {
    return Container(
      height: 45,
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Color(0xffFFFFFF),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Icon(Icons.account_balance, size: 20),
            SizedBox(width: 25),
            Text(
              'Bank Account Info',
              style: TextStyle(
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 16,
        )
      ]),
    );
  }

  Container _showDocumentInfoTile() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 45,
      color: Color(0xffFFFFFF),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Icon(Icons.contact_page, size: 20),
            SizedBox(width: 25),
            Text(
              'Document Info',
              style: TextStyle(
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 16,
        )
      ]),
    );
  }

  Container _showSettingsTile() {
    return Container(
      height: 45,
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Color(0xffFFFFFF),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Icon(Icons.settings, size: 20),
            SizedBox(width: 25),
            Text(
              'Settings',
              style: TextStyle(
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 16,
        )
      ]),
    );
  }
}
