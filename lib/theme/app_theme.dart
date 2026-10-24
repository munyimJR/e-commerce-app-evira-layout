import 'package:flutter/material.dart';
import 'app_colors.dart';

ThemeData get lightTheme => ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(),
);

ThemeData get darkTheme => ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(),
);

@immutable
class AppThemeColors {
  const AppThemeColors._(this.brightness);

  final Brightness brightness;

  bool get _isDark => brightness == Brightness.dark;

  Color get color_000000 =>
      _isDark ? AppColors.color_000000Light : AppColors.color_000000Light;
  Color get color_00000000 =>
      _isDark ? AppColors.color_00000000Light : AppColors.color_00000000Light;
  Color get color00ffffff =>
      _isDark ? AppColors.color00ffffffLight : AppColors.color00ffffffLight;
  Color get color_101010 =>
      _isDark ? AppColors.color_101010Light : AppColors.color_101010Light;
  Color get color181a20 =>
      _isDark ? AppColors.color181a20Light : AppColors.color181a20Light;
  Color get color1f222a =>
      _isDark ? AppColors.color1f222aLight : AppColors.color1f222aLight;
  Color get color_212121 =>
      _isDark ? AppColors.color_212121Light : AppColors.color_212121Light;
  Color get color35383f =>
      _isDark ? AppColors.color35383fLight : AppColors.color35383fLight;
  Color get color_424242 =>
      _isDark ? AppColors.color_424242Light : AppColors.color_424242Light;
  Color get color_616161 =>
      _isDark ? AppColors.color_616161Light : AppColors.color_616161Light;
  Color get color9e9e9e =>
      _isDark ? AppColors.color9e9e9eLight : AppColors.color9e9e9eLight;
  Color get colorD9d9d9 =>
      _isDark ? AppColors.colorD9d9d9Light : AppColors.colorD9d9d9Light;
  Color get colorE0e0e0 =>
      _isDark ? AppColors.colorE0e0e0Light : AppColors.colorE0e0e0Light;
  Color get colorEeeeee =>
      _isDark ? AppColors.colorEeeeeeLight : AppColors.colorEeeeeeLight;
  Color get colorEllipseEllipse => _isDark
      ? AppColors.colorEllipseEllipseLight
      : AppColors.colorEllipseEllipseLight;
  Color get colorEllipseEllipse1 => _isDark
      ? AppColors.colorEllipseEllipse1Light
      : AppColors.colorEllipseEllipse1Light;
  Color get colorEllipseEllipse2 => _isDark
      ? AppColors.colorEllipseEllipse2Light
      : AppColors.colorEllipseEllipse2Light;
  Color get colorEllipseEllipse3 => _isDark
      ? AppColors.colorEllipseEllipse3Light
      : AppColors.colorEllipseEllipse3Light;
  Color get colorF3f3f3 =>
      _isDark ? AppColors.colorF3f3f3Light : AppColors.colorF3f3f3Light;
  Color get colorF_26DarkCreateNewPassword => _isDark
      ? AppColors.colorF_26DarkCreateNewPasswordLight
      : AppColors.colorF_26DarkCreateNewPasswordLight;
  Color get colorF_26LightCreateNewPassword => _isDark
      ? AppColors.colorF_26LightCreateNewPasswordLight
      : AppColors.colorF_26LightCreateNewPasswordLight;
  Color get colorF_30DarkNotification => _isDark
      ? AppColors.colorF_30DarkNotificationLight
      : AppColors.colorF_30DarkNotificationLight;
  Color get colorF_30LightNotification => _isDark
      ? AppColors.colorF_30LightNotificationLight
      : AppColors.colorF_30LightNotificationLight;
  Color get colorF_93DarkSettingsHelpCenterContactUs => _isDark
      ? AppColors.colorF_93DarkSettingsHelpCenterContactUsLight
      : AppColors.colorF_93DarkSettingsHelpCenterContactUsLight;
  Color get colorF_93LightSettingsHelpCenterContactUs => _isDark
      ? AppColors.colorF_93LightSettingsHelpCenterContactUsLight
      : AppColors.colorF_93LightSettingsHelpCenterContactUsLight;
  Color get colorFAutoLayoutHorizontal11 => _isDark
      ? AppColors.colorFAutoLayoutHorizontal11Light
      : AppColors.colorFAutoLayoutHorizontal11Light;
  Color get colorFAutoLayoutHorizontal13 => _isDark
      ? AppColors.colorFAutoLayoutHorizontal13Light
      : AppColors.colorFAutoLayoutHorizontal13Light;
  Color get colorFAutoLayoutHorizontal15 => _isDark
      ? AppColors.colorFAutoLayoutHorizontal15Light
      : AppColors.colorFAutoLayoutHorizontal15Light;
  Color get colorFAutoLayoutHorizontal17 => _isDark
      ? AppColors.colorFAutoLayoutHorizontal17Light
      : AppColors.colorFAutoLayoutHorizontal17Light;
  Color get colorFAutoLayoutHorizontal19 => _isDark
      ? AppColors.colorFAutoLayoutHorizontal19Light
      : AppColors.colorFAutoLayoutHorizontal19Light;
  Color get colorFAutoLayoutHorizontal34 => _isDark
      ? AppColors.colorFAutoLayoutHorizontal34Light
      : AppColors.colorFAutoLayoutHorizontal34Light;
  Color get colorFAutoLayoutHorizontal36 => _isDark
      ? AppColors.colorFAutoLayoutHorizontal36Light
      : AppColors.colorFAutoLayoutHorizontal36Light;
  Color get colorFAutoLayoutHorizontal38 => _isDark
      ? AppColors.colorFAutoLayoutHorizontal38Light
      : AppColors.colorFAutoLayoutHorizontal38Light;
  Color get colorFAutoLayoutHorizontal40 => _isDark
      ? AppColors.colorFAutoLayoutHorizontal40Light
      : AppColors.colorFAutoLayoutHorizontal40Light;
  Color get colorFAutoLayoutHorizontal42 => _isDark
      ? AppColors.colorFAutoLayoutHorizontal42Light
      : AppColors.colorFAutoLayoutHorizontal42Light;
  Color get colorFAutoLayoutVertical21 => _isDark
      ? AppColors.colorFAutoLayoutVertical21Light
      : AppColors.colorFAutoLayoutVertical21Light;
  Color get colorFAutoLayoutVertical25 => _isDark
      ? AppColors.colorFAutoLayoutVertical25Light
      : AppColors.colorFAutoLayoutVertical25Light;
  Color get colorFAutoLayoutVertical26 => _isDark
      ? AppColors.colorFAutoLayoutVertical26Light
      : AppColors.colorFAutoLayoutVertical26Light;
  Color get colorFAutoLayoutVertical27 => _isDark
      ? AppColors.colorFAutoLayoutVertical27Light
      : AppColors.colorFAutoLayoutVertical27Light;
  Color get colorFAutoLayoutVertical28 => _isDark
      ? AppColors.colorFAutoLayoutVertical28Light
      : AppColors.colorFAutoLayoutVertical28Light;
  Color get colorFAutoLayoutVertical29 => _isDark
      ? AppColors.colorFAutoLayoutVertical29Light
      : AppColors.colorFAutoLayoutVertical29Light;
  Color get colorFAutoLayoutVertical3 => _isDark
      ? AppColors.colorFAutoLayoutVertical3Light
      : AppColors.colorFAutoLayoutVertical3Light;
  Color get colorFAutoLayoutVertical30 => _isDark
      ? AppColors.colorFAutoLayoutVertical30Light
      : AppColors.colorFAutoLayoutVertical30Light;
  Color get colorFAutoLayoutVertical4 => _isDark
      ? AppColors.colorFAutoLayoutVertical4Light
      : AppColors.colorFAutoLayoutVertical4Light;
  Color get colorFAutoLayoutVertical42 => _isDark
      ? AppColors.colorFAutoLayoutVertical42Light
      : AppColors.colorFAutoLayoutVertical42Light;
  Color get colorFAutoLayoutVertical44 => _isDark
      ? AppColors.colorFAutoLayoutVertical44Light
      : AppColors.colorFAutoLayoutVertical44Light;
  Color get colorFAutoLayoutVertical46 => _isDark
      ? AppColors.colorFAutoLayoutVertical46Light
      : AppColors.colorFAutoLayoutVertical46Light;
  Color get colorFAutoLayoutVertical48 => _isDark
      ? AppColors.colorFAutoLayoutVertical48Light
      : AppColors.colorFAutoLayoutVertical48Light;
  Color get colorFAutoLayoutVertical5 => _isDark
      ? AppColors.colorFAutoLayoutVertical5Light
      : AppColors.colorFAutoLayoutVertical5Light;
  Color get colorFAutoLayoutVertical50 => _isDark
      ? AppColors.colorFAutoLayoutVertical50Light
      : AppColors.colorFAutoLayoutVertical50Light;
  Color get colorFAutoLayoutVertical52 => _isDark
      ? AppColors.colorFAutoLayoutVertical52Light
      : AppColors.colorFAutoLayoutVertical52Light;
  Color get colorFAutoLayoutVertical54 => _isDark
      ? AppColors.colorFAutoLayoutVertical54Light
      : AppColors.colorFAutoLayoutVertical54Light;
  Color get colorFAutoLayoutVertical56 => _isDark
      ? AppColors.colorFAutoLayoutVertical56Light
      : AppColors.colorFAutoLayoutVertical56Light;
  Color get colorFAutoLayoutVertical58 => _isDark
      ? AppColors.colorFAutoLayoutVertical58Light
      : AppColors.colorFAutoLayoutVertical58Light;
  Color get colorFAutoLayoutVertical6 => _isDark
      ? AppColors.colorFAutoLayoutVertical6Light
      : AppColors.colorFAutoLayoutVertical6Light;
  Color get colorFAutoLayoutVertical60 => _isDark
      ? AppColors.colorFAutoLayoutVertical60Light
      : AppColors.colorFAutoLayoutVertical60Light;
  Color get colorFAutoLayoutVertical62 => _isDark
      ? AppColors.colorFAutoLayoutVertical62Light
      : AppColors.colorFAutoLayoutVertical62Light;
  Color get colorFAutoLayoutVertical64 => _isDark
      ? AppColors.colorFAutoLayoutVertical64Light
      : AppColors.colorFAutoLayoutVertical64Light;
  Color get colorFAutoLayoutVertical66 => _isDark
      ? AppColors.colorFAutoLayoutVertical66Light
      : AppColors.colorFAutoLayoutVertical66Light;
  Color get colorFAutoLayoutVertical68 => _isDark
      ? AppColors.colorFAutoLayoutVertical68Light
      : AppColors.colorFAutoLayoutVertical68Light;
  Color get colorFAutoLayoutVertical7 => _isDark
      ? AppColors.colorFAutoLayoutVertical7Light
      : AppColors.colorFAutoLayoutVertical7Light;
  Color get colorFAutoLayoutVertical70 => _isDark
      ? AppColors.colorFAutoLayoutVertical70Light
      : AppColors.colorFAutoLayoutVertical70Light;
  Color get colorFAutoLayoutVertical72 => _isDark
      ? AppColors.colorFAutoLayoutVertical72Light
      : AppColors.colorFAutoLayoutVertical72Light;
  Color get colorFAutoLayoutVertical74 => _isDark
      ? AppColors.colorFAutoLayoutVertical74Light
      : AppColors.colorFAutoLayoutVertical74Light;
  Color get colorFAutoLayoutVertical76 => _isDark
      ? AppColors.colorFAutoLayoutVertical76Light
      : AppColors.colorFAutoLayoutVertical76Light;
  Color get colorFAutoLayoutVertical78 => _isDark
      ? AppColors.colorFAutoLayoutVertical78Light
      : AppColors.colorFAutoLayoutVertical78Light;
  Color get colorFAutoLayoutVertical8 => _isDark
      ? AppColors.colorFAutoLayoutVertical8Light
      : AppColors.colorFAutoLayoutVertical8Light;
  Color get colorFAutoLayoutVertical80 => _isDark
      ? AppColors.colorFAutoLayoutVertical80Light
      : AppColors.colorFAutoLayoutVertical80Light;
  Color get colorFAutoLayoutVertical82 => _isDark
      ? AppColors.colorFAutoLayoutVertical82Light
      : AppColors.colorFAutoLayoutVertical82Light;
  Color get colorFAutoLayoutVertical84 => _isDark
      ? AppColors.colorFAutoLayoutVertical84Light
      : AppColors.colorFAutoLayoutVertical84Light;
  Color get colorFDivider =>
      _isDark ? AppColors.colorFDividerLight : AppColors.colorFDividerLight;
  Color get colorFEviraThumbnailsFigma => _isDark
      ? AppColors.colorFEviraThumbnailsFigmaLight
      : AppColors.colorFEviraThumbnailsFigmaLight;
  Color get colorFFrame13 =>
      _isDark ? AppColors.colorFFrame13Light : AppColors.colorFFrame13Light;
  Color get colorFFrame14 =>
      _isDark ? AppColors.colorFFrame14Light : AppColors.colorFFrame14Light;
  Color get colorFFrame6 =>
      _isDark ? AppColors.colorFFrame6Light : AppColors.colorFFrame6Light;
  Color get colorFHeader =>
      _isDark ? AppColors.colorFHeaderLight : AppColors.colorFHeaderLight;
  Color get colorFNavigation1 => _isDark
      ? AppColors.colorFNavigation1Light
      : AppColors.colorFNavigation1Light;
  Color get colorFNavigation2 => _isDark
      ? AppColors.colorFNavigation2Light
      : AppColors.colorFNavigation2Light;
  Color get colorFNavigation3 => _isDark
      ? AppColors.colorFNavigation3Light
      : AppColors.colorFNavigation3Light;
  Color get colorFNavigation4 => _isDark
      ? AppColors.colorFNavigation4Light
      : AppColors.colorFNavigation4Light;
  Color get colorFNotes =>
      _isDark ? AppColors.colorFNotesLight : AppColors.colorFNotesLight;
  Color get colorFQuickStartGuide => _isDark
      ? AppColors.colorFQuickStartGuideLight
      : AppColors.colorFQuickStartGuideLight;
  Color
  get colorFStatusfillTypepasswordStatefilledInputThemedarkComponentinputField =>
      _isDark
      ? AppColors
            .colorFStatusfillTypepasswordStatefilledInputThemedarkComponentinputFieldLight
      : AppColors
            .colorFStatusfillTypepasswordStatefilledInputThemedarkComponentinputFieldLight;
  Color
  get colorFStatusfillTypepasswordStatefilledInputThemedarkComponentinputField1 =>
      _isDark
      ? AppColors
            .colorFStatusfillTypepasswordStatefilledInputThemedarkComponentinputField1Light
      : AppColors
            .colorFStatusfillTypepasswordStatefilledInputThemedarkComponentinputField1Light;
  Color
  get colorFStatusfillTypepasswordStatefilledInputThemelightComponentinputField =>
      _isDark
      ? AppColors
            .colorFStatusfillTypepasswordStatefilledInputThemelightComponentinputFieldLight
      : AppColors
            .colorFStatusfillTypepasswordStatefilledInputThemelightComponentinputFieldLight;
  Color
  get colorFStatusfillTypepasswordStatefilledInputThemelightComponentinputField1 =>
      _isDark
      ? AppColors
            .colorFStatusfillTypepasswordStatefilledInputThemelightComponentinputField1Light
      : AppColors
            .colorFStatusfillTypepasswordStatefilledInputThemelightComponentinputField1Light;
  Color
  get colorFTypebuttonType2primaryType3roundedStyledefaultStateactiveThemedefaultC =>
      _isDark
      ? AppColors
            .colorFTypebuttonType2primaryType3roundedStyledefaultStateactiveThemedefaultCLight
      : AppColors
            .colorFTypebuttonType2primaryType3roundedStyledefaultStateactiveThemedefaultCLight;
  Color
  get colorFTypebuttonType2secondaryType3roundedStyledefaultStateactiveThemedefault =>
      _isDark
      ? AppColors
            .colorFTypebuttonType2secondaryType3roundedStyledefaultStateactiveThemedefaultLight
      : AppColors
            .colorFTypebuttonType2secondaryType3roundedStyledefaultStateactiveThemedefaultLight;
  Color get colorFafafa =>
      _isDark ? AppColors.colorFafafaLight : AppColors.colorFafafaLight;
  Color get colorFfffff =>
      _isDark ? AppColors.colorFfffffLight : AppColors.colorFfffffLight;
  Color get colorLineLine =>
      _isDark ? AppColors.colorLineLineLight : AppColors.colorLineLineLight;
  Color get colorLineLine1 =>
      _isDark ? AppColors.colorLineLine1Light : AppColors.colorLineLine1Light;
  Color get colorRectMask =>
      _isDark ? AppColors.colorRectMaskLight : AppColors.colorRectMaskLight;
  Color get colorRectMask1 =>
      _isDark ? AppColors.colorRectMask1Light : AppColors.colorRectMask1Light;
  Color get colorRectMask2 =>
      _isDark ? AppColors.colorRectMask2Light : AppColors.colorRectMask2Light;
  Color get colorRectMask3 =>
      _isDark ? AppColors.colorRectMask3Light : AppColors.colorRectMask3Light;
  Color get colorRectRectangle => _isDark
      ? AppColors.colorRectRectangleLight
      : AppColors.colorRectRectangleLight;
  Color get colorRectRectangle1 => _isDark
      ? AppColors.colorRectRectangle1Light
      : AppColors.colorRectRectangle1Light;
  Color get colorRectRectangle3 => _isDark
      ? AppColors.colorRectRectangle3Light
      : AppColors.colorRectRectangle3Light;
  Color get colorRectRectangle4 => _isDark
      ? AppColors.colorRectRectangle4Light
      : AppColors.colorRectRectangle4Light;
  Color get colorTextTv_00 =>
      _isDark ? AppColors.colorTextTv_00Light : AppColors.colorTextTv_00Light;
  Color get colorTextTv_001 =>
      _isDark ? AppColors.colorTextTv_001Light : AppColors.colorTextTv_001Light;
  Color get colorTextTv_002 =>
      _isDark ? AppColors.colorTextTv_002Light : AppColors.colorTextTv_002Light;
  Color get colorTextTv_003 =>
      _isDark ? AppColors.colorTextTv_003Light : AppColors.colorTextTv_003Light;
  Color get colorTextTv_004 =>
      _isDark ? AppColors.colorTextTv_004Light : AppColors.colorTextTv_004Light;
  Color get colorTextTv_005 =>
      _isDark ? AppColors.colorTextTv_005Light : AppColors.colorTextTv_005Light;
  Color get colorTextTv_006 =>
      _isDark ? AppColors.colorTextTv_006Light : AppColors.colorTextTv_006Light;
  Color get colorTextTv_007 =>
      _isDark ? AppColors.colorTextTv_007Light : AppColors.colorTextTv_007Light;
  Color get colorTextTv_008 =>
      _isDark ? AppColors.colorTextTv_008Light : AppColors.colorTextTv_008Light;
  Color get colorTextTv_01 =>
      _isDark ? AppColors.colorTextTv_01Light : AppColors.colorTextTv_01Light;
  Color get colorTextTv_011 =>
      _isDark ? AppColors.colorTextTv_011Light : AppColors.colorTextTv_011Light;
  Color get colorTextTv_03 =>
      _isDark ? AppColors.colorTextTv_03Light : AppColors.colorTextTv_03Light;
  Color get colorTextTv_04 =>
      _isDark ? AppColors.colorTextTv_04Light : AppColors.colorTextTv_04Light;
  Color get colorTextTv_05 =>
      _isDark ? AppColors.colorTextTv_05Light : AppColors.colorTextTv_05Light;
  Color get colorTextTv_06 =>
      _isDark ? AppColors.colorTextTv_06Light : AppColors.colorTextTv_06Light;
  Color get colorTextTv_07 =>
      _isDark ? AppColors.colorTextTv_07Light : AppColors.colorTextTv_07Light;
  Color get colorTextTv_08 =>
      _isDark ? AppColors.colorTextTv_08Light : AppColors.colorTextTv_08Light;
  Color get colorTextTv_09 =>
      _isDark ? AppColors.colorTextTv_09Light : AppColors.colorTextTv_09Light;
  Color get colorTextTv_091 =>
      _isDark ? AppColors.colorTextTv_091Light : AppColors.colorTextTv_091Light;
  Color get colorTextTv_30SpecialDiscount => _isDark
      ? AppColors.colorTextTv_30SpecialDiscountLight
      : AppColors.colorTextTv_30SpecialDiscountLight;
  Color get colorTextTv_30SpecialDiscount1 => _isDark
      ? AppColors.colorTextTv_30SpecialDiscount1Light
      : AppColors.colorTextTv_30SpecialDiscount1Light;
  Color get colorTextTvAccountSetup => _isDark
      ? AppColors.colorTextTvAccountSetupLight
      : AppColors.colorTextTvAccountSetupLight;
  Color get colorTextTvAccountSetupSuccessful => _isDark
      ? AppColors.colorTextTvAccountSetupSuccessfulLight
      : AppColors.colorTextTvAccountSetupSuccessfulLight;
  Color get colorTextTvAccountSetupSuccessful1 => _isDark
      ? AppColors.colorTextTvAccountSetupSuccessful1Light
      : AppColors.colorTextTvAccountSetupSuccessful1Light;
  Color get colorTextTvActionMenu => _isDark
      ? AppColors.colorTextTvActionMenuLight
      : AppColors.colorTextTvActionMenuLight;
  Color get colorTextTvActionMenu1 => _isDark
      ? AppColors.colorTextTvActionMenu1Light
      : AppColors.colorTextTvActionMenu1Light;
  Color get colorTextTvApplicationsWillBeMarked => _isDark
      ? AppColors.colorTextTvApplicationsWillBeMarkedLight
      : AppColors.colorTextTvApplicationsWillBeMarkedLight;
  Color get colorTextTvCartOrdercheckout => _isDark
      ? AppColors.colorTextTvCartOrdercheckoutLight
      : AppColors.colorTextTvCartOrdercheckoutLight;
  Color get colorTextTvCategoriesProductDetails => _isDark
      ? AppColors.colorTextTvCategoriesProductDetailsLight
      : AppColors.colorTextTvCategoriesProductDetailsLight;
  Color get colorTextTvCategoriesProductDetails1 => _isDark
      ? AppColors.colorTextTvCategoriesProductDetails1Light
      : AppColors.colorTextTvCategoriesProductDetails1Light;
  Color get colorTextTvContactUs => _isDark
      ? AppColors.colorTextTvContactUsLight
      : AppColors.colorTextTvContactUsLight;
  Color get colorTextTvContactUs1 => _isDark
      ? AppColors.colorTextTvContactUs1Light
      : AppColors.colorTextTvContactUs1Light;
  Color get colorTextTvContinue => _isDark
      ? AppColors.colorTextTvContinueLight
      : AppColors.colorTextTvContinueLight;
  Color get colorTextTvContinue1 => _isDark
      ? AppColors.colorTextTvContinue1Light
      : AppColors.colorTextTvContinue1Light;
  Color get colorTextTvCreateNewPassword => _isDark
      ? AppColors.colorTextTvCreateNewPasswordLight
      : AppColors.colorTextTvCreateNewPasswordLight;
  Color get colorTextTvCreateNewPassword1 => _isDark
      ? AppColors.colorTextTvCreateNewPassword1Light
      : AppColors.colorTextTvCreateNewPassword1Light;
  Color get colorTextTvCreateYourNewPassword => _isDark
      ? AppColors.colorTextTvCreateYourNewPasswordLight
      : AppColors.colorTextTvCreateYourNewPasswordLight;
  Color get colorTextTvCreateYourNewPassword1 => _isDark
      ? AppColors.colorTextTvCreateYourNewPassword1Light
      : AppColors.colorTextTvCreateYourNewPassword1Light;
  Color get colorTextTvCreditCardConnected => _isDark
      ? AppColors.colorTextTvCreditCardConnectedLight
      : AppColors.colorTextTvCreditCardConnectedLight;
  Color get colorTextTvCreditCardConnected1 => _isDark
      ? AppColors.colorTextTvCreditCardConnected1Light
      : AppColors.colorTextTvCreditCardConnected1Light;
  Color get colorTextTvCreditCardHasBeenLinked => _isDark
      ? AppColors.colorTextTvCreditCardHasBeenLinkedLight
      : AppColors.colorTextTvCreditCardHasBeenLinkedLight;
  Color get colorTextTvCreditCardHasBeenLinked1 => _isDark
      ? AppColors.colorTextTvCreditCardHasBeenLinked1Light
      : AppColors.colorTextTvCreditCardHasBeenLinked1Light;
  Color get colorTextTvCustomerService => _isDark
      ? AppColors.colorTextTvCustomerServiceLight
      : AppColors.colorTextTvCustomerServiceLight;
  Color get colorTextTvCustomerService1 => _isDark
      ? AppColors.colorTextTvCustomerService1Light
      : AppColors.colorTextTvCustomerService1Light;
  Color get colorTextTvDecember_22_2024 => _isDark
      ? AppColors.colorTextTvDecember_22_2024Light
      : AppColors.colorTextTvDecember_22_2024Light;
  Color get colorTextTvDecember_22_20241 => _isDark
      ? AppColors.colorTextTvDecember_22_20241Light
      : AppColors.colorTextTvDecember_22_20241Light;
  Color get colorTextTvDescription => _isDark
      ? AppColors.colorTextTvDescriptionLight
      : AppColors.colorTextTvDescriptionLight;
  Color get colorTextTvDescription1 => _isDark
      ? AppColors.colorTextTvDescription1Light
      : AppColors.colorTextTvDescription1Light;
  Color get colorTextTvDescription2 => _isDark
      ? AppColors.colorTextTvDescription2Light
      : AppColors.colorTextTvDescription2Light;
  Color get colorTextTvDescription3 => _isDark
      ? AppColors.colorTextTvDescription3Light
      : AppColors.colorTextTvDescription3Light;
  Color get colorTextTvDescription4 => _isDark
      ? AppColors.colorTextTvDescription4Light
      : AppColors.colorTextTvDescription4Light;
  Color get colorTextTvDescription5 => _isDark
      ? AppColors.colorTextTvDescription5Light
      : AppColors.colorTextTvDescription5Light;
  Color get colorTextTvFacebook => _isDark
      ? AppColors.colorTextTvFacebookLight
      : AppColors.colorTextTvFacebookLight;
  Color get colorTextTvFacebook1 => _isDark
      ? AppColors.colorTextTvFacebook1Light
      : AppColors.colorTextTvFacebook1Light;
  Color get colorTextTvFaq =>
      _isDark ? AppColors.colorTextTvFaqLight : AppColors.colorTextTvFaqLight;
  Color get colorTextTvFaq1 =>
      _isDark ? AppColors.colorTextTvFaq1Light : AppColors.colorTextTvFaq1Light;
  Color get colorTextTvHeader => _isDark
      ? AppColors.colorTextTvHeaderLight
      : AppColors.colorTextTvHeaderLight;
  Color get colorTextTvHelpCenter => _isDark
      ? AppColors.colorTextTvHelpCenterLight
      : AppColors.colorTextTvHelpCenterLight;
  Color get colorTextTvHelpCenter1 => _isDark
      ? AppColors.colorTextTvHelpCenter1Light
      : AppColors.colorTextTvHelpCenter1Light;
  Color get colorTextTvHomeActionMenu => _isDark
      ? AppColors.colorTextTvHomeActionMenuLight
      : AppColors.colorTextTvHomeActionMenuLight;
  Color get colorTextTvInstagram => _isDark
      ? AppColors.colorTextTvInstagramLight
      : AppColors.colorTextTvInstagramLight;
  Color get colorTextTvInstagram1 => _isDark
      ? AppColors.colorTextTvInstagram1Light
      : AppColors.colorTextTvInstagram1Light;
  Color get colorTextTvLabel => _isDark
      ? AppColors.colorTextTvLabelLight
      : AppColors.colorTextTvLabelLight;
  Color get colorTextTvLabel1 => _isDark
      ? AppColors.colorTextTvLabel1Light
      : AppColors.colorTextTvLabel1Light;
  Color get colorTextTvLabel2 => _isDark
      ? AppColors.colorTextTvLabel2Light
      : AppColors.colorTextTvLabel2Light;
  Color get colorTextTvLabel3 => _isDark
      ? AppColors.colorTextTvLabel3Light
      : AppColors.colorTextTvLabel3Light;
  Color get colorTextTvLetsInSignUpSignIn => _isDark
      ? AppColors.colorTextTvLetsInSignUpSignInLight
      : AppColors.colorTextTvLetsInSignUpSignInLight;
  Color get colorTextTvNewServicesAvailable => _isDark
      ? AppColors.colorTextTvNewServicesAvailableLight
      : AppColors.colorTextTvNewServicesAvailableLight;
  Color get colorTextTvNewServicesAvailable1 => _isDark
      ? AppColors.colorTextTvNewServicesAvailable1Light
      : AppColors.colorTextTvNewServicesAvailable1Light;
  Color get colorTextTvNotification => _isDark
      ? AppColors.colorTextTvNotificationLight
      : AppColors.colorTextTvNotificationLight;
  Color get colorTextTvNotification1 => _isDark
      ? AppColors.colorTextTvNotification1Light
      : AppColors.colorTextTvNotification1Light;
  Color get colorTextTvNowYouCanTrackOrdersInRealTime => _isDark
      ? AppColors.colorTextTvNowYouCanTrackOrdersInRealTimeLight
      : AppColors.colorTextTvNowYouCanTrackOrdersInRealTimeLight;
  Color get colorTextTvNowYouCanTrackOrdersInRealTime1 => _isDark
      ? AppColors.colorTextTvNowYouCanTrackOrdersInRealTime1Light
      : AppColors.colorTextTvNowYouCanTrackOrdersInRealTime1Light;
  Color get colorTextTvNumber => _isDark
      ? AppColors.colorTextTvNumberLight
      : AppColors.colorTextTvNumberLight;
  Color get colorTextTvNumber1 => _isDark
      ? AppColors.colorTextTvNumber1Light
      : AppColors.colorTextTvNumber1Light;
  Color get colorTextTvNumber2 => _isDark
      ? AppColors.colorTextTvNumber2Light
      : AppColors.colorTextTvNumber2Light;
  Color get colorTextTvNumber3 => _isDark
      ? AppColors.colorTextTvNumber3Light
      : AppColors.colorTextTvNumber3Light;
  Color get colorTextTvOnboarding => _isDark
      ? AppColors.colorTextTvOnboardingLight
      : AppColors.colorTextTvOnboardingLight;
  Color get colorTextTvOnboarding1 => _isDark
      ? AppColors.colorTextTvOnboarding1Light
      : AppColors.colorTextTvOnboarding1Light;
  Color get colorTextTvOrders => _isDark
      ? AppColors.colorTextTvOrdersLight
      : AppColors.colorTextTvOrdersLight;
  Color get colorTextTvProfileSettings => _isDark
      ? AppColors.colorTextTvProfileSettingsLight
      : AppColors.colorTextTvProfileSettingsLight;
  Color get colorTextTvRememberMe => _isDark
      ? AppColors.colorTextTvRememberMeLight
      : AppColors.colorTextTvRememberMeLight;
  Color get colorTextTvRememberMe1 => _isDark
      ? AppColors.colorTextTvRememberMe1Light
      : AppColors.colorTextTvRememberMe1Light;
  Color get colorTextTvSearchFilter => _isDark
      ? AppColors.colorTextTvSearchFilterLight
      : AppColors.colorTextTvSearchFilterLight;
  Color get colorTextTvSearchFilter1 => _isDark
      ? AppColors.colorTextTvSearchFilter1Light
      : AppColors.colorTextTvSearchFilter1Light;
  Color get colorTextTvSection => _isDark
      ? AppColors.colorTextTvSectionLight
      : AppColors.colorTextTvSectionLight;
  Color get colorTextTvSection1 => _isDark
      ? AppColors.colorTextTvSection1Light
      : AppColors.colorTextTvSection1Light;
  Color get colorTextTvSection10 => _isDark
      ? AppColors.colorTextTvSection10Light
      : AppColors.colorTextTvSection10Light;
  Color get colorTextTvSection2 => _isDark
      ? AppColors.colorTextTvSection2Light
      : AppColors.colorTextTvSection2Light;
  Color get colorTextTvSection3 => _isDark
      ? AppColors.colorTextTvSection3Light
      : AppColors.colorTextTvSection3Light;
  Color get colorTextTvSection4 => _isDark
      ? AppColors.colorTextTvSection4Light
      : AppColors.colorTextTvSection4Light;
  Color get colorTextTvSection5 => _isDark
      ? AppColors.colorTextTvSection5Light
      : AppColors.colorTextTvSection5Light;
  Color get colorTextTvSection6 => _isDark
      ? AppColors.colorTextTvSection6Light
      : AppColors.colorTextTvSection6Light;
  Color get colorTextTvSection7 => _isDark
      ? AppColors.colorTextTvSection7Light
      : AppColors.colorTextTvSection7Light;
  Color get colorTextTvSection8 => _isDark
      ? AppColors.colorTextTvSection8Light
      : AppColors.colorTextTvSection8Light;
  Color get colorTextTvSection9 => _isDark
      ? AppColors.colorTextTvSection9Light
      : AppColors.colorTextTvSection9Light;
  Color get colorTextTvSpecialPromotionOnlyValidToday => _isDark
      ? AppColors.colorTextTvSpecialPromotionOnlyValidTodayLight
      : AppColors.colorTextTvSpecialPromotionOnlyValidTodayLight;
  Color get colorTextTvSpecialPromotionOnlyValidToday1 => _isDark
      ? AppColors.colorTextTvSpecialPromotionOnlyValidToday1Light
      : AppColors.colorTextTvSpecialPromotionOnlyValidToday1Light;
  Color get colorTextTvSubdescription => _isDark
      ? AppColors.colorTextTvSubdescriptionLight
      : AppColors.colorTextTvSubdescriptionLight;
  Color get colorTextTvSubheader => _isDark
      ? AppColors.colorTextTvSubheaderLight
      : AppColors.colorTextTvSubheaderLight;
  Color get colorTextTvTitle => _isDark
      ? AppColors.colorTextTvTitleLight
      : AppColors.colorTextTvTitleLight;
  Color get colorTextTvTitle1 => _isDark
      ? AppColors.colorTextTvTitle1Light
      : AppColors.colorTextTvTitle1Light;
  Color get colorTextTvTitle2 => _isDark
      ? AppColors.colorTextTvTitle2Light
      : AppColors.colorTextTvTitle2Light;
  Color get colorTextTvTitle3 => _isDark
      ? AppColors.colorTextTvTitle3Light
      : AppColors.colorTextTvTitle3Light;
  Color get colorTextTvTitle4 => _isDark
      ? AppColors.colorTextTvTitle4Light
      : AppColors.colorTextTvTitle4Light;
  Color get colorTextTvTitle5 => _isDark
      ? AppColors.colorTextTvTitle5Light
      : AppColors.colorTextTvTitle5Light;
  Color get colorTextTvTitle6 => _isDark
      ? AppColors.colorTextTvTitle6Light
      : AppColors.colorTextTvTitle6Light;
  Color get colorTextTvTitle7 => _isDark
      ? AppColors.colorTextTvTitle7Light
      : AppColors.colorTextTvTitle7Light;
  Color get colorTextTvTitle8 => _isDark
      ? AppColors.colorTextTvTitle8Light
      : AppColors.colorTextTvTitle8Light;
  Color get colorTextTvTitle9 => _isDark
      ? AppColors.colorTextTvTitle9Light
      : AppColors.colorTextTvTitle9Light;
  Color get colorTextTvToday => _isDark
      ? AppColors.colorTextTvTodayLight
      : AppColors.colorTextTvTodayLight;
  Color get colorTextTvToday1 => _isDark
      ? AppColors.colorTextTvToday1Light
      : AppColors.colorTextTvToday1Light;
  Color get colorTextTvTopUpEWallet => _isDark
      ? AppColors.colorTextTvTopUpEWalletLight
      : AppColors.colorTextTvTopUpEWalletLight;
  Color get colorTextTvTopUpEWallet1 => _isDark
      ? AppColors.colorTextTvTopUpEWallet1Light
      : AppColors.colorTextTvTopUpEWallet1Light;
  Color get colorTextTvTopUpEWalletSuccessful => _isDark
      ? AppColors.colorTextTvTopUpEWalletSuccessfulLight
      : AppColors.colorTextTvTopUpEWalletSuccessfulLight;
  Color get colorTextTvTopUpEWalletSuccessful1 => _isDark
      ? AppColors.colorTextTvTopUpEWalletSuccessful1Light
      : AppColors.colorTextTvTopUpEWalletSuccessful1Light;
  Color get colorTextTvTransactionHistory => _isDark
      ? AppColors.colorTextTvTransactionHistoryLight
      : AppColors.colorTextTvTransactionHistoryLight;
  Color get colorTextTvTransactionHistory1 => _isDark
      ? AppColors.colorTextTvTransactionHistory1Light
      : AppColors.colorTextTvTransactionHistory1Light;
  Color get colorTextTvTwitter => _isDark
      ? AppColors.colorTextTvTwitterLight
      : AppColors.colorTextTvTwitterLight;
  Color get colorTextTvTwitter1 => _isDark
      ? AppColors.colorTextTvTwitter1Light
      : AppColors.colorTextTvTwitter1Light;
  Color get colorTextTvWebsite => _isDark
      ? AppColors.colorTextTvWebsiteLight
      : AppColors.colorTextTvWebsiteLight;
  Color get colorTextTvWebsite1 => _isDark
      ? AppColors.colorTextTvWebsite1Light
      : AppColors.colorTextTvWebsite1Light;
  Color get colorTextTvWhatsapp => _isDark
      ? AppColors.colorTextTvWhatsappLight
      : AppColors.colorTextTvWhatsappLight;
  Color get colorTextTvWhatsapp1 => _isDark
      ? AppColors.colorTextTvWhatsapp1Light
      : AppColors.colorTextTvWhatsapp1Light;
  Color get colorTextTvYesterday => _isDark
      ? AppColors.colorTextTvYesterdayLight
      : AppColors.colorTextTvYesterdayLight;
  Color get colorTextTvYesterday1 => _isDark
      ? AppColors.colorTextTvYesterday1Light
      : AppColors.colorTextTvYesterday1Light;
  Color get colorTextTvYouHaveToTopUpYourEWallet => _isDark
      ? AppColors.colorTextTvYouHaveToTopUpYourEWalletLight
      : AppColors.colorTextTvYouHaveToTopUpYourEWalletLight;
  Color get colorTextTvYouHaveToTopUpYourEWallet1 => _isDark
      ? AppColors.colorTextTvYouHaveToTopUpYourEWallet1Light
      : AppColors.colorTextTvYouHaveToTopUpYourEWallet1Light;
  Color get colorTextTvYourAccountHasBeenCreated => _isDark
      ? AppColors.colorTextTvYourAccountHasBeenCreatedLight
      : AppColors.colorTextTvYourAccountHasBeenCreatedLight;
  Color get colorTextTvYourAccountHasBeenCreated1 => _isDark
      ? AppColors.colorTextTvYourAccountHasBeenCreated1Light
      : AppColors.colorTextTvYourAccountHasBeenCreated1Light;
}

extension AppThemeExt on BuildContext {
  AppThemeColors get appColors => AppThemeColors._(Theme.of(this).brightness);
}
