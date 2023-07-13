import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/assets_bottomsheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F9),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu_outlined, color: Color(0xff000000)),
                      Icon(Icons.notifications_none, color: Color(0xff000000))
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Welcome, Jessie.',
                      style: GoogleFonts.dmSans(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: 28),
                    ),
                  ],
                ),
                InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25))),
                          builder: (context) {
                            return AssetsBottomSheet();
                          });
                    },
                    child: _showAssetsPortfolioContainer()),
                Padding(
                  padding: EdgeInsets.only(bottom: 6, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Best Plans',
                        style: GoogleFonts.dmSans(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w700,
                            fontSize: 19),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'See All',
                              style: GoogleFonts.dmSans(
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 121,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _showGoldCardStock(),
                        _showSilverCardStock(),
                        _showPlatinumCardStock()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Row(
                    children: [
                      Text(
                        'Investment Guide',
                        style: GoogleFonts.dmSans(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 137,
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 240,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Basic type of investments',
                                  style: GoogleFonts.dmSans(
                                      color: Color(0xff4F4F4F),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                                Text(
                                  'This is how you set your foot for 2020 Stock market recession. What’s next...',
                                  style: TextStyle(
                                    color: Color(0xff474747),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Image.asset(
                            'assets/news1Ellipse.png',
                            height: 55,
                            width: 55,
                          )
                        ],
                      ),
                      Divider(color: Color(0xff4A4A4A)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 240,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'How much can you start wit..',
                                  style: GoogleFonts.dmSans(
                                      color: Color(0xff4F4F4F),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                                Text(
                                  'What do you like to see? It’s a very different market from 2018. The way...',
                                  style: TextStyle(
                                    color: Color(0xff474747),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Image.asset(
                            'assets/news2Ellipse.png',
                            height: 55,
                            width: 55,
                          )
                        ],
                      ),
                      Divider(color: Color(0xff4A4A4A)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 240,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome to New NASDAQ',
                                  style: GoogleFonts.dmSans(
                                      color: Color(0xff4F4F4F),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                                Text(
                                  'When we talk about the wall street, what looks good might be different',
                                  style: TextStyle(
                                    color: Color(0xff474747),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(color: Color(0xff4A4A4A))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _showAssetsPortfolioContainer() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Color(0xff31A062), borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 6),
            child: Row(
              children: [
                Text(
                  'Your total asset portfolio',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 8, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'N203,935',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28, vertical: 12),
                    child: Text(
                      'Invest now',
                      style: TextStyle(
                          color: Color(0xff31A062),
                          fontWeight: FontWeight.w600,
                          fontSize: 13),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _showGoldCardStock() {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 110,
      decoration: BoxDecoration(
          color: Colors.amber[600], borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 8, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gold',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                Text(
                  '30% return',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 40,
                foregroundImage: AssetImage('assets/goldCoin.png'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container _showSilverCardStock() {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 110,
      decoration: BoxDecoration(
          color: Colors.grey[400], borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 8, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Silver',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                Text(
                  '60% return',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 40,
                foregroundImage: AssetImage('assets/silverCoin.jpg'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container _showPlatinumCardStock() {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 110,
      decoration: BoxDecoration(
          color: Colors.deepPurple, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 8, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Platinum',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                Text(
                  '90% return',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 40,
                foregroundImage: AssetImage('assets/platinumCoin.jpg'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
