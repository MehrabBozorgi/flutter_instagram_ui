import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../widget/custom_appbar.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  List<String> exploreList = [
    'assets/images/post/post-1.jpg',
    'assets/images/post/post-2.jpg',
    'assets/images/post/post-3.jpg',
    'assets/images/post/post-4.jpg',
    'assets/images/post/post-5.jpg',
    'assets/images/post/post-6.jpg',
    'assets/images/post/post-7.jpg',
    'assets/images/post/post-8.jpg',
    'assets/images/post/post-9.jpg',
    'assets/images/profile/car.jpg',
    'assets/images/profile/crs.jpg',
    'assets/images/profile/eminem.jpg',
    'assets/images/profile/moon.jpg',
    'assets/images/profile/person.jpg',
    'assets/images/profile/person1.jpg',
    'assets/images/profile/robert.jpg',
    'assets/images/profile/rock.jpg',
    'assets/images/profile/samuel.jpg',
    'assets/images/profile/will.jpg',
    'assets/images/post/post-9.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: GridView.builder(
          gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              pattern: const [
                QuiltedGridTile(2, 1),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
              ],
              repeatPattern: QuiltedGridRepeatPattern.inverted),
          itemCount: exploreList.length,
          itemBuilder: (context, index) {
            return Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  exploreList[index],
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  top: 5,
                  left: 5,
                  child: Icon(
                    Icons.video_collection,
                    color: Colors.white,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
