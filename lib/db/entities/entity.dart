abstract class Entity {

  late Map<String, dynamic> map;

  String get tableName;

  Entity fromJson(dynamic json);
}