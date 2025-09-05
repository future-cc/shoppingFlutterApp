import 'package:woo_shopping_flutter/common/index.dart';

class LineItem {
  LineItem({
      this.id, 
      this.name, 
      this.productId, 
      this.variationId, 
      this.quantity, 
      this.taxClass, 
      this.subtotal, 
      this.subtotalTax, 
      this.total, 
      this.totalTax, 
      this.taxes, 
      this.metaData, 
      this.sku, 
      this.price, 
      this.parentName, 
      this.product,});

  LineItem.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    productId = json['product_id'];
    variationId = json['variation_id'];
    quantity = json['quantity'];
    taxClass = json['tax_class'];
    subtotal = json['subtotal'];
    subtotalTax = json['subtotal_tax'];
    total = json['total'];
    totalTax = json['total_tax'];
    taxes = json['taxes'] != null ? json['taxes'].cast<String>() : [];
    metaData = json['meta_data'] != null ? json['meta_data'].cast<String>() : [];
    sku = json['sku'];
    price = json['price'];
    parentName = json['parent_name'];
    product = json['product'] != null ? ProductModel.fromJson(json['product']) : null;
  }
  int? id;
  String? name;
  int? productId;
  int? variationId;
  int? quantity;
  String? taxClass;
  String? subtotal;
  String? subtotalTax;
  String? total;
  String? totalTax;
  List<String>? taxes;
  List<String>? metaData;
  String? sku;
  int? price;
  dynamic parentName;
  ProductModel? product;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['product_id'] = productId;
    map['variation_id'] = variationId;
    map['quantity'] = quantity;
    map['tax_class'] = taxClass;
    map['subtotal'] = subtotal;
    map['subtotal_tax'] = subtotalTax;
    map['total'] = total;
    map['total_tax'] = totalTax;
    map['taxes'] = taxes;
    map['meta_data'] = metaData;
    map['sku'] = sku;
    map['price'] = price;
    map['parent_name'] = parentName;
    if (product != null) {
      map['product'] = product?.toJson();
    }
    return map;
  }

}