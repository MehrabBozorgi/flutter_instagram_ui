import 'package:flutter/material.dart';

class AddPostScreen extends StatelessWidget {
  AddPostScreen({super.key});

  List<String> posts = [
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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/post/post-3.jpg',
                width: double.infinity,
                height: 500,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.5, vertical: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DropdownButton<String>(
                              hint: const Text('Gallery'),
                              items: <String>[
                                'Gallery',
                                'Download',
                                'Video',
                                'Other',
                              ].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                        color: Colors.grey[800], fontFamily: 'roboto'),
                                  ),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey.shade700,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.copy,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundColor: Colors.grey.shade700,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.camera_alt_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: GridView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 2.5),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4, mainAxisSpacing: 2, crossAxisSpacing: 2),
                          itemCount: posts.length,
                          itemBuilder: (context, index) {
                            return Image.asset(
                              posts[index],
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 56,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.close),
                          ),
                          const Text(
                            'New post',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
