import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BankAccountInfoScreen extends StatefulWidget {
  const BankAccountInfoScreen({super.key});

  @override
  State<BankAccountInfoScreen> createState() => _BankAccountInfoScreenState();
}

class _BankAccountInfoScreenState extends State<BankAccountInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 60),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            size: 15,
                          )),
                    ),
                    Text(
                      'Bank of account info',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    )
                  ],
                ),
                _showBankOfAmricaAcountInfoContainer(),
                _showZenithBankAccountInfoContainer()
              ],
            ),
          ),
          _showAddAccountButton()
        ],
      ),
    );
  }

  Container _showBankOfAmricaAcountInfoContainer() {
    return Container(
      height: 95,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(18)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          child: Row(
            children: [
              Image.asset(
                'assets/bankofAmrica.png',
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 22,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bank of Amrica - 0182128xxx',
                    style: TextStyle(
                        color: Color(0xff555555),
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                  Text(
                    'Jonas Macroni',
                    style: GoogleFonts.catamaran(
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Column(
            children: [
              Icon(Icons.more_vert),
            ],
          ),
        ),
      ]),
    );
  }

  Container _showZenithBankAccountInfoContainer() {
    return Container(
      height: 95,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(18)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          child: Row(
            children: [
              Image.asset(
                'assets/zenithBank.png',
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 22,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Zenith Bank - 0182128xxx',
                    style: TextStyle(
                        color: Color(0xff555555),
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                  Text(
                    'Jonas Macroni',
                    style: GoogleFonts.catamaran(
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Column(
            children: [
              Icon(Icons.more_vert),
            ],
          ),
        )
      ]),
    );
  }

  Container _showAddAccountButton() {
    return Container(
      margin: EdgeInsets.all(22),
      height: 60,
      decoration: BoxDecoration(
          color: Color(0xff31A062), borderRadius: BorderRadius.circular(20)),
      child: Center(
          child: Text(
        "Add account",
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFFFFF)),
      )),
    );
  }
}
