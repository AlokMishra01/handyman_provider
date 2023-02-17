abstract class AcceptedServiceRepository {
  Future<dynamic> getAssigned();

  Future<dynamic> getAccepted();

  Future<dynamic> acceptService(int id);

  Future<dynamic> completeService(int id);
}
