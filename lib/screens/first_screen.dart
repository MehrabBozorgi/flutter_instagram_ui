import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/model/post_model.dart';

import '../model/story_model.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/logo/Instagram_Logo_2016.png',
                      width: 120,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.favorite_border, size: 28),
                        const SizedBox(width: 10),
                        Image.asset(
                          'assets/images/icon/direct.png',
                          width: 25,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const StorySectionWidget(),
              const Divider(),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: PostModel.postData.length,
                itemBuilder: (context, index) {
                  final helper = PostModel.postData[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    helper.profile,
                                    width: 45,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      helper.title,
                                      style: const TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                    Text(helper.location),
                                  ],
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.more_vert_rounded)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Image.asset(
                        helper.post,
                        height: 320,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: helper.isLike == true
                                    ? const Icon(Icons.favorite, size: 28, color: Colors.red)
                                    : Icon(Icons.favorite_border,
                                        size: 28, color: Colors.grey.shade800),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.chat_outlined,
                                    size: 28, color: Colors.grey.shade800),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.send_outlined,
                                    size: 28, color: Colors.grey.shade800),
                              ),
                              const SizedBox(width: 25),
                              helper.isSlide == false
                                  ? Container()
                                  : const Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.blueAccent,
                                          radius: 5,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.grey,
                                          radius: 4,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.grey,
                                          radius: 4,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.grey,
                                          radius: 4,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.grey,
                                          radius: 4,
                                        ),
                                      ],
                                    ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: helper.isSave == true
                                ? const Icon(Icons.bookmark_border, size: 28)
                                : Icon(Icons.bookmark_border_outlined,
                                    size: 28, color: Colors.grey.shade800),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'like by   Felani',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          helper.description,
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'roboto'),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Image.asset('assets/images/profile/me.png', width: 40),
                            const SizedBox(width: 10),
                            const Text('add comment...'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Divider(),
                      const SizedBox(height: 5),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StorySectionWidget extends StatelessWidget {
  const StorySectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 125,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: StoryModel.storyData.length,
        itemBuilder: (context, index) {
          final helper = StoryModel.storyData[index];
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: helper.seen == true
                      ? LinearGradient(
                          colors: [Colors.grey.shade300, Colors.grey.shade300],
                        )
                      : const LinearGradient(
                          colors: [
                            Colors.deepOrange,
                            Colors.red,
                            Colors.purpleAccent,
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(helper.image, width: 75),
                  ),
                ),
              ),

              /// if helper.seen == true ?grey style : normal style
              helper.seen == true
                  ? Text(
                      helper.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'roboto',
                          color: Colors.grey),
                    )
                  : Text(
                      helper.title,
                      style:
                          const TextStyle(fontWeight: FontWeight.w700, fontFamily: 'roboto'),
                    ),
            ],
          );
        },
      ),
    );
  }
}
