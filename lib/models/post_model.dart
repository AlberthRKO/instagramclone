class Post {
  // creamos el modelo de post para armar una lista y pasarlo a las vistas
  String name;
  String perfilUrl;
  String hora;
  String postUrl;

  // construimos el post
  Post({this.name, this.perfilUrl, this.hora, this.postUrl});
}

// creamos la lista con los valores para cada variable
final List<Post> posts = [
  Post(
    name: 'Alberth Paredes',
    perfilUrl: 'assets/images/user1.png',
    hora: '15 min',
    postUrl: 'assets/images/post1.jpg',
  ),
  Post(
    name: 'Marlen YS',
    perfilUrl: 'assets/images/user2.png',
    hora: '45 min',
    postUrl: 'assets/images/post0.jpg',
  ),
  Post(
    name: 'Alberth Paredes',
    perfilUrl: 'assets/images/user1.png',
    hora: '15 min',
    postUrl: 'assets/images/user3.png',
  ),
  Post(
    name: 'Marlen YS',
    perfilUrl: 'assets/images/user2.png',
    hora: '1 hora',
    postUrl: 'assets/images/user0.png',
  ),
];

final List<String> perfiles = [
  'assets/images/user0.png',
  'assets/images/user2.png',
  'assets/images/user3.png',
  'assets/images/user0.png',
  'assets/images/user2.png',
  'assets/images/user3.png',
  'assets/images/user0.png',
  'assets/images/user2.png',
  'assets/images/user3.png',
  'assets/images/user0.png',
  'assets/images/user2.png',
  'assets/images/user3.png',
];
