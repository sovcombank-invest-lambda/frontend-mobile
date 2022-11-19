// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Вперед`
  String get welcomeButtonNextText {
    return Intl.message(
      'Вперед',
      name: 'welcomeButtonNextText',
      desc: '',
      args: [],
    );
  }

  /// `Пропустить`
  String get welcomeButtonSkipText {
    return Intl.message(
      'Пропустить',
      name: 'welcomeButtonSkipText',
      desc: '',
      args: [],
    );
  }

  /// `Бесплатное открытие счёта`
  String get welcomeInfoTitle1 {
    return Intl.message(
      'Бесплатное открытие счёта',
      name: 'welcomeInfoTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Откройте брокерский или ИИС`
  String get welcomeInfoText1 {
    return Intl.message(
      'Откройте брокерский или ИИС',
      name: 'welcomeInfoText1',
      desc: '',
      args: [],
    );
  }

  /// `Валютный рынок`
  String get welcomeInfoTitle2 {
    return Intl.message(
      'Валютный рынок',
      name: 'welcomeInfoTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Выбирайте из каталога, который постоянно пополняется`
  String get welcomeInfoText2 {
    return Intl.message(
      'Выбирайте из каталога, который постоянно пополняется',
      name: 'welcomeInfoText2',
      desc: '',
      args: [],
    );
  }

  /// `Без всяких минимальных сумм`
  String get welcomeInfoTitle3 {
    return Intl.message(
      'Без всяких минимальных сумм',
      name: 'welcomeInfoTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Начни инвестировать с любой суммы`
  String get welcomeInfoText3 {
    return Intl.message(
      'Начни инвестировать с любой суммы',
      name: 'welcomeInfoText3',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация`
  String get regTitle {
    return Intl.message(
      'Регистрация',
      name: 'regTitle',
      desc: '',
      args: [],
    );
  }

  /// `Введите номер телефона, чтобы войти \nили зарегистрироваться`
  String get regText {
    return Intl.message(
      'Введите номер телефона, чтобы войти \nили зарегистрироваться',
      name: 'regText',
      desc: '',
      args: [],
    );
  }

  /// `Продолжить`
  String get regButtonContinue {
    return Intl.message(
      'Продолжить',
      name: 'regButtonContinue',
      desc: '',
      args: [],
    );
  }

  /// `Подтверждение номера`
  String get regNumberConfirmationTitle {
    return Intl.message(
      'Подтверждение номера',
      name: 'regNumberConfirmationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Введите код из СМС отправленного на номер`
  String get regNumberConfirmationText {
    return Intl.message(
      'Введите код из СМС отправленного на номер',
      name: 'regNumberConfirmationText',
      desc: '',
      args: [],
    );
  }

  /// `Отправить код повторно`
  String get regRepeatCode {
    return Intl.message(
      'Отправить код повторно',
      name: 'regRepeatCode',
      desc: '',
      args: [],
    );
  }

  /// `Создание PIN-кода`
  String get addCodeCreateCodeText {
    return Intl.message(
      'Создание PIN-кода',
      name: 'addCodeCreateCodeText',
      desc: '',
      args: [],
    );
  }

  /// `Вы можете использовать PIN-код для быстрого доступа к приложению`
  String get addCodeCreateCodeInfoText {
    return Intl.message(
      'Вы можете использовать PIN-код для быстрого доступа к приложению',
      name: 'addCodeCreateCodeInfoText',
      desc: '',
      args: [],
    );
  }

  /// `Выйти`
  String get addCodeLogout {
    return Intl.message(
      'Выйти',
      name: 'addCodeLogout',
      desc: '',
      args: [],
    );
  }

  /// `Откройте счёт бесплатно, дождитесь одобрения от администратора и начните инвестировать`
  String get accountHelloText {
    return Intl.message(
      'Откройте счёт бесплатно, дождитесь одобрения от администратора и начните инвестировать',
      name: 'accountHelloText',
      desc: '',
      args: [],
    );
  }

  /// `Открыть счет`
  String get addRealAccButton {
    return Intl.message(
      'Открыть счет',
      name: 'addRealAccButton',
      desc: '',
      args: [],
    );
  }

  /// `Продолжить с демосчетом`
  String get addDemoAccButton {
    return Intl.message(
      'Продолжить с демосчетом',
      name: 'addDemoAccButton',
      desc: '',
      args: [],
    );
  }

  /// `Администратор как можно быстрее рассмотрит вашу заявку. Мы обязательно пришлём вам уведомление.`
  String get accountHelloSecondText {
    return Intl.message(
      'Администратор как можно быстрее рассмотрит вашу заявку. Мы обязательно пришлём вам уведомление.',
      name: 'accountHelloSecondText',
      desc: '',
      args: [],
    );
  }

  /// `Вы можете попробовать демосчёт,\nпока ваша заявка обрабатывается.`
  String get accountHelloSecondText2 {
    return Intl.message(
      'Вы можете попробовать демосчёт,\nпока ваша заявка обрабатывается.',
      name: 'accountHelloSecondText2',
      desc: '',
      args: [],
    );
  }

  /// `Продолжить с демосчетом`
  String get accountHelloSecondButtonContinue {
    return Intl.message(
      'Продолжить с демосчетом',
      name: 'accountHelloSecondButtonContinue',
      desc: '',
      args: [],
    );
  }

  /// `Не требуется`
  String get accountHelloSecondNoNeed {
    return Intl.message(
      'Не требуется',
      name: 'accountHelloSecondNoNeed',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get inDevelopingText1 {
    return Intl.message(
      '',
      name: 'inDevelopingText1',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get inDevelopingText2 {
    return Intl.message(
      '',
      name: 'inDevelopingText2',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}