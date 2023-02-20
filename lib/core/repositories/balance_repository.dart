abstract class BalanceRepository {
  Future<dynamic> getBalance();

  Future<dynamic> getIncome();

  Future<dynamic> topUp({
    required double amount,
    required String payment,
    required String voucher,
  });
}
