// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_offer_details_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionOfferDetailsWrapper _$SubscriptionOfferDetailsWrapperFromJson(
        Map json) =>
    SubscriptionOfferDetailsWrapper(
      basePlanId: json['basePlanId'] as String? ?? '',
      offerId: json['offerId'] as String? ?? '',
      offerToken: json['offerToken'] as String? ?? '',
      pricingPhases: (json['pricingPhases'] as List<dynamic>?)
              ?.map((e) => PricingPhaseWrapper.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
      offerTags: (json['offerTags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );
