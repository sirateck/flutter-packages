/**
 *   info.put("billingCycleCount", phase.getBillingCycleCount());
    info.put("billingPeriod", phase.getBillingPeriod());
    info.put("formattedPrice", phase.getFormattedPrice());
    info.put("priceAmountMicros", phase.getPriceAmountMicros());
    info.put("priceCurrencyCode", phase.getPriceCurrencyCode());
    info.put("recurrenceMode", phase.getRecurrenceMode());
 */

import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

// WARNING: Changes to `@JsonSerializable` classes need to be reflected in the
// below generated file. Run `flutter packages pub run build_runner watch` to
// rebuild and watch for further changes.
part 'pricing_phase_wrapper.g.dart';

/// Dart wrapper around [`com.android.billingclient.api.ProductDetails.PricingPhase`](https://developer.android.com/reference/com/android/billingclient/api/ProductDetails.PricingPhase).
///
/// Contains the details of an available product in Google Play Billing.
@JsonSerializable()
@immutable
class PricingPhaseWrapper {
  /// Creates a [PricingPhaseWrapper] with the given product details.
  @visibleForTesting
  const PricingPhaseWrapper(
      {required this.billingCycleCount,
      required this.billingPeriod,
      required this.formattedPrice,
      required this.priceAmountMicros,
      required this.priceCurrencyCode,
      required this.recurrenceMode});

  /// Constructs an instance of this from a key value map of data.
  ///
  /// The map needs to have named string keys with values matching the names and
  /// types of all of the members on this class.
  @visibleForTesting
  factory PricingPhaseWrapper.fromJson(Map<String, dynamic> map) =>
      _$PricingPhaseWrapperFromJson(map);

  /// Number of cycles for which the billing period is applied.
  @JsonKey(defaultValue: 0)
  final int billingCycleCount;

  /// Billing period for which the given price applies, specified in ISO 8601 format.
  @JsonKey(defaultValue: '')
  final String billingPeriod;

  /// Returns formatted price for the payment cycle, including its currency sign.
  @JsonKey(defaultValue: '')
  final String formattedPrice;

  /// Returns the price for the payment cycle in micro-units, where 1,000,000 micro-units equal one unit of the currency.
  @JsonKey(defaultValue: 0)
  final int priceAmountMicros;

  /// Returns ISO 4217 currency code for price.
  @JsonKey(defaultValue: '')
  final String priceCurrencyCode;

  /// Returns [`ProductDetails.RecurrenceMode`](https://developer.android.com/reference/com/android/billingclient/api/ProductDetails.RecurrenceMode) for the pricing phase.
  @JsonKey(defaultValue: 1)
  final int recurrenceMode;
}
