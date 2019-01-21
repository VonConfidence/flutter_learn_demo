class Post {
  final String title;
  final String author;
  final String imageUrl;
  final String description;
  bool selected = false;

  Post({
    this.title,
    this.author,
    this.imageUrl,
    this.description,
    selected,
  }) {
    this.selected = selected ?? false;
  }

  String toString() {
    return 'title=$title, author=$author, iamgeUrl=$imageUrl, description=$description';
  }
}

final List<Post> posts = [
  Post(
    title: 'Title 1',
    author: 'confidence',
    imageUrl: 'http://p1.qhimgs4.com/t01c89244aef46f639f.jpg',
    description: 'Title 1',
  ),
  Post(
    title: 'Title 22',
    author: 'confidence',
    imageUrl: 'http://p2.qhimgs4.com/t01dca099ae1ac3e2bf.jpg',
    description: 'Title 2',
  ),
  Post(
    title: 'Title 333',
    author: 'confidence',
    imageUrl: 'http://p1.qhimgs4.com/t015e3ff3d879683db7.jpg',
    description: 'Title 3',
  ),
  Post(
    title: 'Title 4444',
    author: 'confidence',
    imageUrl: 'http://p1.qhimgs4.com/t01e1d4d7bb9f53451c.jpg',
    description: 'Title 4',
  ),
  Post(
    title: 'Title 55555',
    author: 'confidence',
    imageUrl: 'http://p0.qhimgs4.com/t011c1f08a18a7eb057.jpg',
    description: 'Title 5',
  ),
  Post(
    title: 'Title 666666',
    author: 'confidence',
    imageUrl: 'http://p2.qhimgs4.com/t012fa7db33c36a1cbe.jpg',
    description: 'Title 6',
  ),
  Post(
      title: 'Title 7777777',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 7'),
  Post(
      title: 'Title 8',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 8'),
  Post(
      title: 'Title 9',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 9'),
  Post(
      title: 'Title 10',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 10'),
  Post(
      title: 'Title 11',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 11'),
  Post(
      title: 'Title 12',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 12'),
  Post(
      title: 'Title 13',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 13'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title 14',
      author: 'confidence',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title 14'),
  Post(
      title: 'Title end',
      author: 'confidence end of line',
      imageUrl: 'http://p2.qhimgs4.com/t014305df6ddcdbdd39.jpg',
      description: 'Title end'),
];
