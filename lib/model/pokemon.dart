class Pokemon {
  String id;
  String name;
  int nationalPokedexNumber;
  String imgUrl;
  String type;
  String hp;

  Pokemon(
      {this.id,
      this.name,
      this.nationalPokedexNumber,
      this.imgUrl,
      this.type,
      this.hp});

  factory Pokemon.fromJSON(Map<String, dynamic> json) {
    return Pokemon(
        id: json['id'].toString(),
        name: json['name'],
        nationalPokedexNumber: json['nationalPokedexNumber'],
        imgUrl: json['imageUrl'],
        type: json['type'],
        hp: json['hp']);
  }
}
