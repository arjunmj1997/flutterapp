
class CharModel {
  List<Characters>? characters;

  CharModel({this.characters});

  factory CharModel.fromJson(Map<String, dynamic> json) {
    return CharModel(
        characters : json["characters"] == null ? null : (json["characters"] as List).map((e) => Characters.fromJson(e)).toList(),
    );

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(characters != null) {
      _data["characters"] = characters?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Characters {
  String? name;
  String? classes;
  String? series;

  Characters({this.name, this.classes, this.series});
  factory Characters.fromJson(Map<String, dynamic> json) {
    return Characters(
        name : json["name"],
        classes : json["class"],
        series : json["series"],
    );

  }

  Map<String, dynamic> toJson() {
  final Map<String, dynamic> _data = <String, dynamic>{};
  _data["name"] = name;
  _data["class"] = classes;
  _data["series"] = series;
  return _data;
  }
}