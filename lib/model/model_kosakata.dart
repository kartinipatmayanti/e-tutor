class ModelKosaKata {
  final id;
  final name;
  final List<Vocab>? vocab;

  ModelKosaKata({this.id, this.name, this.vocab});

  factory ModelKosaKata.fromJson(Map<String, dynamic> json) {
    return ModelKosaKata(
    id : json['id'],
    name : json['name'],
    vocab: parseVocab(json)
    );
  }

  static List<Vocab> parseVocab(vocabJson) {
    var list = vocabJson['vocab'] as List;
  List<Vocab> vocabList = list.map((data) => Vocab.fromJson(data)).toList();
  return vocabList;
}
}

class Vocab {
  final id;
  final String? kosakata;
  final String? arti;

  Vocab ({this.id, this.kosakata, this.arti});

  factory Vocab.fromJson(Map<String, dynamic> parsedjson) {
    return Vocab(
    id: parsedjson['id'],
    kosakata : parsedjson['kosakata'],
    arti : parsedjson['arti']
    );    
}
}