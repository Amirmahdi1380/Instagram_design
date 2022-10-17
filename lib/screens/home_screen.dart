import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 31, 46, 1),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color(0xff1C1F2E),
        title: Text(
          'nisteshgram',
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 7),
            child: Image.asset('assets/images/Group 39.png'),
          ),
        ],
      ),
      body: Center(
        child: Container(
          //decoration: BoxDecoration(color: Colors.red),
          height: 440,
          width: 394,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Positioned(
                top: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/Rectangle 17.png',
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 15,
                child: Image.asset('assets/images/Vector.png'),
              ),
              Positioned(
                bottom: 10,
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                    child: Container(
                      width: 340,
                      height: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.5),
                            Color.fromRGBO(255, 255, 255, 0.2)
                          ],
                        ),
                        color: Colors.red,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset('assets/images/like.png'),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            '2.5 k',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'GB',
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Image.asset('assets/images/Group 43.png'),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            '1.5 k',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'GB',
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Image.asset('assets/images/Vector-3.png'),
                          SizedBox(
                            width: 6,
                          ),
                          SizedBox(
                            width: 45,
                          ),
                          Image.asset('assets/images/Vector-4.png'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getDottedBorder() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(17),
      padding: EdgeInsets.all(4),
      dashPattern: [50, 10],
      strokeWidth: 2,
      color: Color(0xffF35383),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        child: Container(
          height: 58,
          width: 58,
          child: Image.asset('assets/images/Rectangle 13.png'),
        ),
      ),
    );
  }

  Widget _getSkin() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        //mainAxisSize: MainAxisSize.max,
        children: [
          _getDottedBorder(),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Amirmahdi',
                  style: TextStyle(
                    fontFamily: 'SM',
                    color: Colors.white,
                  ),
                ),
                Text(
                  'برنامه نویس موبایل',
                  style: TextStyle(
                    fontFamily: 'SM',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Image.asset('assets/images/icon_menu.png')
        ],
      ),
    );
  }

  Widget _getContainer() {
    return Container(
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Color(0xff1C1F2E),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset('assets/images/icon_plus.png'),
        ),
      ),
    );
  }
}
