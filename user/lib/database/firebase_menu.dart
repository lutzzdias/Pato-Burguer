import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pato_burguer/screens/menu/item.dart';

class FirebaseMenu {
  FirebaseFirestore? _instance;
  List<Item> _lanches = [];
  List<Item> getLanches() {
    return _lanches;
  }

  List<Item> _bebidas = [];
  List<Item> getBebidas() {
    return _bebidas;
  }

  List<Item> _combos = [];
  List<Item> getCombos() {
    return _combos;
  }

  List<Item> _promocoes = [];
  List<Item> getPromocoes() {
    int i;
    for (i = 0; i < _lanches.length; i++) {
      if (_lanches[i].promocao == true) {
        _promocoes.add(_lanches[i]);
      } else {
        continue;
      }
    }

    for (i = 0; i < _bebidas.length; i++) {
      if (_bebidas[i].promocao == true) {
        _promocoes.add(_bebidas[i]);
      } else {
        continue;
      }
    }

    for (i = 0; i < _combos.length; i++) {
      if (_combos[i].promocao == true) {
        _promocoes.add(_combos[i]);
      } else {
        continue;
      }
    }

    return _promocoes;
  }

  Future<void> getInfoFromFirebase() async {
    // cria instância dos dados no firestore
    _instance = FirebaseFirestore.instance;

    // cria uma entrada para a coleção patoBurguer com o nome pato
    CollectionReference pato = _instance!.collection('patoBurguer');

    // tira um "print" das informações dentro do documento patoBurguer/lanches
    DocumentSnapshot lanchesPrint = await pato.doc('lanches').get();

    // guarda os dados do print tirado como Map na variável dados
    var dadosLanches = lanchesPrint.data() as Map;

    // cria uma lista de elementos dinâmicos com os dados obtidos do documento e guardados na variável dados
    var lanchesDados = dadosLanches['lanches'] as List<dynamic>;

    // para cada lanche: colocar os lanches em seu modelo.
    lanchesDados.forEach((lanche) {
      _lanches.add(Item.fromJson(lanche));
    });

    DocumentSnapshot bebidasPrint = await pato.doc('bebidas').get();

    // guarda os dados do print tirado como Map na variável dados
    var dadosBebidas = bebidasPrint.data() as Map;

    // cria uma lista de elementos dinâmicos com os dados obtidos do documento e guardados na variável dados
    var bebidasDados = dadosBebidas['bebidas'] as List<dynamic>;

    // para cada bebida: colocar as bebidas em seu modelo.
    bebidasDados.forEach((bebida) {
      _bebidas.add(Item.fromJson(bebida));
    });

    DocumentSnapshot combosPrint = await pato.doc('combos').get();

    // guarda os dados do print tirado como Map na variável dados
    var dadosCombos = combosPrint.data() as Map;

    // cria uma lista de elementos dinâmicos com os dados obtidos do documento e guardados na variável dados
    var combosDados = dadosCombos['combos'] as List<dynamic>;

    // para cada bebida: colocar as bebidas em seu modelo.
    combosDados.forEach((combo) {
      _combos.add(Item.fromJson(combo));
    });

    getPromocoes();
  }
}
