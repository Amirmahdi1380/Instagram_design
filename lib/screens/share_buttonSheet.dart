import 'dart:ui';

import 'package:flutter/material.dart';

class buttonSheet extends StatelessWidget {
  const buttonSheet({this.controller, Key? key}) : super(key: key);
  final ScrollController? controller;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: 300,
          color: Color.fromRGBO(255, 255, 255, 0.1),
          child: _gridContent(),
        ),
      ),
    );
  }

  Widget _gridContent() {
    // return GridView.builder(
    //   controller: controller,
    //   itemCount: 100,
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     mainAxisSpacing: 10,
    //     crossAxisSpacing: 10,
    //     crossAxisCount: 4,
    //   ),
    //   itemBuilder: (BuildContext context, int index) {
    //     return Container(
    //       color: Colors.red,
    //     );
    //   },
    // );
    return _getContent();
  }

  Widget _getContent() {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        CustomScrollView(
          controller: controller,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 67,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Share',
                        style: TextStyle(
                          fontFamily: 'GB',
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Image.asset('assets/images/Group 103.png')
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Container(
                    height: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(13),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 0.4),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset('assets/images/icon_search.png'),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search User',
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                ((context, index) {
                  return _getButtonSheetProfile();
                }),
                childCount: 30,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 5,
                crossAxisSpacing: 10,
                crossAxisCount: 4,
                mainAxisExtent: 120,
              ),
            ),
            SliverPadding(padding: EdgeInsets.symmetric(vertical: 40)),
          ],
        ),
        Positioned(
          bottom: 47,
          child: ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 45, vertical: 13),
              child: Text(
                'send',
                style: TextStyle(
                  fontFamily: 'GB',
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _getButtonSheetProfile() {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          child: ClipRRect(
            child: Image.asset('assets/images/profile.jpeg'),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'amir',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'GB',
            fontSize: 17,
          ),
        )
      ],
    );
  }
}
