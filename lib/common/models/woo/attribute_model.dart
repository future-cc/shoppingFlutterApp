import 'index.dart';

class AttributeModel {
  AttributeModel({
      this.id, 
      this.name, 
      this.slug, 
      this.description, 
      this.menuOrder, 
      this.count, 
      this.links,});

  AttributeModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    description = json['description'];
    menuOrder = json['menu_order'];
    count = json['count'];
    links = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }
  int? id;
  String? name;
  String? slug;
  String? description;
  int? menuOrder;
  int? count;
  Links? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['description'] = description;
    map['menu_order'] = menuOrder;
    map['count'] = count;
    if (links != null) {
      map['_links'] = links?.toJson();
    }
    return map;
  }

}