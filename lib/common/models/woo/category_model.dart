import '../index.dart';

class CategoryModel {
  CategoryModel({
    this.id,
    this.name,
    this.slug,
    this.parent,
    this.description,
    this.display,
    this.image,
    this.menuOrder,
    this.count,
    this.links,
  });

  CategoryModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    parent = json['parent'];
    description = json['description'];
    display = json['display'];
    image = json['image'] != null ? ImageResponse.fromJson(json['image']) : null;
    menuOrder = json['menu_order'];
    count = json['count'];
    links = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  int? id;
  String? name;
  String? slug;
  int? parent;
  String? description;
  String? display;
  ImageResponse? image;
  int? menuOrder;
  int? count;
  Links? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['parent'] = parent;
    map['description'] = description;
    map['display'] = display;
    if (image != null) {
      map['image'] = image?.toJson();
    }
    map['menu_order'] = menuOrder;
    map['count'] = count;
    if (links != null) {
      map['_links'] = links?.toJson();
    }
    return map;
  }
}

class ImageResponse {
  ImageResponse({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.src,
    this.name,
    this.alt,
  });

  ImageResponse.fromJson(dynamic json) {
    id = json['id'];
    dateCreated = json['date_created'];
    dateCreatedGmt = json['date_created_gmt'];
    dateModified = json['date_modified'];
    dateModifiedGmt = json['date_modified_gmt'];
    src = json['src'];
    name = json['name'];
    alt = json['alt'];
  }

  int? id;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? src;
  String? name;
  String? alt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['date_created'] = dateCreated;
    map['date_created_gmt'] = dateCreatedGmt;
    map['date_modified'] = dateModified;
    map['date_modified_gmt'] = dateModifiedGmt;
    map['src'] = src;
    map['name'] = name;
    map['alt'] = alt;
    return map;
  }
}
