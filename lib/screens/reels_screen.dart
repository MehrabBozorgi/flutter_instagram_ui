import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/model/reels_model.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          scrollDirection: Axis.vertical,
          physics: const PageScrollPhysics(parent: PageScrollPhysics()),
          itemCount: ReelsModel.reelData.length,
          itemBuilder: (context, index) {
            final helper = ReelsModel.reelData[index];
            return Stack(
              children: [
                Image.asset(
                  helper.reel,
                  width: mediaQuery.width,
                  height: mediaQuery.height,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Reel',
                        style: TextStyle(
                            color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: mediaQuery.width,
                    height: 600,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.transparent,
                        Colors.black12,
                        Colors.black45,
                      ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 15,
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const Text(
                        'Like',
                        style: TextStyle(
                            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 5),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const Text(
                        '41.5K',
                        style: TextStyle(
                            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 5),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chat_bubble_outline_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const Text(
                        '316',
                        style: TextStyle(
                            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 5),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 15,
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    width: mediaQuery.width * 0.84,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                'assets/images/profile/person1.jpg',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              helper.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(width: 10),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.white, strokeAlign: 2.5),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Follow',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          '...لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.music_note,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Lorem ipsum ',
                                    style: TextStyle(
                                        color: Colors.white, fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Lorem ipsum ',
                                    style: TextStyle(
                                        color: Colors.white, fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
