part of 'i18n_cubit.dart';

@immutable
abstract class I18nState {
  const I18nState({
    required this.languages,
    required this.translations,
    required this.resourcesMap,
  });

  final List<LanguageModel> languages;
  final List<Map<String, dynamic>> translations;
  final Map<String, Map<String, String>> resourcesMap;
}

class I18nInitial extends I18nState {
  I18nInitial()
      : super(
          languages: [],
          translations: [],
          resourcesMap: {},
        );
}

class I18nInfoFetchSuccess extends I18nState {
  const I18nInfoFetchSuccess({
    required List<LanguageModel> languages,
    required List<Map<String, dynamic>> translations,
    required Map<String, Map<String, String>> resourcesMap,
  }) : super(
          languages: languages,
          translations: translations,
          resourcesMap: resourcesMap,
        );
}

class I18nInfoFetchFailed extends I18nState {
  I18nInfoFetchFailed()
      : super(
          languages: [],
          translations: [],
          resourcesMap: {},
        );
}

class I18nInfoLoading extends I18nState {
  I18nInfoLoading()
      : super(
          languages: [],
          translations: [],
          resourcesMap: {},
        );
}
