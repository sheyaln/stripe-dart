part of '../../messages.dart';

enum PaymentMethodType {
  // ignore: constant_identifier_names
  acss_debit,
  affirm,
  // ignore: constant_identifier_names
  afterpay_clearpay,
  alipay,
  // ignore: constant_identifier_names
  amazon_pay,
  // ignore: constant_identifier_names
  au_becs_debit,
  // ignore: constant_identifier_names
  bacs_debit,
  bancontact,
  blik,
  boleto,
  card,
  cashapp,
  // ignore: constant_identifier_names
  customer_balance,
  eps,
  fpx,
  giropay,
  grabpay,
  ideal,
  klarna,
  konbini,
  link,
  oxxo,
  p24,
  paynow,
  pix,
  promptpay,
  // ignore: constant_identifier_names
  sepa_debit,
  sofort,
  // ignore: constant_identifier_names
  us_bank_account,
  // ignore: constant_identifier_names
  wechat_pay,
}

@JsonSerializable()
class CheckoutSession extends Message {
  final String? id;
  final String? object;
  final int? amountSubtotal;
  final int? amountTotal;
  final AutomaticTax? automaticTax;
  final String? billingAddressCollection;
  final String? cancelUrl;
  final String? clientReferenceId;
  final int created;
  final String currency;
  final List<dynamic>? customFields;
  final CustomText? customText;
  final String? customer;
  final String? customerCreation;
  final dynamic? customerDetails;
  final String? customerEmail;
  final int expiresAt;
  final String? invoice;
  final InvoiceCreation? invoiceCreation;
  final bool livemode;
  final String? locale;
  final Map<String, String>? metadata;
  final String? mode;
  final String? paymentIntent;
  final String? paymentLink;
  final String? paymentMethodCollection;
  final dynamic? paymentMethodOptions;
  final List<PaymentMethodType>? paymentMethodTypes;
  final String? paymentStatus;
  final PhoneNumberCollection? phoneNumberCollection;
  final String? recoveredFrom;
  final String? setupIntent;
  final String? shippingAddressCollection;
  final dynamic shippingRate;
  final List<dynamic>? shippingOptions;
  final String? status;
  final String? submitType;
  final String? subscription;
  final String? successUrl;
  final TotalDetails totalDetails;
  final String? url;

  CheckoutSession({
    required this.id,
    required this.object,
    this.amountSubtotal,
    this.amountTotal,
    this.automaticTax,
    this.billingAddressCollection,
    this.cancelUrl,
    this.clientReferenceId,
    required this.created,
    required this.currency,
    this.customFields,
    this.customText,
    this.customer,
    this.customerCreation,
    this.customerDetails,
    this.customerEmail,
    required this.expiresAt,
    this.invoice,
    this.invoiceCreation,
    required this.livemode,
    this.locale,
    this.metadata,
    this.mode,
    this.paymentIntent,
    this.paymentLink,
    this.paymentMethodCollection,
    this.paymentMethodOptions,
    this.paymentMethodTypes,
    required this.paymentStatus,
    this.phoneNumberCollection,
    this.recoveredFrom,
    this.setupIntent,
    this.shippingAddressCollection,
    this.shippingRate,
    this.shippingOptions,
    required this.status,
    this.submitType,
    this.subscription,
    required this.successUrl,
    required this.totalDetails,
    required this.url,
  });

  factory CheckoutSession.fromJson(Map<String, dynamic> json) =>
      _$CheckoutSessionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CheckoutSessionToJson(this);
}

@JsonSerializable()
class AutomaticTax {
  final bool enabled;
  final dynamic liability;
  final dynamic status;

  AutomaticTax({
    required this.enabled,
    this.liability,
    this.status,
  });

  factory AutomaticTax.fromJson(Map<String, dynamic> json) =>
      _$AutomaticTaxFromJson(json);

  Map<String, dynamic> toJson() => _$AutomaticTaxToJson(this);
}

@JsonSerializable()
class CustomText {
  final dynamic shippingAddress;
  final dynamic submit;

  CustomText({
    this.shippingAddress,
    this.submit,
  });

  factory CustomText.fromJson(Map<String, dynamic> json) =>
      _$CustomTextFromJson(json);

  Map<String, dynamic> toJson() => _$CustomTextToJson(this);
}

@JsonSerializable()
class InvoiceCreation {
  final bool enabled;
  final InvoiceData invoiceData;

  InvoiceCreation({
    required this.enabled,
    required this.invoiceData,
  });

  factory InvoiceCreation.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCreationFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceCreationToJson(this);
}

@JsonSerializable()
class InvoiceData {
  final dynamic accountTaxIds;
  final dynamic customFields;
  final String? description;
  final String? footer;
  final String? issuer;
  final Map<String, String>? metadata;
  final dynamic renderingOptions;

  InvoiceData({
    this.accountTaxIds,
    this.customFields,
    this.description,
    this.footer,
    this.issuer,
    this.metadata,
    this.renderingOptions,
  });

  factory InvoiceData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceDataFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceDataToJson(this);
}

@JsonSerializable()
class PhoneNumberCollection {
  final bool enabled;

  PhoneNumberCollection({
    required this.enabled,
  });

  factory PhoneNumberCollection.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$PhoneNumberCollectionToJson(this);
}

@JsonSerializable()
class TotalDetails {
  final int amountDiscount;
  final int amountShipping;
  final int amountTax;

  TotalDetails({
    required this.amountDiscount,
    required this.amountShipping,
    required this.amountTax,
  });

  factory TotalDetails.fromJson(Map<String, dynamic> json) =>
      _$TotalDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$TotalDetailsToJson(this);
}
