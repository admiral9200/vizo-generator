abstract class FirebaseConstants {
  const FirebaseConstants._();
  static const initialFetchLimit = 10; // 25
  static const paginationFetchLimit = 10; // 10

  static DateTime get oldestDocumentDateTime => DateTime(
        DateTime.now().year - 5,
      );
}
