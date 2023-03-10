// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'billing_client_wrapper.dart';
import 'product_details_wrappers/subscription_offer_details_wrapper.dart';

// WARNING: Changes to `@JsonSerializable` classes need to be reflected in the
// below generated file. Run `flutter packages pub run build_runner watch` to
// rebuild and watch for further changes.
part 'product_details_wrapper.g.dart';

/// The error message shown when the map represents billing result is invalid from method channel.
///
/// This usually indicates a series underlining code issue in the plugin.
@visibleForTesting
const String kInvalidBillingResultErrorMessage =
    'Invalid billing result map from method channel.';

/// Dart wrapper around [`com.android.billingclient.api.ProductDetails`](https://developer.android.com/reference/com/android/billingclient/api/ProductDetails).
///
/// Contains the details of an available product in Google Play Billing.
@JsonSerializable()
@SkuTypeConverter()
@immutable
class ProductDetailsWrapper {
  /// Creates a [ProductDetailsWrapper] with the given purchase details.
  @visibleForTesting
  const ProductDetailsWrapper(
      {required this.title,
      required this.name,
      required this.description,
      @Deprecated('Use `productId` parameter instead') required this.sku,
      required this.productId,
      required this.type,
      required this.subscriptionOfferDetails});

  /// Constructs an instance of this from a key value map of data.
  ///
  /// The map needs to have named string keys with values matching the names and
  /// types of all of the members on this class.
  @visibleForTesting
  factory ProductDetailsWrapper.fromJson(Map<String, dynamic> map) =>
      _$ProductDetailsWrapperFromJson(map);

  /// The title of the product being sold.
  @JsonKey(defaultValue: '')
  final String title;

  /// The name of the product being sold.
  @JsonKey(defaultValue: '')
  final String name;

  /// The description of the product.
  @JsonKey(defaultValue: '')
  final String description;

  /// The product ID in Google Play Console.
  @Deprecated('Use `productId` instead.')
  @JsonKey(defaultValue: '')
  final String sku;

  /// The product's Id.
  @JsonKey(defaultValue: '')
  final String productId;

  /// The [SkuType] of the product.
  final SkuType type;

  /// A list containing all available offers to purchase a subscription product.
  final List<SubscriptionOfferDetailsWrapper> subscriptionOfferDetails;

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }

    return other is ProductDetailsWrapper &&
        other.description == description &&
        other.title == title &&
        other.type == type;
  }

  @override
  int get hashCode {
    return Object.hash(
      description.hashCode,
      sku.hashCode,
      title.hashCode,
      type.hashCode,
    );
  }
}

/// Translation of [`com.android.billingclient.api.ProductDetailsResponseListener`](https://developer.android.com/reference/com/android/billingclient/api/ProductDetailsResponseListener.html).
///
/// Returned by [BillingClient.queryProductDetails].
@JsonSerializable()
@immutable
class ProductDetailsResponseWrapper {
  /// Creates a [ProductDetailsResponseWrapper] with the given purchase details.
  @visibleForTesting
  const ProductDetailsResponseWrapper(
      {required this.billingResult, required this.skuDetailsList});

  /// Constructs an instance of this from a key value map of data.
  ///
  /// The map needs to have named string keys with values matching the names and
  /// types of all of the members on this class.
  factory ProductDetailsResponseWrapper.fromJson(Map<String, dynamic> map) =>
      _$ProductDetailsResponseWrapperFromJson(map);

  /// The final result of the [BillingClient.queryProductDetails] call.
  final BillingResultWrapper billingResult;

  /// A list of [ProductDetailsWrapper] matching the query to [BillingClient.queryProductDetails].
  @JsonKey(defaultValue: <ProductDetailsWrapper>[])
  final List<ProductDetailsWrapper> skuDetailsList;

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }

    return other is ProductDetailsResponseWrapper &&
        other.billingResult == billingResult &&
        other.skuDetailsList == skuDetailsList;
  }

  @override
  int get hashCode => Object.hash(billingResult, skuDetailsList);
}

/// Params containing the response code and the debug message from the Play Billing API response.
@JsonSerializable()
@BillingResponseConverter()
@immutable
class BillingResultWrapper {
  /// Constructs the object with [responseCode] and [debugMessage].
  const BillingResultWrapper({required this.responseCode, this.debugMessage});

  /// Constructs an instance of this from a key value map of data.
  ///
  /// The map needs to have named string keys with values matching the names and
  /// types of all of the members on this class.
  factory BillingResultWrapper.fromJson(Map<String, dynamic>? map) {
    if (map == null || map.isEmpty) {
      return const BillingResultWrapper(
          responseCode: BillingResponse.error,
          debugMessage: kInvalidBillingResultErrorMessage);
    }
    return _$BillingResultWrapperFromJson(map);
  }

  /// Response code returned in the Play Billing API calls.
  final BillingResponse responseCode;

  /// Debug message returned in the Play Billing API calls.
  ///
  /// Defaults to `null`.
  /// This message uses an en-US locale and should not be shown to users.
  final String? debugMessage;

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }

    return other is BillingResultWrapper &&
        other.responseCode == responseCode &&
        other.debugMessage == debugMessage;
  }

  @override
  int get hashCode => Object.hash(responseCode, debugMessage);
}
