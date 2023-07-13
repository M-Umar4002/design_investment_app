import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AssetsBottomSheet extends StatefulWidget {
  const AssetsBottomSheet({super.key});

  @override
  State<AssetsBottomSheet> createState() => _AssetsBottomSheetState();
}

class _AssetsBottomSheetState extends State<AssetsBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height * 0.94,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 80),
                child: Text(
                  'My Asset',
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Image.asset('assets/closeButton.png'))
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                Text(
                  'Your total asset portfolio',
                  style: TextStyle(
                      color: Color(0xffB3B3B3),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                'N203,935',
                style: TextStyle(
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w600,
                    fontSize: 26),
              ),
              Container(
                  margin: EdgeInsets.only(left: 35),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_upward,
                        size: 12,
                        color: Color(0xff00B907),
                      ),
                      Text(
                        '+2%',
                        style: TextStyle(
                            color: Color(0xff00B907),
                            fontWeight: FontWeight.w400,
                            fontSize: 10),
                      )
                    ],
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, bottom: 8),
            child: Row(
              children: [
                Text('Current Plans',
                    style: GoogleFonts.dmSans(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontSize: 20))
              ],
            ),
          ),
          _showGoldCardContainer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'See All Plans',
                  style: TextStyle(
                      color: Color(0xffFE555D),
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Color(0xffFE555D),
                )
              ],
            ),
          ),
          Row(
            children: [
              Text(
                'History',
                style: GoogleFonts.dmSans(
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              height: 180,
              child: ListView(
                children: [
                  Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rp 200.000',
                            style: GoogleFonts.dmSans(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Buy “APPL” Stock',
                                  style: TextStyle(
                                      color: Color(0xffB3B3B3),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11)),
                              Text('TUE 22 Jun 2020',
                                  style: TextStyle(
                                      color: Color(0xffB3B3B3),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11)),
                            ],
                          ),
                        ]),
                  ),
                  Divider(
                    color: Color(0xffE7E7E7),
                    thickness: 1.3,
                  ),
                  Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rp 150.000',
                            style: GoogleFonts.dmSans(
                                color: Color(0xff00B907),
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Sell “TLKM” Stock',
                                  style: TextStyle(
                                      color: Color(0xffB3B3B3),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11)),
                              Text('TUE 22 Jun 2020',
                                  style: TextStyle(
                                      color: Color(0xffB3B3B3),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11)),
                            ],
                          ),
                        ]),
                  ),
                  Divider(
                    color: Color(0xffE7E7E7),
                    thickness: 1.3,
                  ),
                  Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Text(
                          'Rp 1.000.240',
                          style: GoogleFonts.dmSans(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w700,
                              fontSize: 14),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Buy “FB” Stock',
                                style: TextStyle(
                                    color: Color(0xffB3B3B3),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11)),
                            Text('TUE 22 Jun 2020',
                                style: TextStyle(
                                    color: Color(0xffB3B3B3),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11)),
                          ],
                        ),
                      ])),
                  Divider(
                    color: Color(0xffE7E7E7),
                    thickness: 1.3,
                  ),
                  Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Text(
                          'Rp 1.000.240',
                          style: GoogleFonts.dmSans(
                              color: Color(0xff00B907),
                              fontWeight: FontWeight.w700,
                              fontSize: 14),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Buy “APPL” Stock',
                                style: TextStyle(
                                    color: Color(0xffB3B3B3),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11)),
                            Text('TUE 22 Jun 2020',
                                style: TextStyle(
                                    color: Color(0xffB3B3B3),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11)),
                          ],
                        ),
                      ])),
                  Divider(
                    color: Color(0xffE7E7E7),
                    thickness: 1.3,
                  ),
                ],
              ))
        ]));
  }

  Container _showGoldCardContainer() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.amber[600], borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 24, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gold',
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                Text(
                  '30% return',
                  style: TextStyle(
                      color: Color(0xff0B2517),
                      fontWeight: FontWeight.w600,
                      fontSize: 13),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 70,
                foregroundImage: AssetImage('assets/goldCoin.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
