import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../domain/domain.dart';
import '../../repository/repository.dart';

part 'i18n_state.dart';

class I18nCubit extends Cubit<I18nState> {
  I18nCubit({
    required LanguageRepository languageRepository,
    required TranslationRepository translationRepository,
  })  : _languageRepository = languageRepository,
        _translationRepository = translationRepository,
        super(I18nInitial());

  final LanguageRepository _languageRepository;
  final TranslationRepository _translationRepository;

  Future<void> fetchI18nInfo() async {
    emit(
      I18nInfoLoading(),
    );

    try {
      final languages = await _languageRepository.fetchLanguages();
      final translations = await _translationRepository.fetchTranslations();
      final resourcesMap = _buildResourcesMap(languages, translations);

      emit(
        I18nInfoFetchSuccess(
          languages: languages,
          translations: translations,
          resourcesMap: resourcesMap,
        ),
      );
    } on Exception {
      emit(
        I18nInfoFetchFailed(),
      );
    }
  }

  Map<String, Map<String, String>> _buildResourcesMap(
    List<LanguageModel> languages,
    List<Map<String, dynamic>> translations,
  ) {
    final resourcesMap = <String, Map<String, String>>{};

    for (final translation in translations) {
      resourcesMap.putIfAbsent(
        translation['en'],
        () => _getLanguagesTraslaction(translation, languages),
      );
    }

    return resourcesMap;
  }

  Map<String, String> _getLanguagesTraslaction(
    Map<String, dynamic> translation,
    List<LanguageModel> languages,
  ) {
    final languageTranslaction = <String, String>{};

    for (final language in languages) {
      languageTranslaction.putIfAbsent(
          language.code!, () => translation[language.code]);
    }

    return languageTranslaction;
  }
}
