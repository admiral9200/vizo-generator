import 'package:bagel_db/bagel_db.dart';

import '../../core.dart';

class LanguageRepositoryBagel extends BagelRepository
    implements LanguageRepository {
  LanguageRepositoryBagel(this.bagel);

  final BagelDB bagel;

  @override
  BagelDBRequest get collection => bagel.collection(LANGUAGES_COLLECTION);

  @override
  Future<List<LanguageModel>> fetchLanguages() async {
    try {
      final response = await collection.get();
      final responseData = response.data as List;
      return List.generate(
        responseData.length,
        (i) => LanguageModel.fromJson(responseData[i] as Map<String, dynamic>),
      );
    } on Exception {
      rethrow;
    }
  }
}
