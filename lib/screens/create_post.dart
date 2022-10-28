import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: _getAppBar(),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Container(
                        //color: Colors.amber,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset('assets/images/item$index.png'),
                          ),
                        ),
                      );
                    },
                    childCount: 10,
                  ),
                  gridDelegate: SliverQuiltedGridDelegate(
                    crossAxisCount: 3,
                    mainAxisSpacing: 7,
                    crossAxisSpacing: 10,
                    //repeatPattern: QuiltedGridRepeatPattern.inverted,
                    pattern: [
                      QuiltedGridTile(3, 3),
                      //QuiltedGridTile(2, 2),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 1),
                      //QuiltedGridTile(1, 1),
                      //QuiltedGridTile(1, 1),
                      //QuiltedGridTile(1, 1),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            child: _getNavigation(),
          )
        ],
      ),
    );
  }

  Widget _getNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff272B40),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 17, right: 17, top: 10, bottom: 57),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Draft',
              style: TextStyle(
                color: Color(0xffF35383),
                fontFamily: 'GB',
                fontSize: 16,
              ),
            ),
            Text(
              'Gallary',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'GB',
                fontSize: 16,
              ),
            ),
            Text(
              'Take',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'GB',
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
      height: 83,
      width: 428,
    );
  }

  Widget _getAppBar() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff1C1F2E),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 69, left: 17, bottom: 25),
                child: Text(
                  'Post',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'GB', fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 69, bottom: 28),
                child: Container(
                  child: Image.asset('assets/images/icon_down.png'),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15, top: 69, bottom: 25),
                child: Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'GB', fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 64, bottom: 20, right: 15),
                child: Container(
                  child: Image.asset('assets/images/icon_next.png'),
                ),
              )
            ],
          )
        ],
      ),
      width: 428,
      height: 116,
    );
    // return Padding(
    //   padding: EdgeInsets.symmetric(horizontal: 17, vertical: 69),
    //   child: Row(
    //     children: [
    //       Text(
    //         'post',
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontFamily: 'GB',
    //           fontSize: 16,
    //         ),
    //       ),
    //       SizedBox(
    //         width: 10,
    //       ),
    //       Image.asset('assets/images/icon_down.png'),
    //       Spacer(),
    //       Text(
    //         'Next',
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontFamily: 'GB',
    //           fontSize: 16,
    //         ),
    //       ),
    //       SizedBox(
    //         width: 5,
    //       ),
    //       Image.asset('assets/images/icon_next.png')
    //     ],
    //   ),
    // );
  }
}
