abstract class DocumentRepository {
  Future<dynamic> getDocTypes();

  Future<dynamic> getMyDocs();

  Future<dynamic> addDoc({
    required String title,
    required String type,
    required String file,
    bool isUpdate = false,
  });

  Future<dynamic> removeDoc(int id);
}
