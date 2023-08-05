import 'dart:convert';

List<CharacterlistModel> CharacterlistModelFromJson(String str) => List<CharacterlistModel>.from(json.decode(str).map((x) => CharacterlistModel.fromJson(x)));
class CharacterlistModel{
  Character? characters;
  CharacterlistModel({this.characters});
  factory CharacterlistModel.fromJson(Map json){
    return CharacterlistModel(
      characters: json['characters']!=null? new Character.fromJson(json['characters']):null
    );
  }

}
class Character{
  String? name;
  String? clss;
  String? series;
  Character({this.name,this.clss,this.series});
  factory Character.fromJson(Map json) {
    return Character(
    name: json['name'],
      clss: json['class'],
      series: json['series']
    );
  }
}