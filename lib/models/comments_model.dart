class Comment {
  String authorName;
  String authorImageUrl;
  String text;

  Comment({
    this.authorName,
    this.authorImageUrl,
    this.text,
  });
}

final List<Comment> comments = [
  Comment(
    authorName: 'Stephanie',
    authorImageUrl: 'assets/images/user2.jpg',
    text: 'Dope !! Nice Picture',
  ),
  Comment(
    authorName: 'Luke',
    authorImageUrl: 'assets/images/user4.jpg',
    text: 'Neat and clear .',
  ),
  Comment(
    authorName: 'Mizzy',
    authorImageUrl: 'assets/images/user0.jpg',
    text: 'Chorey!!',
  ),
];
