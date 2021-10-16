import 'dart:ui';

class Item {
  String? nome;
  String? desc;
  String? nomeImagem;
  num? preco;
  bool? promocao;

  Item({
    this.nome,
    this.desc,
    this.nomeImagem,
    this.preco,
    this.promocao,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      nome: json['nome'],
      desc: json['desc'],
      nomeImagem: json['nomeImagem'],
      preco: num.parse(json['preco']),
      promocao: bool.fromEnvironment(json['promocao']),
    );
  }
}
