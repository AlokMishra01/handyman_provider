import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CartModel({
    @Default('') String name,
    @Default('') String mobile,
    @Default('') String latitude,
    @Default('') String longitude,
    @Default(0) int state,
    @Default(0) int city,
    @Default('') String datetime,
    @Default('') String address,
    @Default('') String payment,
    @Default('') String bankDoc,
    @Default([]) List<Question> questionfiles,
    @Default([]) List<Service> services,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}

@freezed
class Question with _$Question {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Question({
    @Default('') String file,
    @Default(0) int serviceId,
    @Default(0) int questionId,
    @Default(0) int type,
    @Default('') String answer,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@freezed
class Service with _$Service {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Service({
    @Default(0) int id,
    @Default(0) int quantity,
    @Default(0) int type,
    @Default(0) int psid,
    @Default('') String title,
    @Default(0) int discount,
    @Default(0) int price,
    @Default([]) List<Question> question,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}
