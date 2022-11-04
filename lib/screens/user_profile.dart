import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Center(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, isScrolled) {
              return [
                SliverAppBar(
                  toolbarHeight: 40,
                  actions: [
                    Padding(
                      padding: EdgeInsets.only(top: 18, right: 18),
                      child: Icon(
                        Icons.menu,
                      ),
                    )
                  ],
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(10),
                    child: Container(
                      height: 14,
                      decoration: BoxDecoration(
                        color: Color(0xff1C1F2E),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  backgroundColor: Color(0xff1C1F2E),
                  expandedHeight: 180,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      'assets/images/item2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: _getHeaderProfile(),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  floating: true,
                  delegate: TabBarViweDeligate(
                    TabBar(
                      tabs: [
                        Text('tab1'),
                        Text('tab2'),
                      ],
                    ),
                  ),
                )
              ];
            },
            body: TabBarView(
              children: [
                Container(color: Colors.amber),
                Container(color: Colors.green)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _getHeaderProfile() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 18),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            border: Border.all(
              width: 2,
              color: Color(0xffF35383),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(13)),
              child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('assets/images/profile.jpeg')),
            ),
          ),
        ),
        SizedBox(
          width: 17,
        ),
        Container(
          height: 70,
          width: 170,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'امیرمهدی برنامه نویس موبایل',
                  style: TextStyle(color: Colors.white, fontFamily: 'SM'),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Amimrhadi',
                  style: TextStyle(color: Colors.white, fontFamily: 'GB'),
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        Image.asset('assets/images/icon_update.png'),
      ],
    ),
  );
}

class TabBarViweDeligate extends SliverPersistentHeaderDelegate {
  TabBarViweDeligate(this._tabBar);
  final TabBar _tabBar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: _tabBar,
    );
  }

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
