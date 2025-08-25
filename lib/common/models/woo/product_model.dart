import '../index.dart';

class ProductModel {
  ProductModel({
    this.id,
    this.name,
    this.slug,
    this.permalink,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.type,
    this.status,
    this.featured,
    this.catalogVisibility,
    this.description,
    this.shortDescription,
    this.sku,
    this.price,
    this.regularPrice,
    this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.virtual,
    this.downloadable,
    this.downloads,
    this.downloadLimit,
    this.downloadExpiry,
    this.externalUrl,
    this.buttonText,
    this.taxStatus,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.backorders,
    this.backordersAllowed,
    this.backordered,
    this.lowStockAmount,
    this.soldIndividually,
    this.weight,
    this.dimensions,
    this.shippingRequired,
    this.shippingTaxable,
    this.shippingClass,
    this.shippingClassId,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
    this.upsellIds,
    this.crossSellIds,
    this.parentId,
    this.purchaseNote,
    this.categories,
    this.tags,
    this.images,
    this.attributes,
    this.defaultAttributes,
    this.variations,
    this.groupedProducts,
    this.menuOrder,
    this.priceHtml,
    this.relatedIds,
    this.metaData,
    this.stockStatus,
    this.hasOptions,
    this.links,
  });

  ProductModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    permalink = json['permalink'];
    dateCreated = json['date_created'];
    dateCreatedGmt = json['date_created_gmt'];
    dateModified = json['date_modified'];
    dateModifiedGmt = json['date_modified_gmt'];
    type = json['type'];
    status = json['status'];
    featured = json['featured'];
    catalogVisibility = json['catalog_visibility'];
    description = json['description'];
    shortDescription = json['short_description'];
    sku = json['sku'];
    price = json['price'];
    regularPrice = json['regular_price'];
    salePrice = json['sale_price'];
    dateOnSaleFrom = json['date_on_sale_from'];
    dateOnSaleFromGmt = json['date_on_sale_from_gmt'];
    dateOnSaleTo = json['date_on_sale_to'];
    dateOnSaleToGmt = json['date_on_sale_to_gmt'];
    onSale = json['on_sale'];
    purchasable = json['purchasable'];
    totalSales = json['total_sales'];
    virtual = json['virtual'];
    downloadable = json['downloadable'];
    downloads =
        json['downloads'] != null ? json['downloads'].cast<String>() : [];
    downloadLimit = json['download_limit'];
    downloadExpiry = json['download_expiry'];
    externalUrl = json['external_url'];
    buttonText = json['button_text'];
    taxStatus = json['tax_status'];
    taxClass = json['tax_class'];
    manageStock = json['manage_stock'];
    stockQuantity = json['stock_quantity'];
    backorders = json['backorders'];
    backordersAllowed = json['backorders_allowed'];
    backordered = json['backordered'];
    lowStockAmount = json['low_stock_amount'];
    soldIndividually = json['sold_individually'];
    weight = json['weight'];
    dimensions = json['dimensions'] != null
        ? Dimensions.fromJson(json['dimensions'])
        : null;
    shippingRequired = json['shipping_required'];
    shippingTaxable = json['shipping_taxable'];
    shippingClass = json['shipping_class'];
    shippingClassId = json['shipping_class_id'];
    reviewsAllowed = json['reviews_allowed'];
    averageRating = json['average_rating'];
    ratingCount = json['rating_count'];
    upsellIds =
        json['upsell_ids'] != null ? json['upsell_ids'].cast<String>() : [];
    crossSellIds = json['cross_sell_ids'] != null
        ? json['cross_sell_ids'].cast<String>()
        : [];
    parentId = json['parent_id'];
    purchaseNote = json['purchase_note'];
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories?.add(Categories.fromJson(v));
      });
    }
    if (json['tags'] != null) {
      tags = [];
      json['tags'].forEach((v) {
        tags?.add(Tags.fromJson(v));
      });
    }
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    if (json['attributes'] != null) {
      attributes = [];
      json['attributes'].forEach((v) {
        attributes?.add(Attributes.fromJson(v));
      });
    }
    defaultAttributes = json['default_attributes'] != null
        ? json['default_attributes'].cast<String>()
        : [];
    variations =
        json['variations'] != null ? json['variations'].cast<String>() : [];
    groupedProducts = json['grouped_products'] != null
        ? json['grouped_products'].cast<String>()
        : [];
    menuOrder = json['menu_order'];
    priceHtml = json['price_html'];
    relatedIds =
        json['related_ids'] != null ? json['related_ids'].cast<int>() : [];
    if (json['meta_data'] != null) {
      metaData = [];
      json['meta_data'].forEach((v) {
        metaData?.add(MetaData.fromJson(v));
      });
    }
    stockStatus = json['stock_status'];
    hasOptions = json['has_options'];
    links = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  int? id;
  String? name;
  String? slug;
  String? permalink;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? type;
  String? status;
  bool? featured;
  String? catalogVisibility;
  String? description;
  String? shortDescription;
  String? sku;
  String? price;
  String? regularPrice;
  String? salePrice;
  dynamic dateOnSaleFrom;
  dynamic dateOnSaleFromGmt;
  dynamic dateOnSaleTo;
  dynamic dateOnSaleToGmt;
  bool? onSale;
  bool? purchasable;
  int? totalSales;
  bool? virtual;
  bool? downloadable;
  List<String>? downloads;
  int? downloadLimit;
  int? downloadExpiry;
  String? externalUrl;
  String? buttonText;
  String? taxStatus;
  String? taxClass;
  bool? manageStock;
  dynamic stockQuantity;
  String? backorders;
  bool? backordersAllowed;
  bool? backordered;
  dynamic lowStockAmount;
  bool? soldIndividually;
  String? weight;
  Dimensions? dimensions;
  bool? shippingRequired;
  bool? shippingTaxable;
  String? shippingClass;
  int? shippingClassId;
  bool? reviewsAllowed;
  String? averageRating;
  int? ratingCount;
  List<String>? upsellIds;
  List<String>? crossSellIds;
  int? parentId;
  String? purchaseNote;
  List<Categories>? categories;
  List<Tags>? tags;
  List<Images>? images;
  List<Attributes>? attributes;
  List<String>? defaultAttributes;
  List<String>? variations;
  List<String>? groupedProducts;
  int? menuOrder;
  String? priceHtml;
  List<int>? relatedIds;
  List<MetaData>? metaData;
  String? stockStatus;
  bool? hasOptions;
  Links? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['permalink'] = permalink;
    map['date_created'] = dateCreated;
    map['date_created_gmt'] = dateCreatedGmt;
    map['date_modified'] = dateModified;
    map['date_modified_gmt'] = dateModifiedGmt;
    map['type'] = type;
    map['status'] = status;
    map['featured'] = featured;
    map['catalog_visibility'] = catalogVisibility;
    map['description'] = description;
    map['short_description'] = shortDescription;
    map['sku'] = sku;
    map['price'] = price;
    map['regular_price'] = regularPrice;
    map['sale_price'] = salePrice;
    map['date_on_sale_from'] = dateOnSaleFrom;
    map['date_on_sale_from_gmt'] = dateOnSaleFromGmt;
    map['date_on_sale_to'] = dateOnSaleTo;
    map['date_on_sale_to_gmt'] = dateOnSaleToGmt;
    map['on_sale'] = onSale;
    map['purchasable'] = purchasable;
    map['total_sales'] = totalSales;
    map['virtual'] = virtual;
    map['downloadable'] = downloadable;
    map['downloads'] = downloads;
    map['download_limit'] = downloadLimit;
    map['download_expiry'] = downloadExpiry;
    map['external_url'] = externalUrl;
    map['button_text'] = buttonText;
    map['tax_status'] = taxStatus;
    map['tax_class'] = taxClass;
    map['manage_stock'] = manageStock;
    map['stock_quantity'] = stockQuantity;
    map['backorders'] = backorders;
    map['backorders_allowed'] = backordersAllowed;
    map['backordered'] = backordered;
    map['low_stock_amount'] = lowStockAmount;
    map['sold_individually'] = soldIndividually;
    map['weight'] = weight;
    if (dimensions != null) {
      map['dimensions'] = dimensions?.toJson();
    }
    map['shipping_required'] = shippingRequired;
    map['shipping_taxable'] = shippingTaxable;
    map['shipping_class'] = shippingClass;
    map['shipping_class_id'] = shippingClassId;
    map['reviews_allowed'] = reviewsAllowed;
    map['average_rating'] = averageRating;
    map['rating_count'] = ratingCount;
    map['upsell_ids'] = upsellIds;
    map['cross_sell_ids'] = crossSellIds;
    map['parent_id'] = parentId;
    map['purchase_note'] = purchaseNote;
    if (categories != null) {
      map['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    if (tags != null) {
      map['tags'] = tags?.map((v) => v.toJson()).toList();
    }
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    if (attributes != null) {
      map['attributes'] = attributes?.map((v) => v.toJson()).toList();
    }
    map['default_attributes'] = defaultAttributes;
    map['variations'] = variations;
    map['grouped_products'] = groupedProducts;
    map['menu_order'] = menuOrder;
    map['price_html'] = priceHtml;
    map['related_ids'] = relatedIds;
    if (metaData != null) {
      map['meta_data'] = metaData?.map((v) => v.toJson()).toList();
    }
    map['stock_status'] = stockStatus;
    map['has_options'] = hasOptions;
    if (links != null) {
      map['_links'] = links?.toJson();
    }
    return map;
  }
}

class Attributes {
  Attributes({
    this.id,
    this.name,
    this.position,
    this.visible,
    this.variation,
    this.options,
  });

  Attributes.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    position = json['position'];
    visible = json['visible'];
    variation = json['variation'];
    options = json['options'] != null ? json['options'].cast<String>() : [];
  }

  int? id;
  String? name;
  int? position;
  bool? visible;
  bool? variation;
  List<String>? options;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['position'] = position;
    map['visible'] = visible;
    map['variation'] = variation;
    map['options'] = options;
    return map;
  }
}

class Images {
  Images({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.src,
    this.name,
    this.alt,
  });

  Images.fromJson(dynamic json) {
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

class Tags {
  Tags({
    this.id,
    this.name,
    this.slug,
  });

  Tags.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }

  int? id;
  String? name;
  String? slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    return map;
  }
}

class Categories {
  Categories({
    this.id,
    this.name,
    this.slug,
  });

  Categories.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }

  int? id;
  String? name;
  String? slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    return map;
  }
}

class Dimensions {
  Dimensions({
    this.length,
    this.width,
    this.height,
  });

  Dimensions.fromJson(dynamic json) {
    length = json['length'];
    width = json['width'];
    height = json['height'];
  }

  String? length;
  String? width;
  String? height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['length'] = length;
    map['width'] = width;
    map['height'] = height;
    return map;
  }
}
