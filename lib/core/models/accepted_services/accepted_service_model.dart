import 'package:freezed_annotation/freezed_annotation.dart';

part 'accepted_service_model.freezed.dart';
part 'accepted_service_model.g.dart';

@freezed
class AcceptedServiceModel with _$AcceptedServiceModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AcceptedServiceModel({
    @Default([]) List<AcceptedServiceData> data,
    Links? links,
    Meta? meta,
  }) = _AcceptedServiceModel;

  factory AcceptedServiceModel.fromJson(Map<String, dynamic> json) =>
      _$AcceptedServiceModelFromJson(json);
}

@freezed
class AcceptedServiceData with _$AcceptedServiceData {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AcceptedServiceData({
    @Default(-1) int orderId,
    @Default(-1) int serviceId,
    @Default('') String name,
    @Default(-1) int refNo,
    @Default(0) int quantity,
    @Default('') String amount,
    @Default('') String taxAmount,
    @Default('') String discountAmount,
    @Default('') String payment,
    @Default('') String paymentStatus,
    @Default('') String orderStatus,
    @Default('') String serviceStatus,
    DateTime? serviceDate,
    OrderAddress? orderAddress,
    @Default([]) List<OrderHistory> orderHistory,
    @Default([]) List<Answer> answers,
  }) = _AcceptedServiceData;

  factory AcceptedServiceData.fromJson(Map<String, dynamic> json) =>
      _$AcceptedServiceDataFromJson(json);
}

@freezed
class Answer with _$Answer {
  const Answer._();

  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Answer({
    @Default(-1) int id,
    @Default(-1) int orderServiceId,
    @Default(-1) int consumerId,
    @Default(-1) int serviceQuestionId,
    @Default('') String type,
    @Default('') String answer,
    @Default({}) Map<String, dynamic> question,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);

  String get getQuestion => question['question'] ?? '';
}

@freezed
class OrderAddress with _$OrderAddress {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OrderAddress({
    @Default('') String orderName,
    @Default('') String mobile,
    @Default('') String address,
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
  }) = _OrderAddress;

  factory OrderAddress.fromJson(Map<String, dynamic> json) =>
      _$OrderAddressFromJson(json);
}

@freezed
class OrderHistory with _$OrderHistory {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OrderHistory({
    @Default(-1) int id,
    @Default('') String action,
    @Default('') String description,
    @Default('') String createdAt,
  }) = _OrderHistory;

  factory OrderHistory.fromJson(Map<String, dynamic> json) =>
      _$OrderHistoryFromJson(json);
}

@freezed
class Links with _$Links {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Links({
    @Default('') String first,
    @Default('') String last,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
class Meta with _$Meta {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Meta({
    @Default(0) int currentPage,
    @Default(0) int from,
    @Default(0) int lastPage,
    @Default([]) List<Link> links,
    @Default('') String path,
    @Default(0) int perPage,
    @Default(0) int to,
    @Default(0) int total,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class Link with _$Link {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Link({
    @Default('') String url,
    @Default('') String label,
    @Default(false) bool active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
