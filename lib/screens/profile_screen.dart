import 'package:flutter/material.dart';

import '../model/story_model.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  List<String> profile = [
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Programming Show',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_box_outlined,
                            size: 32,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.menu, size: 32),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/profile/me.png',
                      width: 75,
                      height: 75,
                      fit: BoxFit.cover,
                    ),
                    const Row(
                      children: [
                        Column(
                          children: [
                            Text('101',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                            SizedBox(height: 5),
                            Text('Posts',
                                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Text('3,747',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                            SizedBox(height: 5),
                            Text('Followers',
                                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Text('256',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                            SizedBox(height: 5),
                            Text('Following',
                                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'مهراب بزرگی | برنامه نویس فلاتر | فلاتر | Flutter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'roboto',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '''
💠 لورم ایپسوم متن ساختگی با تولید سادگی 💠
💠 با استفاده از طراحان گرافیک است چاپگرها 💠
💠 ایپسوم متن ساختگی با تولید سادگی نامفهوم 💠                       ''',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: 'roboto',
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'mehrabbozorgi.ir',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'roboto',
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Professional Dashboard',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 2.5),
                    Text(
                      '289K account reach in last 30 days',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        elevation: 0,
                        shape:
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.5))),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        elevation: 0,
                        shape:
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.5))),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        'Share profile',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        elevation: 0,
                        shape:
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.5))),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        'Contact',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 110,
                child: ListView.builder(
                  itemCount: StoryModel.storyData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final helper = StoryModel.storyData[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              helper.image,
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 7.5),
                          Text(
                            helper.title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const Icon(
                        Icons.grid_on_rounded,
                        size: 25,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        width: 75,
                        height: 2,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Icon(Icons.video_library_outlined, size: 28, color: Colors.grey.shade600),
                  Icon(
                    Icons.menu_book,
                    size: 28,
                    color: Colors.grey.shade600,
                  ),
                  Icon(
                    Icons.person_pin_outlined,
                    size: 28,
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2.5,
                    mainAxisSpacing: 2.5,
                  ),
                  itemCount: profile.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      profile[index],
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
