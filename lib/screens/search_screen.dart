import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreeen extends StatelessWidget {
  const SearchScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _getSearchBar(),
            ),
            SliverToBoxAdapter(
              child: _getCategory(),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 17),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Container(
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
                  repeatPattern: QuiltedGridRepeatPattern.inverted,
                  pattern: [
                    QuiltedGridTile(2, 1),
                    QuiltedGridTile(2, 2),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  // GridView.custom(
  //       ),

  Widget _getCategory() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      height: 23,
      //width: 60,
      child: ListView.builder(
        //shrinkWrap: true,
        itemCount: 11,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 16, left: 16),
            decoration: BoxDecoration(
                color: Color(0xff272B40),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                child: Text(
                  'All $index',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _getSearchBar() {
    return Container(
      margin: EdgeInsets.only(top: 12, left: 17, right: 17),
      height: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(13),
        ),
        color: Color(0xff272B40),
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
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Image.asset('assets/images/icon_scan.png')
          ],
        ),
      ),
    );
  }
}
