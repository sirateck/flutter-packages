import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'pricing_phase_wrapper.dart';

// WARNING: Changes to `@JsonSerializable` classes need to be reflected in the
// below generated file. Run `flutter packages pub run build_runner watch` to
// rebuild and watch for further changes.
part 'subscription_offer_details_wrapper.g.dart';

/// Dart wrapper around [`com.android.billingclient.api.ProductDetails.SubscriptionOfferDetails`](https://developer.android.com/reference/com/android/billingclient/api/ProductDetails.SubscriptionOfferDetails).
///
/// Contains the details of an available product in Google Play Billing.
@JsonSerializable()
@immutable
class SubscriptionOfferDetailsWrapper {
  /// Creates a [SubscriptionOfferDetailsWrapper] with the given product details.
  @visibleForTesting
  const SubscriptionOfferDetailsWrapper(
      {required this.basePlanId,
      required this.offerId,
      required this.offerToken,
      required this.pricingPhases,
      this.offerTags = const <String>[]});

  /// Constructs an instance of this from a key value map of data.
  ///
  /// The map needs to have named string keys with values matching the names and
  /// types of all of the members on this class.
  @visibleForTesting
  factory SubscriptionOfferDetailsWrapper.fromJson(Map<String, dynamic> map) =>
      _$SubscriptionOfferDetailsWrapperFromJson(map);

  /// The base plan id associated with the subscription product.
  @JsonKey(defaultValue: '')
  final String basePlanId;

  /// The offer id associated with the subscription product.
  @JsonKey(defaultValue: '')
  final String offerId;

  /// The offer token required to pass in launchBillingFlow to purchase the subscription product with these pricing phases.
  @JsonKey(defaultValue: '')
  final String offerToken;

  /// The offer tags associated with this Subscription Offer.
  @JsonKey(defaultValue: <String>[])
  final List<String> offerTags;

  /// The offer tags associated with this Subscription Offer.
  @JsonKey(defaultValue: <PricingPhaseWrapper>[])
  final List<PricingPhaseWrapper> pricingPhases;
}
