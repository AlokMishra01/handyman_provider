import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:handyman_provider/core/models/accepted_services/accepted_service_model.dart';

part 'my_income_model.freezed.dart';
part 'my_income_model.g.dart';

@freezed
class MyIncomeModel with _$MyIncomeModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MyIncomeModel({
    @Default([]) List<MyIncome> data,
    Links? links,
    Meta? meta,
  }) = _MyIncomeModel;

  factory MyIncomeModel.fromJson(Map<String, dynamic> json) =>
      _$MyIncomeModelFromJson(json);
}

@freezed
class MyIncome with _$MyIncome {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MyIncome({
    @Default(-1) int serviceId,
    @Default(-1) int orderId,
    @Default('') String name,
    @Default('') String amount,
    @Default('') String taxAmount,
    @Default('') String discountAmount,
    @Default('') String paymentStatus,
    DateTime? createdAt,
    @Default('') String paymentChannel,
  }) = _MyIncome;

  factory MyIncome.fromJson(Map<String, dynamic> json) =>
      _$MyIncomeFromJson(json);
}
