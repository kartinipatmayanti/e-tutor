class ModelMateri {
  int? id;
  String? name;
  String? rumus;
  String? penjelasan;
  String? contoh;

  ModelMateri(this.id, this.name, this.rumus, this.penjelasan, this.contoh);

  ModelMateri.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    rumus = json['rumus'];
    penjelasan = json['penjelasan'];
    contoh = json['contoh'];
  }
}
