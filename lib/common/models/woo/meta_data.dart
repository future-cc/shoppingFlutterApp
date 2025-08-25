class MetaData {
  MetaData({
    this.id,
    this.key,
    this.value,
  });

  MetaData.fromJson(dynamic json) {
    id = json['id'];
    key = json['key'];
    value = json['value'];
  }

  int? id;
  String? key;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['key'] = key;
    map['value'] = value;
    return map;
  }
}