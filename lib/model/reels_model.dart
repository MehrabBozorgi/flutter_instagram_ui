class ReelsModel {
  final String id;
  final String title;
  final String reel;
  final bool isLike;
  final bool isFollow;

  ReelsModel({
    required this.id,
    required this.title,
    required this.reel,
    required this.isLike,
    required this.isFollow,
  });

  static List<ReelsModel>reelData=[

    ReelsModel(id: '1', title: 'car.iran', reel: 'assets/images/vertical/vertical-1.jpg', isLike: true, isFollow: false),
    ReelsModel(id: '2', title: 'eminem', reel: 'assets/images/vertical/vertical-2.jpg', isLike: false, isFollow: true),
    ReelsModel(id: '3', title: 'tabiat.iran', reel: 'assets/images/vertical/vertical-3.jpg', isLike: true, isFollow: true),
    ReelsModel(id: '4', title: 'tabiat.iran', reel: 'assets/images/vertical/vertical-4.jpg', isLike: false, isFollow: false),
    ReelsModel(id: '5', title: 'jahangardi', reel: 'assets/images/vertical/vertical-5.jpg', isLike: false, isFollow: false),

  ];

}
