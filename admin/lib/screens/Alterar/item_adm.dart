class Item {
  String desc;
  String nome;
  String nomeImagem;
  double preco;
  bool promocao;

  Item({
    required this.desc,
    required this.nome,
    required this.nomeImagem,
    required this.preco,
    required this.promocao,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      desc: json['desc'],
      nome: json['nome'],
      nomeImagem: json['nomeImagem'],
      preco: (json['preco']).toDouble(),
      promocao: json['promocao'],
    );
  }
}