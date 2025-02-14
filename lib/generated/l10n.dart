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

  /// `browse`
  String get browse {
    return Intl.message('browse', name: 'browse', desc: '', args: []);
  }

  /// `My bookings`
  String get myBookings {
    return Intl.message('My bookings', name: 'myBookings', desc: '', args: []);
  }

  /// `research`
  String get research {
    return Intl.message('research', name: 'research', desc: '', args: []);
  }

  /// `profile`
  String get profile {
    return Intl.message('profile', name: 'profile', desc: '', args: []);
  }

  /// `Hello`
  String get hello {
    return Intl.message('Hello', name: 'hello', desc: '', args: []);
  }

  /// `Welcome to the electronic consultation application`
  String get welcomeToTheElectronic {
    return Intl.message(
      'Welcome to the electronic consultation application',
      name: 'welcomeToTheElectronic',
      desc: '',
      args: [],
    );
  }

  /// `Our Services`
  String get ourServices {
    return Intl.message(
      'Our Services',
      name: 'ourServices',
      desc: '',
      args: [],
    );
  }

  /// `All services`
  String get allServices {
    return Intl.message(
      'All services',
      name: 'allServices',
      desc: '',
      args: [],
    );
  }

  /// `Family consultations`
  String get familyConsultations {
    return Intl.message(
      'Family consultations',
      name: 'familyConsultations',
      desc: '',
      args: [],
    );
  }

  /// `Medical consultations`
  String get medicalConsultations {
    return Intl.message(
      'Medical consultations',
      name: 'medicalConsultations',
      desc: '',
      args: [],
    );
  }

  /// `Accounting Consulting`
  String get accountingConsulting {
    return Intl.message(
      'Accounting Consulting',
      name: 'accountingConsulting',
      desc: '',
      args: [],
    );
  }

  /// `Health care`
  String get healthCare {
    return Intl.message('Health care', name: 'healthCare', desc: '', args: []);
  }

  /// `Career guidance`
  String get careerGuidance {
    return Intl.message(
      'Career guidance',
      name: 'careerGuidance',
      desc: '',
      args: [],
    );
  }

  /// `Diet`
  String get diet {
    return Intl.message('Diet', name: 'diet', desc: '', args: []);
  }

  /// `Fitness`
  String get fitness {
    return Intl.message('Fitness', name: 'fitness', desc: '', args: []);
  }

  /// `Mental health`
  String get mentalHealth {
    return Intl.message(
      'Mental health',
      name: 'mentalHealth',
      desc: '',
      args: [],
    );
  }

  /// `Coming`
  String get coming {
    return Intl.message('Coming', name: 'coming', desc: '', args: []);
  }

  /// `General legal advice`
  String get generalLegalAdvice {
    return Intl.message(
      'General legal advice',
      name: 'generalLegalAdvice',
      desc: '',
      args: [],
    );
  }

  /// `video`
  String get video {
    return Intl.message('video', name: 'video', desc: '', args: []);
  }

  /// `cancellation of reservation`
  String get cancellationOfReservation {
    return Intl.message(
      'cancellation of reservation',
      name: 'cancellationOfReservation',
      desc: '',
      args: [],
    );
  }

  /// `Modify reservation`
  String get modifyReservation {
    return Intl.message(
      'Modify reservation',
      name: 'modifyReservation',
      desc: '',
      args: [],
    );
  }

  /// `It's over.`
  String get itsOver {
    return Intl.message('It\'s over.', name: 'itsOver', desc: '', args: []);
  }

  /// `office`
  String get office {
    return Intl.message('office', name: 'office', desc: '', args: []);
  }

  /// `Address on the map`
  String get addressOnTheMap {
    return Intl.message(
      'Address on the map',
      name: 'addressOnTheMap',
      desc: '',
      args: [],
    );
  }

  /// `View details`
  String get viewDetails {
    return Intl.message(
      'View details',
      name: 'viewDetails',
      desc: '',
      args: [],
    );
  }

  /// `Book Again`
  String get bookAgain {
    return Intl.message('Book Again', name: 'bookAgain', desc: '', args: []);
  }

  /// `Chat`
  String get chat {
    return Intl.message('Chat', name: 'chat', desc: '', args: []);
  }

  /// `It has been cancelled.`
  String get itHasBeenCancelled {
    return Intl.message(
      'It has been cancelled.',
      name: 'itHasBeenCancelled',
      desc: '',
      args: [],
    );
  }

  /// `Cancel order`
  String get cancelOrder {
    return Intl.message(
      'Cancel order',
      name: 'cancelOrder',
      desc: '',
      args: [],
    );
  }

  /// `everyone`
  String get everyone {
    return Intl.message('everyone', name: 'everyone', desc: '', args: []);
  }

  /// `Do you want to cancel your reservation?`
  String get doYouWantToCancelYourReservation {
    return Intl.message(
      'Do you want to cancel your reservation?',
      name: 'doYouWantToCancelYourReservation',
      desc: '',
      args: [],
    );
  }

  /// `By confirming the request, your reservation will be cancelled and the cancellation fees agreed upon in the terms and conditions and usage policy will be deducted.`
  String get byConfirmingTheRequest {
    return Intl.message(
      'By confirming the request, your reservation will be cancelled and the cancellation fees agreed upon in the terms and conditions and usage policy will be deducted.',
      name: 'byConfirmingTheRequest',
      desc: '',
      args: [],
    );
  }

  /// `Save edit`
  String get saveEdit {
    return Intl.message('Save edit', name: 'saveEdit', desc: '', args: []);
  }

  /// `Cancel modification`
  String get cancelModification {
    return Intl.message(
      'Cancel modification',
      name: 'cancelModification',
      desc: '',
      args: [],
    );
  }

  /// `Book the service`
  String get bookTheService {
    return Intl.message(
      'Book the service',
      name: 'bookTheService',
      desc: '',
      args: [],
    );
  }

  /// `Confirm order`
  String get confirmOrder {
    return Intl.message(
      'Confirm order',
      name: 'confirmOrder',
      desc: '',
      args: [],
    );
  }

  /// `Service request`
  String get serviceRequest {
    return Intl.message(
      'Service request',
      name: 'serviceRequest',
      desc: '',
      args: [],
    );
  }

  /// `The order has been successfully confirmed`
  String get theOrderHasBeenSuccessfullyConfirmed {
    return Intl.message(
      'The order has been successfully confirmed',
      name: 'theOrderHasBeenSuccessfullyConfirmed',
      desc: '',
      args: [],
    );
  }

  /// `A notification will be sent to you before the appointment to help you remember, with all the details related to the reservation.`
  String get aNotificationWillBeSent {
    return Intl.message(
      'A notification will be sent to you before the appointment to help you remember, with all the details related to the reservation.',
      name: 'aNotificationWillBeSent',
      desc: '',
      args: [],
    );
  }

  /// `Good`
  String get good {
    return Intl.message('Good', name: 'good', desc: '', args: []);
  }

  /// `Edit account`
  String get editAccount {
    return Intl.message(
      'Edit account',
      name: 'editAccount',
      desc: '',
      args: [],
    );
  }

  /// `About the application`
  String get aboutTheApplication {
    return Intl.message(
      'About the application',
      name: 'aboutTheApplication',
      desc: '',
      args: [],
    );
  }

  /// `Help and Support`
  String get helpAndSupport {
    return Intl.message(
      'Help and Support',
      name: 'helpAndSupport',
      desc: '',
      args: [],
    );
  }

  /// `Application Policy`
  String get applicationPolicy {
    return Intl.message(
      'Application Policy',
      name: 'applicationPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logOut {
    return Intl.message('Log out', name: 'logOut', desc: '', args: []);
  }

  /// `phone number`
  String get phoneNumber {
    return Intl.message(
      'phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `e-mail`
  String get email {
    return Intl.message('e-mail', name: 'email', desc: '', args: []);
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Subtotal`
  String get subtotal {
    return Intl.message('Subtotal', name: 'subtotal', desc: '', args: []);
  }

  /// `delivery`
  String get delivery {
    return Intl.message('delivery', name: 'delivery', desc: '', args: []);
  }

  /// `Total Amount`
  String get totalAmount {
    return Intl.message(
      'Total Amount',
      name: 'totalAmount',
      desc: '',
      args: [],
    );
  }

  /// `Payment Summary`
  String get paymentSummary {
    return Intl.message(
      'Payment Summary',
      name: 'paymentSummary',
      desc: '',
      args: [],
    );
  }

  /// `Payment through`
  String get paymentThrough {
    return Intl.message(
      'Payment through',
      name: 'paymentThrough',
      desc: '',
      args: [],
    );
  }

  /// `The restaurant offers three payment methods to suit you.`
  String get theRestaurantOffers {
    return Intl.message(
      'The restaurant offers three payment methods to suit you.',
      name: 'theRestaurantOffers',
      desc: '',
      args: [],
    );
  }

  /// `credit card`
  String get creditCard {
    return Intl.message('credit card', name: 'creditCard', desc: '', args: []);
  }

  /// `in cash`
  String get inCash {
    return Intl.message('in cash', name: 'inCash', desc: '', args: []);
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `sort by`
  String get sortBy {
    return Intl.message('sort by', name: 'sortBy', desc: '', args: []);
  }

  /// `details`
  String get details {
    return Intl.message('details', name: 'details', desc: '', args: []);
  }

  /// `About me`
  String get aboutMe {
    return Intl.message('About me', name: 'aboutMe', desc: '', args: []);
  }

  /// `What did they say about me`
  String get whatDidTheySayAboutMe {
    return Intl.message(
      'What did they say about me',
      name: 'whatDidTheySayAboutMe',
      desc: '',
      args: [],
    );
  }

  /// `Book an appointment`
  String get bookAnAppointment {
    return Intl.message(
      'Book an appointment',
      name: 'bookAnAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Religious consultation`
  String get religiousConsultation {
    return Intl.message(
      'Religious consultation',
      name: 'religiousConsultation',
      desc: '',
      args: [],
    );
  }

  /// `Set time`
  String get setTime {
    return Intl.message('Set time', name: 'setTime', desc: '', args: []);
  }

  /// `Morning period`
  String get morningPeriod {
    return Intl.message(
      'Morning period',
      name: 'morningPeriod',
      desc: '',
      args: [],
    );
  }

  /// `Evening period`
  String get eveningPeriod {
    return Intl.message(
      'Evening period',
      name: 'eveningPeriod',
      desc: '',
      args: [],
    );
  }

  /// `Expanding notes`
  String get expandingNotes {
    return Intl.message(
      'Expanding notes',
      name: 'expandingNotes',
      desc: '',
      args: [],
    );
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
