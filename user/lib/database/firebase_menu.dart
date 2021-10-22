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
    return _promocoes;
  }

  String _rua = "";
  String getRua() {
    return _rua;
  }

  String _cidade = "";
  String getCidade() {
    return _cidade;
  }

  String _semanaNome = "";
  String getSemanaNome() {
    return _semanaNome;
  }

  String _semanaHorario = "";
  String getSemanaHorario() {
    return _semanaHorario;
  }

  String _sabNome = "";
  String getSabNome() {
    return _sabNome;
  }

  String _sabHorario = "";
  String getSabHorario() {
    return _sabHorario;
  }

  String _domNome = "";
  String getDomNome() {
    return _domNome;
  }

  String _domHorario = "";
  String getDomHorario() {
    return _domHorario;
  }

  String _numCelular = "";
  String getNumCelular() {
    return _numCelular;
  }

  String _facebook = "";
  String getFacebook() {
    return _facebook;
  }

  String _instagram = "";
  String getInstagram() {
    return _instagram;
  }

  Future<void> setPromocoes() async {
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

    setPromocoes();

    DocumentSnapshot contatoPrint = await pato.doc('contato').get();

    var dadosContatos = contatoPrint.data() as Map;

    var contatosDados = dadosContatos['contato'] as Map;

    _rua = contatosDados['rua'];
    _cidade = contatosDados['cidade'];
    _semanaNome = contatosDados['segNome'];
    _semanaHorario = contatosDados['segHora'];
    _sabNome = contatosDados['sabNome'];
    _sabHorario = contatosDados['sabHora'];
    _domNome = contatosDados['domNome'];
    _domHorario = contatosDados['domHora'];
    _numCelular = contatosDados['numCelular'];
    _facebook = contatosDados['facebook'];
    _instagram = contatosDados['instagram'];
  }
}
