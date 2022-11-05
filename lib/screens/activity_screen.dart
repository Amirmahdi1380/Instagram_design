import 'package:flutter/material.dart';
import 'package:instagram_application/model/enum/activity_type_enum.dart';

class ActivityScreen extends StatefulWidget {
  ActivityScreen({Key? key}) : super(key: key);

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            TabBar(
              labelStyle: TextStyle(
                fontFamily: 'GB',
                fontSize: 20,
              ),
              indicatorColor: Color(0xffF35383),
              indicatorWeight: 2,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 17),
              controller: _tabController,
              tabs: [
                Tab(
                  text: 'Following',
                ),
                Tab(
                  text: 'You',
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _getSample(),
                  _getSample(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getSample() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              top: 32,
            ),
            child: Text(
              'New',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'GB',
                fontSize: 24,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            ((context, index) {
              return _getRow(ActivityStatus.following);
            }),
            childCount: 2,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              top: 32,
            ),
            child: Text(
              'Today',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'GB',
                fontSize: 24,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            ((context, index) {
              return _getRow(ActivityStatus.followBack);
            }),
            childCount: 6,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              top: 32,
            ),
            child: Text(
              'This week',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'GB',
                fontSize: 24,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            ((context, index) {
              return _getRow(ActivityStatus.likes);
            }),
            childCount: 2,
          ),
        )
      ],
    );
  }

  Widget _getRow(ActivityStatus status) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffF35383),
            ),
          ),
          SizedBox(
            width: 7,
          ),
          Container(
            width: 40,
            height: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              child: Image.asset('assets/images/profile.jpeg'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Text(
                      'Amirmahdi',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Started following',
                      style: TextStyle(
                        color: Color(0xffC5C5C5),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Text(
                      'you',
                      style: TextStyle(
                        fontFamily: 'GB',
                        color: Color(0xffC5C5C5),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '3min',
                      style: TextStyle(
                        fontFamily: 'GB',
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Spacer(),
          ActivitysatusRow(status)
        ],
      ),
    );
  }
}

Widget ActivitysatusRow(ActivityStatus status) {
  switch (status) {
    case ActivityStatus.followBack:
      return ElevatedButton(
        onPressed: () {},
        child: Text(
          'Follow',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Color(0xffF35383),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      );
    case ActivityStatus.likes:
      return SizedBox(
        width: 40,
        height: 40,
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          child: Image.asset('assets/images/item1.png'),
        ),
      );
    case ActivityStatus.following:
      return OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: Color(0xffC5C5C5),
          ),
        ),
        onPressed: () {},
        child: Text(
          'Message',
          style: TextStyle(
            fontSize: 12,
            color: Color(0xffC5C5C5),
          ),
        ),
      );
  }
}
