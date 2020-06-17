import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';


class MainContentCard extends StatelessWidget {
  const MainContentCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              color: Color(0xffFCE76C),
              width: 90,
              height: 90,
            ),
          ),
          Positioned(
            bottom: 90,
            left: 0,
            child: Container(
              color: Color(0xffFCE76C),
              width: 90,
              height: 90,
              child: Center(
                child: Icon(FlutterIcons.facebook_f_faw, size: 20.0),
              ),
            ),
          ),
           Positioned(
            bottom: 0,
            left: 90,
            child: Container(
              color: Color(0xffFCE76C),
              width: 90,
              height: 90,
              child: Center(
                child: Icon(FlutterIcons.instagram_ant, size: 20.0,)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90, bottom: 90),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff158BFF),
              child: Stack(
                children: [
                  Positioned(
                    left: 200.0,
                    top: 0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MenuSlantedContainer(
                          height: 600,
                          letter: 'S',
                          titles: [
                            'New Arrivals',
                            'Designers',
                            'Clothing',
                            'Shoes',
                            'Bags'
                          ],
                        ),
                        MenuSlantedContainer(
                            height: 550,
                            letter: 'a',
                            titles: [
                              'New Arrivals',
                              'Designers',
                              'Clothing',
                              'Shoes',
                              'Bags'
                            ]),
                        MenuSlantedContainer(
                            height: 500,
                            letter: 'l',
                            titles: [
                              'New Arrivals',
                              'Clothing',
                              'Shoes'
                            ]),
                        MenuSlantedContainer(
                            height: 450,
                            letter: 'e',
                            titles: [
                              'Up to 70% Off',
                              'Best of Sale',
                              'Clearece'
                            ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 400,
            child: Row(
              children: [
                Container(
                  width: 900,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        bottom: 60.0,
                        child: Column(
                          children: [
                            Container(
                              width: 120,
                              height: 90,
                              color: Color(0xffFCE76C),
                              child: Center(
                                  child: Icon(
                                Icons.arrow_back,
                              )),
                            ),
                            Container(
                              width: 120,
                              height: 90,
                              color: Color(0xffED7161),
                              child: Center(
                                  child: Icon(
                                Icons.arrow_forward,
                              )),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'shoe.png',
                        width: 800,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.height - 260,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 90,
                    width: 410,
                    color: Color(0xffED7161),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '01',
                        style: TextStyle(
                          color: Color(0xffFCE76C),
                          fontSize: 120.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'DSQUARED2',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                '\$390',
                                style: TextStyle(
                                    color: Colors.yellow[600],
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w300,
                                    decoration:
                                        TextDecoration.lineThrough),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            '|',
                            style: TextStyle(
                              color: Colors.yellow[600],
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Column(
                            children: [
                              Text(
                                'Sneakers',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                '\$230',
                                style: TextStyle(
                                  color: Colors.yellow[600],
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MenuSlantedContainer extends StatelessWidget {
  final double height;
  final List<String> titles;
  final String letter;

  const MenuSlantedContainer({Key key, this.height, this.titles, this.letter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SlantClipper(),
      child: Container(
        width: 305.0,
        height: height,
        color: Colors.grey[900],
        child: Stack(
          children: [
            Positioned(
              left: 40.0,
              top: 40.0,
              child: (Container(
                height: 106.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    titles.length,
                    (index) => Text(
                      titles[index],
                      style: TextStyle(
                        fontSize: 11.0,
                        fontWeight: FontWeight.w100,
                        color: Colors.white70,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ),
              )),
            ),
            Positioned(
                right: -10,
                bottom: -10,
                child: Transform.rotate(
                  angle: -pi / 2,
                  child: Text(
                    letter,
                    style: TextStyle(
                      fontSize: 300.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Color(0xffF9E46A),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class SlantClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, 0.9 * size.height);
    path.lineTo(0.0, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
