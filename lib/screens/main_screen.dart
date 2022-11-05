import 'package:flutter/material.dart';
import 'package:instagram_application/screens/activity_screen.dart';
import 'package:instagram_application/screens/create_post.dart';
import 'package:instagram_application/screens/home_screen.dart';
import 'package:instagram_application/screens/search_screen.dart';
import 'package:instagram_application/screens/user_profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  var _bottonNavigationBar = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            currentIndex: _bottonNavigationBar,
            onTap: (index) {
              setState(() {
                _bottonNavigationBar = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xff1C1F2E),
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/icon_home.png',
                  ),
                  activeIcon: Image.asset('assets/images/home_activated.png'),
                  label: 'text1'),
              BottomNavigationBarItem(
                  activeIcon: Image.asset('assets/images/search_activated.png'),
                  icon: Image.asset('assets/images/icon_search_botton.png'),
                  label: 'text1'),
              BottomNavigationBarItem(
                  //activeIcon: Image.asset('assets/images/'),
                  icon: Image.asset('assets/images/add_icon.png'),
                  label: 'text1'),
              BottomNavigationBarItem(
                  activeIcon: Image.asset('assets/images/love_activated.png'),
                  icon: Image.asset('assets/images/icon_like_botton.png'),
                  label: 'text1'),
              BottomNavigationBarItem(
                  activeIcon: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      border: Border.all(
                        width: 2,
                        color: Color(0xffF35383),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image.asset('assets/images/profile.jpeg'),
                        ),
                      ),
                    ),
                  ),
                  icon: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 218, 209, 212),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset('assets/images/profile.jpeg')),
                      ),
                    ),
                  ),
                  label: 'text1')
            ],
          ),
        ),
      ),
      body: IndexedStack(index: _bottonNavigationBar, children: getLayout()),
    );
  }
}

List<Widget> getLayout() {
  return <Widget>[
    HomePage(),
    SearchScreeen(),
    CreatePost(),
    ActivityScreen(),
    UserProfile()
  ];
}
