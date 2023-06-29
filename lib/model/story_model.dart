class StoryModel {
  final String id;
  final String title;
  final String image;
  final bool seen;

  StoryModel({
    required this.id,
    required this.title,
    required this.image,
    required this.seen,
  });

 static List<StoryModel>storyData=[
    StoryModel(id: '0', title: 'Your Story', image:'assets/images/profile/me.png' , seen: true),
    StoryModel(id: '1', title: 'iran.car', image:'assets/images/profile/car.jpg' , seen: false),
    StoryModel(id: '2', title: 'cristiano', image:'assets/images/profile/crs.jpg' , seen: false),
    StoryModel(id: '3', title: 'eminem', image:'assets/images/profile/eminem.jpg' , seen: false),
    StoryModel(id: '4', title: 'messi', image:'assets/images/profile/messi.jpg' , seen: false),
    StoryModel(id: '5', title: 'moon.girl.ac', image:'assets/images/profile/moon.jpg' , seen: false),
    StoryModel(id: '6', title: 'zahra.mad', image:'assets/images/profile/person.jpg' , seen: false),
    StoryModel(id: '7', title: 'mohammad_king', image:'assets/images/profile/person1.jpg' , seen: false),
    StoryModel(id: '8', title: 'robert.junior', image:'assets/images/profile/robert.jpg' , seen: false),
    StoryModel(id: '9', title: 'samueljackson', image:'assets/images/profile/samuel.jpg' , seen: false),
    StoryModel(id: '10', title: 'therock', image:'assets/images/profile/rock.jpg' , seen: false),
    StoryModel(id: '11', title: 'will_smith', image:'assets/images/profile/will.jpg' , seen: false),
    StoryModel(id: '12', title: 'zellatan', image:'assets/images/profile/zellatan.jpg' , seen: false),
  ];

}
