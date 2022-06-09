class ModelKosaKata {
  int? id;
  String? name;
  String? kosakata;
  String? arti;


  ModelKosaKata(this.id, this.name, this.kosakata, this.arti);

  ModelKosaKata.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    kosakata = json['kosakata'];
    arti = json['arti'];

  }
}
