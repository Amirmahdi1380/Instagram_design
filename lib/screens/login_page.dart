import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Positioned(
            top: 88,
            child: Expanded(
              child: Image(
                image: AssetImage('assets/images/rocket2 1.png'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 428,
              width: 461,
              decoration: BoxDecoration(
                color: Color(0xff1C1F2E),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
