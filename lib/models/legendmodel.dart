class LegendModel{
  String? content;
  LegendModel({this.content});
  factory LegendModel.fromJson(Map<String,dynamic> json){
    return LegendModel(
      content: json['content'],
    );
  }
}