abstract class BalanceRepository {
  Future<dynamic> getBalance();

  Future<dynamic> getIncome();

  Future<dynamic> topUp();
}
