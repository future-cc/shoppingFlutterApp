import '../index.dart';

class OrderModel {
  OrderModel({
      this.billing, 
      this.shipping, 
      this.lineItems, 
      this.couponLines,});

  OrderModel.fromJson(dynamic json) {
    billing = json['billing'] != null ? Billing.fromJson(json['billing']) : null;
    shipping = json['shipping'] != null ? Shipping.fromJson(json['shipping']) : null;
    if (json['line_items'] != null) {
      lineItems = [];
      json['line_items'].forEach((v) {
        lineItems?.add(LineItems.fromJson(v));
      });
    }
    if (json['coupon_lines'] != null) {
      couponLines = [];
      json['coupon_lines'].forEach((v) {
        couponLines?.add(CouponLines.fromJson(v));
      });
    }
  }
  Billing? billing;
  Shipping? shipping;
  List<LineItems>? lineItems;
  List<CouponLines>? couponLines;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (billing != null) {
      map['billing'] = billing?.toJson();
    }
    if (shipping != null) {
      map['shipping'] = shipping?.toJson();
    }
    if (lineItems != null) {
      map['line_items'] = lineItems?.map((v) => v.toJson()).toList();
    }
    if (couponLines != null) {
      map['coupon_lines'] = couponLines?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class CouponLines {
  CouponLines({
      this.code,});

  CouponLines.fromJson(dynamic json) {
    code = json['code'];
  }
  String? code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

}

class LineItems {
  LineItems({
      this.productId, 
      this.quantity,});

  LineItems.fromJson(dynamic json) {
    productId = json['product_id'];
    quantity = json['quantity'];
  }
  int? productId;
  int? quantity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['product_id'] = productId;
    map['quantity'] = quantity;
    return map;
  }

}
