class Item {
  String desc;
  String nome;
  String nomeImagem;
  double preco;
  bool promocao;
  double? precoAntigo;
  int? desconto;
  String tipo;

  Item({
    required this.desc,
    required this.nome,
    required this.nomeImagem,
    required this.preco,
    required this.promocao,
    this.precoAntigo,
    this.desconto,
    required this.tipo,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      desc: json['desc'],
      nome: json['nome'],
      nomeImagem: json['nomeImagem'],
      preco: json['preco'].toDouble(),
      promocao: json['promocao'],
      precoAntigo: json['precoAntigo']?.toDouble(),
      desconto: json['desconto']?.toInt(),
      tipo: json['tipo'],
    );
  }
}
