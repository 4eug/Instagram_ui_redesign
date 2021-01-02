class Post {
  String authorName;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;

  Post({
    this.authorName,
    this.authorImageUrl,
    this.timeAgo,
    this.imageUrl,
  });
}

final List<Post> posts = [
  Post(
    authorName: 'Josey',
    authorImageUrl: 'assets/images/user1.jpg',
    timeAgo: '50 min',
    imageUrl: 'assets/images/post0.jpg',
  ),
  Post(
    authorName: 'Chorey',
    authorImageUrl: 'assets/images/user3.jpg',
    timeAgo: '1 hr',
    imageUrl: 'assets/images/post1.jpg',
  ),
];

final List<String> stories = [
  'assets/images/user1.jpg',
  'assets/images/user2.jpg',
  'assets/images/user3.jpg',
  'assets/images/user4.jpg',
  'assets/images/user0.jpg',
  'assets/images/user1.jpg',
  'assets/images/user2.jpg',
  'assets/images/user3.jpg',
];
