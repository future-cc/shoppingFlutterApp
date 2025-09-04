import 'links.dart';

class ContinentsModel {
  ContinentsModel({
      this.code, 
      this.name, 
      this.countries, 
      this.links,});

  ContinentsModel.fromJson(dynamic json) {
    code = json['code'];
    name = json['name'];
    if (json['countries'] != null) {
      countries = [];
      json['countries'].forEach((v) {
        countries?.add(Country.fromJson(v));
      });
    }
    links = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }
  String? code;
  String? name;
  List<Country>? countries;
  Links? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['name'] = name;
    if (countries != null) {
      map['countries'] = countries?.map((v) => v.toJson()).toList();
    }
    if (links != null) {
      map['_links'] = links?.toJson();
    }
    return map;
  }

}

class Country {
  Country({
      this.code, 
      this.name, 
      this.currencyCode, 
      this.currencyPos, 
      this.decimalSep, 
      this.dimensionUnit, 
      this.numDecimals, 
      this.thousandSep, 
      this.weightUnit, 
      this.states,});

  Country.fromJson(dynamic json) {
    code = json['code'];
    name = json['name'];
    currencyCode = json['currency_code'];
    currencyPos = json['currency_pos'];
    decimalSep = json['decimal_sep'];
    dimensionUnit = json['dimension_unit'];
    numDecimals = json['num_decimals'];
    thousandSep = json['thousand_sep'];
    weightUnit = json['weight_unit'];
    if (json['states'] != null) {
      states = [];
      json['states'].forEach((v) {
        states?.add(States.fromJson(v));
      });
    }
  }
  String? code;
  String? name;
  String? currencyCode;
  String? currencyPos;
  String? decimalSep;
  String? dimensionUnit;
  int? numDecimals;
  String? thousandSep;
  String? weightUnit;
  List<States>? states;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['name'] = name;
    map['currency_code'] = currencyCode;
    map['currency_pos'] = currencyPos;
    map['decimal_sep'] = decimalSep;
    map['dimension_unit'] = dimensionUnit;
    map['num_decimals'] = numDecimals;
    map['thousand_sep'] = thousandSep;
    map['weight_unit'] = weightUnit;
    if (states != null) {
      map['states'] = states?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class States {
  States({
      this.code, 
      this.name,});

  States.fromJson(dynamic json) {
    code = json['code'];
    name = json['name'];
  }
  String? code;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['name'] = name;
    return map;
  }

}