import '../../core.dart';

abstract class LanguageRepository {
  Future<List<LanguageModel>> fetchLanguages();
}
