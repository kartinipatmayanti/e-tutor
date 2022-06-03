class ModelKosaKata {
  int? id;
  String? name;
  String? kosakata;


  ModelKosaKata(this.id, this.name, this.kosakata);

  ModelKosaKata.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    kosakata = json['kosakata'];

  }
}
