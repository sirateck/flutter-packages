// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_phase_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PricingPhaseWrapper _$PricingPhaseWrapperFromJson(Map json) =>
    PricingPhaseWrapper(
      billingCycleCount: json['billingCycleCount'] as int? ?? 0,
      billingPeriod: json['billingPeriod'] as String? ?? '',
      formattedPrice: json['formattedPrice'] as String? ?? '',
      priceAmountMicros: json['priceAmountMicros'] as int? ?? 0,
      priceCurrencyCode: json['priceCurrencyCode'] as String? ?? '',
      recurrenceMode: json['recurrenceMode'] as int? ?? 1,
    );
