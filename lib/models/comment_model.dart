class Comment {
  String name;
  String perfilUrl;
  String text;

  Comment({
    this.name,
    this.perfilUrl,
    this.text,
  });
}

final List<Comment> comments = [
  Comment(
    name: 'Alberth',
    perfilUrl: 'assets/images/user1.png',
    text: 'Amo este juego !!!',
  ),
  Comment(
    name: 'Rocio',
    perfilUrl: 'assets/images/user3.png',
    text: 'Estoy esperando otra entrega',
  ),
  Comment(
    name: 'Judith',
    perfilUrl: 'assets/images/user4.png',
    text: 'Tarde horas en terminarlo...',
  ),
  Comment(
    name: 'Marlen YS',
    perfilUrl: 'assets/images/user2.png',
    text: 'Excelente Juego',
  ),
  Comment(
    name: 'Ruth Paredes',
    perfilUrl: 'assets/images/user0.png',
    text: 'Buena foto',
  ),
];
