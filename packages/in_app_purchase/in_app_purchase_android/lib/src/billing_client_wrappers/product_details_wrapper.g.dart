// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetailsWrapper _$ProductDetailsWrapperFromJson(Map json) =>
    ProductDetailsWrapper(
      title: json['title'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      sku: json['sku'] as String? ?? '',
      productId: json['productId'] as String? ?? '',
      type: const SkuTypeConverter().fromJson(json['type'] as String?),
      subscriptionOfferDetails:
          (json['subscriptionOfferDetails'] as List<dynamic>)
              .map((e) => SubscriptionOfferDetailsWrapper.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList(),
    );

ProductDetailsResponseWrapper _$ProductDetailsResponseWrapperFromJson(
        Map json) =>
    ProductDetailsResponseWrapper(
      billingResult:
          BillingResultWrapper.fromJson((json['billingResult'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      )),
      skuDetailsList: (json['skuDetailsList'] as List<dynamic>?)
              ?.map((e) => ProductDetailsWrapper.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
    );

BillingResultWrapper _$BillingResultWrapperFromJson(Map json) =>
    BillingResultWrapper(
      responseCode: const BillingResponseConverter()
          .fromJson(json['responseCode'] as int?),
      debugMessage: json['debugMessage'] as String?,
    );
