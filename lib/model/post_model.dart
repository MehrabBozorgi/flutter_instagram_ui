class PostModel {
  final String id;
  final String title;
  final String location;
  final String profile;
  final String post;
  final String description;
  final bool isLike;
  final bool isSave;
  final bool isSlide;

  PostModel({
    required this.id,
    required this.title,
    required this.location,
    required this.profile,
    required this.post,
    required this.description,
    required this.isLike,
    required this.isSave,
    required this.isSlide,
  });

  static List<PostModel> postData = [
    PostModel(
      id: '1',
      title: 'iran.car',
      location: 'tehran',
      profile: 'assets/images/profile/car.jpg',
      post: 'assets/images/post/post-6.jpg',
      description: '''
      لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد  کتابهای زیادی در شصت و سه درصد گذشته حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد  تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی
      ''',
      isLike: false,
      isSave: false,
      isSlide: false,
    ),
    PostModel(
      id: '2',
      title: 'programming_show',
      location: 'mazandaran',
      profile: 'assets/images/profile/me.png',
      post: 'assets/images/post/post-1.jpg',
      description: '''
      لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد  کتابهای زیادی در شصت و سه درصد گذشته حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد  تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی
      ''',
      isLike: true,
      isSave: false,
      isSlide: true,
    ),
    PostModel(
      id: '3',
      title: 'zahra.mad',
      location: '',
      profile: 'assets/images/profile/person.jpg',
      post: 'assets/images/post/post-4.jpg',
      description: '''
      لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد  کتابهای زیادی در شصت و سه درصد گذشته حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد  تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی
      ''',
      isLike: false,
      isSave: true,
      isSlide: false,
    ),
    PostModel(
      id: '4',
      title: 'moon.girl.ac',
      location: '',
      profile: 'assets/images/profile/moon.jpg',
      post: 'assets/images/post/post-7.jpg',
      description: '''
      لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد  کتابهای زیادی در شصت و سه درصد گذشته حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد  تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی
      ''',
      isLike: false,
      isSave: false,
      isSlide: false,
    ),
    PostModel(
      id: '5',
      title: 'moon.girl.ac',
      location: 'esfahan',
      profile: 'assets/images/profile/moon.jpg',
      post: 'assets/images/post/post-8.jpg',
      description: '''
      لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد  کتابهای زیادی در شصت و سه درصد گذشته حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد  تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی
      ''',
      isLike: false,
      isSave: false,
      isSlide: false,
    ),
    PostModel(
      id: '6',
      title: 'zellatan',
      location: 'esfahan',
      profile: 'assets/images/profile/zellatan.jpg',
      post: 'assets/images/post/post-9.jpg',
      description: '''
      لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد  کتابهای زیادی در شصت و سه درصد گذشته حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد  تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی
      ''',
      isLike: false,
      isSave: false,
      isSlide: false,
    ),
  ];
}
