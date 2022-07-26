import 'package:bagel_db/bagel_db.dart';

import '../../core.dart';

class TranslationRepositoryBagel extends BagelRepository
    implements TranslationRepository {
  TranslationRepositoryBagel(this.bagel);

  final BagelDB bagel;

  @override
  BagelDBRequest get collection => bagel.collection(TRANSLATIONS_COLLECTION);

  @override
  Future<List<Map<String, dynamic>>> fetchTranslations() async {
    try {
      final response = await collection.get();
      final responseData = response.data as List;
      return List.generate(
        responseData.length,
        (i) => responseData[i] as Map<String, dynamic>,
      );
    } on Exception {
      rethrow;
    }
  }
}
