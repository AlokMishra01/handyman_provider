import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:handyman_provider/core/models/accepted_services/accepted_service_model.dart';

part 'my_balance_model.freezed.dart';
part 'my_balance_model.g.dart';

@freezed
class MyBalanceModel with _$MyBalanceModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MyBalanceModel({
    @Default([]) List<BalanceModel> data,
    Links? links,
    Meta? meta,
  }) = _MyBalanceModel;

  factory MyBalanceModel.fromJson(Map<String, dynamic> json) =>
      _$MyBalanceModelFromJson(json);
}

@freezed
class BalanceModel with _$BalanceModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory BalanceModel({
    @Default('') String transactionId,
    DateTime? date,
    @Default('') String currency,
    @Default('') String type,
    @Default('') String amount,
    @Default('') String voucher,
    @Default('') String status,
    @Default('') String remark,
  }) = _BalanceModel;

  factory BalanceModel.fromJson(Map<String, dynamic> json) =>
      _$BalanceModelFromJson(json);
}
