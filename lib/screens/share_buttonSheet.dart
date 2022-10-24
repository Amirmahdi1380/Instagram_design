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
          color: Color.fromRGBO(255, 255, 255, 0.5),
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
    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverGrid(
          delegate: SliverChildBuilderDelegate(((context, index) {
            return Container(color: Colors.red);
          })),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            crossAxisCount: 4,
          ),
        )
      ],
    );
  }
}
