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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Consulting application`
  String get consultingApplication {
    return Intl.message(
      'Consulting application',
      name: 'consultingApplication',
      desc: '',
      args: [],
    );
  }

  /// `It is a long-established fact that a reader will be distracted by the readable content of a page when focusing on the layout of the text or the layout of the paragraphs on the page he is reading.`
  String get descriptionOnboard {
    return Intl.message(
      'It is a long-established fact that a reader will be distracted by the readable content of a page when focusing on the layout of the text or the layout of the paragraphs on the page he is reading.',
      name: 'descriptionOnboard',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Welcome`
  String get welcome {
    return Intl.message('Welcome', name: 'welcome', desc: '', args: []);
  }

  /// `Name here`
  String get nameHere {
    return Intl.message('Name here', name: 'nameHere', desc: '', args: []);
  }

  /// `Invitation code (optional)`
  String get invitationCode {
    return Intl.message(
      'Invitation code (optional)',
      name: 'invitationCode',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message('Or', name: 'or', desc: '', args: []);
  }

  /// `Login via social networks`
  String get loginViaSocialNetworks {
    return Intl.message(
      'Login via social networks',
      name: 'loginViaSocialNetworks',
      desc: '',
      args: [],
    );
  }

  /// `Authentication code`
  String get authenticationCode {
    return Intl.message(
      'Authentication code',
      name: 'authenticationCode',
      desc: '',
      args: [],
    );
  }

  /// `The authentication code has been sent to the registered phone number.`
  String get theAuthenticationCode {
    return Intl.message(
      'The authentication code has been sent to the registered phone number.',
      name: 'theAuthenticationCode',
      desc: '',
      args: [],
    );
  }

  /// `within`
  String get within {
    return Intl.message('within', name: 'within', desc: '', args: []);
  }

  /// `Didn't receive the code?`
  String get didntReceiveTheCode {
    return Intl.message(
      'Didn\'t receive the code?',
      name: 'didntReceiveTheCode',
      desc: '',
      args: [],
    );
  }

  /// `resend code`
  String get resendCode {
    return Intl.message('resend code', name: 'resendCode', desc: '', args: []);
  }

  /// `Follow up on registration`
  String get followUpOnRegistration {
    return Intl.message(
      'Follow up on registration',
      name: 'followUpOnRegistration',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Consultations`
  String get consultations {
    return Intl.message(
      'Consultations',
      name: 'consultations',
      desc: '',
      args: [],
    );
  }

  /// `General Legal`
  String get generalLegal {
    return Intl.message(
      'General Legal',
      name: 'generalLegal',
      desc: '',
      args: [],
    );
  }

  /// `For business and companies`
  String get forBusinessAndCompanies {
    return Intl.message(
      'For business and companies',
      name: 'forBusinessAndCompanies',
      desc: '',
      args: [],
    );
  }

  /// `Legal for real estate`
  String get legalForRealEstate {
    return Intl.message(
      'Legal for real estate',
      name: 'legalForRealEstate',
      desc: '',
      args: [],
    );
  }

  /// `criminal law`
  String get criminalLaw {
    return Intl.message(
      'criminal law',
      name: 'criminalLaw',
      desc: '',
      args: [],
    );
  }

  /// `Family law`
  String get familyLaw {
    return Intl.message('Family law', name: 'familyLaw', desc: '', args: []);
  }

  /// `Legal for work and employment`
  String get legalForWorkAndEmployment {
    return Intl.message(
      'Legal for work and employment',
      name: 'legalForWorkAndEmployment',
      desc: '',
      args: [],
    );
  }

  /// `Financial legality`
  String get financialLegality {
    return Intl.message(
      'Financial legality',
      name: 'financialLegality',
      desc: '',
      args: [],
    );
  }

  /// `Electronic legal`
  String get electronicLegal {
    return Intl.message(
      'Electronic legal',
      name: 'electronicLegal',
      desc: '',
      args: [],
    );
  }

  /// `Arbitration and Dispute Resolution`
  String get arbitrationAndDisputeResolution {
    return Intl.message(
      'Arbitration and Dispute Resolution',
      name: 'arbitrationAndDisputeResolution',
      desc: '',
      args: [],
    );
  }

  /// `Legal consultations`
  String get legalConsultations {
    return Intl.message(
      'Legal consultations',
      name: 'legalConsultations',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to our`
  String get byCreatingAnAccount {
    return Intl.message(
      'By creating an account, you agree to our',
      name: 'byCreatingAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `User Agreement`
  String get userAgreement {
    return Intl.message(
      'User Agreement',
      name: 'userAgreement',
      desc: '',
      args: [],
    );
  }

  /// `User Agreement`
  String get userAgree {
    return Intl.message(
      'User Agreement',
      name: 'userAgree',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get and {
    return Intl.message('and', name: 'and', desc: '', args: []);
  }

  /// `our`
  String get our {
    return Intl.message('our', name: 'our', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
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
