import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @readMeFirst.
  ///
  /// In en, this message translates to:
  /// **'READ ME FIRST ������'**
  String get readMeFirst;

  /// No description provided for @readMeFirst2.
  ///
  /// In en, this message translates to:
  /// **'READ ME FIRST ������'**
  String get readMeFirst2;

  /// No description provided for @readMeFirst3.
  ///
  /// In en, this message translates to:
  /// **'READ ME FIRST ������'**
  String get readMeFirst3;

  /// No description provided for @readMeFirst4.
  ///
  /// In en, this message translates to:
  /// **'READ ME FIRST ������'**
  String get readMeFirst4;

  /// No description provided for @freeForPersonalUseOnly.
  ///
  /// In en, this message translates to:
  /// **'Free for Personal Use Only'**
  String get freeForPersonalUseOnly;

  /// No description provided for @theDesignsInThisFileAreIntended.
  ///
  /// In en, this message translates to:
  /// **'The designs in this file are intended for the Figma Community. All previews have been rasterized and flattened into images for demonstration purposes. Any redesign, reskin, remake, or redistribution of this kit for commercial or resale purposes is NOT allowed.'**
  String get theDesignsInThisFileAreIntended;

  /// No description provided for @freeForPersonalUseOnly2.
  ///
  /// In en, this message translates to:
  /// **'Free for Personal Use Only'**
  String get freeForPersonalUseOnly2;

  /// No description provided for @theDesignsInThisFileAreIntended2.
  ///
  /// In en, this message translates to:
  /// **'The designs in this file are intended for the Figma Community. All previews have been rasterized and flattened into images for demonstration purposes. Any redesign, reskin, remake, or redistribution of this kit for commercial or resale purposes is NOT allowed.'**
  String get theDesignsInThisFileAreIntended2;

  /// No description provided for @getFullVersionCommercialUsePurpose.
  ///
  /// In en, this message translates to:
  /// **'Get Full Version & Commercial Use Purpose ������'**
  String get getFullVersionCommercialUsePurpose;

  /// No description provided for @purchaseThisDesignOnMyFigma.
  ///
  /// In en, this message translates to:
  /// **'Purchase this design on my Figma Community to access the full, 100% editable version with both personal and commercial use licenses.'**
  String get purchaseThisDesignOnMyFigma;

  /// No description provided for @getFullVersionCommercialUsePurpose2.
  ///
  /// In en, this message translates to:
  /// **'Get Full Version & Commercial Use Purpose ������'**
  String get getFullVersionCommercialUsePurpose2;

  /// No description provided for @purchaseThisDesignOnMyFigma2.
  ///
  /// In en, this message translates to:
  /// **'Purchase this design on my Figma Community to access the full, 100% editable version with both personal and commercial use licenses.'**
  String get purchaseThisDesignOnMyFigma2;

  /// No description provided for @freeForPersonalUseOnly3.
  ///
  /// In en, this message translates to:
  /// **'Free for Personal Use Only'**
  String get freeForPersonalUseOnly3;

  /// No description provided for @theDesignsInThisFileAreIntended3.
  ///
  /// In en, this message translates to:
  /// **'The designs in this file are intended for the Figma Community. All previews have been rasterized and flattened into images for demonstration purposes. Any redesign, reskin, remake, or redistribution of this kit for commercial or resale purposes is NOT allowed.'**
  String get theDesignsInThisFileAreIntended3;

  /// No description provided for @freeForPersonalUseOnly4.
  ///
  /// In en, this message translates to:
  /// **'Free for Personal Use Only'**
  String get freeForPersonalUseOnly4;

  /// No description provided for @theDesignsInThisFileAreIntended4.
  ///
  /// In en, this message translates to:
  /// **'The designs in this file are intended for the Figma Community. All previews have been rasterized and flattened into images for demonstration purposes. Any redesign, reskin, remake, or redistribution of this kit for commercial or resale purposes is NOT allowed.'**
  String get theDesignsInThisFileAreIntended4;

  /// No description provided for @getFullVersionCommercialUsePurpose3.
  ///
  /// In en, this message translates to:
  /// **'Get Full Version & Commercial Use Purpose ������'**
  String get getFullVersionCommercialUsePurpose3;

  /// No description provided for @purchaseThisDesignOnMyFigma3.
  ///
  /// In en, this message translates to:
  /// **'Purchase this design on my Figma Community to access the full, 100% editable version with both personal and commercial use licenses.'**
  String get purchaseThisDesignOnMyFigma3;

  /// No description provided for @getFullVersionCommercialUsePurpose4.
  ///
  /// In en, this message translates to:
  /// **'Get Full Version & Commercial Use Purpose ������'**
  String get getFullVersionCommercialUsePurpose4;

  /// No description provided for @purchaseThisDesignOnMyFigma4.
  ///
  /// In en, this message translates to:
  /// **'Purchase this design on my Figma Community to access the full, 100% editable version with both personal and commercial use licenses.'**
  String get purchaseThisDesignOnMyFigma4;

  /// No description provided for @freeForPersonalUseOnly5.
  ///
  /// In en, this message translates to:
  /// **'Free for Personal Use Only'**
  String get freeForPersonalUseOnly5;

  /// No description provided for @theDesignsInThisFileAreIntended5.
  ///
  /// In en, this message translates to:
  /// **'The designs in this file are intended for the Figma Community. All previews have been rasterized and flattened into images for demonstration purposes. Any redesign, reskin, remake, or redistribution of this kit for commercial or resale purposes is NOT allowed.'**
  String get theDesignsInThisFileAreIntended5;

  /// No description provided for @freeForPersonalUseOnly6.
  ///
  /// In en, this message translates to:
  /// **'Free for Personal Use Only'**
  String get freeForPersonalUseOnly6;

  /// No description provided for @theDesignsInThisFileAreIntended6.
  ///
  /// In en, this message translates to:
  /// **'The designs in this file are intended for the Figma Community. All previews have been rasterized and flattened into images for demonstration purposes. Any redesign, reskin, remake, or redistribution of this kit for commercial or resale purposes is NOT allowed.'**
  String get theDesignsInThisFileAreIntended6;

  /// No description provided for @getFullVersionCommercialUsePurpose5.
  ///
  /// In en, this message translates to:
  /// **'Get Full Version & Commercial Use Purpose ������'**
  String get getFullVersionCommercialUsePurpose5;

  /// No description provided for @purchaseThisDesignOnMyFigma5.
  ///
  /// In en, this message translates to:
  /// **'Purchase this design on my Figma Community to access the full, 100% editable version with both personal and commercial use licenses.'**
  String get purchaseThisDesignOnMyFigma5;

  /// No description provided for @getFullVersionCommercialUsePurpose6.
  ///
  /// In en, this message translates to:
  /// **'Get Full Version & Commercial Use Purpose ������'**
  String get getFullVersionCommercialUsePurpose6;

  /// No description provided for @purchaseThisDesignOnMyFigma6.
  ///
  /// In en, this message translates to:
  /// **'Purchase this design on my Figma Community to access the full, 100% editable version with both personal and commercial use licenses.'**
  String get purchaseThisDesignOnMyFigma6;

  /// No description provided for @freeForPersonalUseOnly7.
  ///
  /// In en, this message translates to:
  /// **'Free for Personal Use Only'**
  String get freeForPersonalUseOnly7;

  /// No description provided for @theDesignsInThisFileAreIntended7.
  ///
  /// In en, this message translates to:
  /// **'The designs in this file are intended for the Figma Community. All previews have been rasterized and flattened into images for demonstration purposes. Any redesign, reskin, remake, or redistribution of this kit for commercial or resale purposes is NOT allowed.'**
  String get theDesignsInThisFileAreIntended7;

  /// No description provided for @freeForPersonalUseOnly8.
  ///
  /// In en, this message translates to:
  /// **'Free for Personal Use Only'**
  String get freeForPersonalUseOnly8;

  /// No description provided for @theDesignsInThisFileAreIntended8.
  ///
  /// In en, this message translates to:
  /// **'The designs in this file are intended for the Figma Community. All previews have been rasterized and flattened into images for demonstration purposes. Any redesign, reskin, remake, or redistribution of this kit for commercial or resale purposes is NOT allowed.'**
  String get theDesignsInThisFileAreIntended8;

  /// No description provided for @getFullVersionCommercialUsePurpose7.
  ///
  /// In en, this message translates to:
  /// **'Get Full Version & Commercial Use Purpose ������'**
  String get getFullVersionCommercialUsePurpose7;

  /// No description provided for @purchaseThisDesignOnMyFigma7.
  ///
  /// In en, this message translates to:
  /// **'Purchase this design on my Figma Community to access the full, 100% editable version with both personal and commercial use licenses.'**
  String get purchaseThisDesignOnMyFigma7;

  /// No description provided for @getFullVersionCommercialUsePurpose8.
  ///
  /// In en, this message translates to:
  /// **'Get Full Version & Commercial Use Purpose ������'**
  String get getFullVersionCommercialUsePurpose8;

  /// No description provided for @purchaseThisDesignOnMyFigma8.
  ///
  /// In en, this message translates to:
  /// **'Purchase this design on my Figma Community to access the full, 100% editable version with both personal and commercial use licenses.'**
  String get purchaseThisDesignOnMyFigma8;

  /// No description provided for @quickStartGuide.
  ///
  /// In en, this message translates to:
  /// **'QUICK START GUIDE ⚡'**
  String get quickStartGuide;

  /// No description provided for @afterPurchaseYouCanFollowThisForA.
  ///
  /// In en, this message translates to:
  /// **'After purchase, you can follow this for a quick guide with the original files you get.'**
  String get afterPurchaseYouCanFollowThisForA;

  /// No description provided for @quickStartGuide2.
  ///
  /// In en, this message translates to:
  /// **'QUICK START GUIDE ⚡'**
  String get quickStartGuide2;

  /// No description provided for @afterPurchaseYouCanFollowThisForA2.
  ///
  /// In en, this message translates to:
  /// **'After purchase, you can follow this for a quick guide with the original files you get.'**
  String get afterPurchaseYouCanFollowThisForA2;

  /// No description provided for @s1.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get s1;

  /// No description provided for @s12.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get s12;

  /// No description provided for @switchingBetweenPagesInFigma.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma;

  /// No description provided for @goToTheNavigationPanelLeftSidebar.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar;

  /// No description provided for @switchingBetweenPagesInFigma2.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma2;

  /// No description provided for @goToTheNavigationPanelLeftSidebar2.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar2;

  /// No description provided for @switchingBetweenPagesInFigma3.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma3;

  /// No description provided for @goToTheNavigationPanelLeftSidebar3.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar3;

  /// No description provided for @s13.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get s13;

  /// No description provided for @s14.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get s14;

  /// No description provided for @switchingBetweenPagesInFigma4.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma4;

  /// No description provided for @goToTheNavigationPanelLeftSidebar4.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar4;

  /// No description provided for @switchingBetweenPagesInFigma5.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma5;

  /// No description provided for @goToTheNavigationPanelLeftSidebar5.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar5;

  /// No description provided for @switchingBetweenPagesInFigma6.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma6;

  /// No description provided for @goToTheNavigationPanelLeftSidebar6.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar6;

  /// No description provided for @s2.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get s2;

  /// No description provided for @s22.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get s22;

  /// No description provided for @workingWithLocalStyles.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles;

  /// No description provided for @youCanChangeTypographyColorStyles.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles;

  /// No description provided for @workingWithLocalStyles2.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles2;

  /// No description provided for @youCanChangeTypographyColorStyles2.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles2;

  /// No description provided for @workingWithLocalStyles3.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles3;

  /// No description provided for @youCanChangeTypographyColorStyles3.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles3;

  /// No description provided for @s23.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get s23;

  /// No description provided for @s24.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get s24;

  /// No description provided for @workingWithLocalStyles4.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles4;

  /// No description provided for @youCanChangeTypographyColorStyles4.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles4;

  /// No description provided for @workingWithLocalStyles5.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles5;

  /// No description provided for @youCanChangeTypographyColorStyles5.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles5;

  /// No description provided for @workingWithLocalStyles6.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles6;

  /// No description provided for @youCanChangeTypographyColorStyles6.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles6;

  /// No description provided for @s3.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get s3;

  /// No description provided for @s32.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get s32;

  /// No description provided for @workingWithComponentsAndDesign.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf;

  /// No description provided for @workingWithComponentsAndDesign2.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign2;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf2.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf2;

  /// No description provided for @workingWithComponentsAndDesign3.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign3;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf3.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf3;

  /// No description provided for @s33.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get s33;

  /// No description provided for @s34.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get s34;

  /// No description provided for @workingWithComponentsAndDesign4.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign4;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf4.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf4;

  /// No description provided for @workingWithComponentsAndDesign5.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign5;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf5.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf5;

  /// No description provided for @workingWithComponentsAndDesign6.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign6;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf6.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf6;

  /// No description provided for @s4.
  ///
  /// In en, this message translates to:
  /// **'4'**
  String get s4;

  /// No description provided for @s42.
  ///
  /// In en, this message translates to:
  /// **'4'**
  String get s42;

  /// No description provided for @workingWithAutoLayout.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas;

  /// No description provided for @workingWithAutoLayout2.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout2;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas2.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas2;

  /// No description provided for @workingWithAutoLayout3.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout3;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas3.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas3;

  /// No description provided for @s43.
  ///
  /// In en, this message translates to:
  /// **'4'**
  String get s43;

  /// No description provided for @s44.
  ///
  /// In en, this message translates to:
  /// **'4'**
  String get s44;

  /// No description provided for @workingWithAutoLayout4.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout4;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas4.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas4;

  /// No description provided for @workingWithAutoLayout5.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout5;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas5.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas5;

  /// No description provided for @workingWithAutoLayout6.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout6;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas6.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas6;

  /// No description provided for @quickStartGuide3.
  ///
  /// In en, this message translates to:
  /// **'QUICK START GUIDE ⚡'**
  String get quickStartGuide3;

  /// No description provided for @afterPurchaseYouCanFollowThisForA3.
  ///
  /// In en, this message translates to:
  /// **'After purchase, you can follow this for a quick guide with the original files you get.'**
  String get afterPurchaseYouCanFollowThisForA3;

  /// No description provided for @quickStartGuide4.
  ///
  /// In en, this message translates to:
  /// **'QUICK START GUIDE ⚡'**
  String get quickStartGuide4;

  /// No description provided for @afterPurchaseYouCanFollowThisForA4.
  ///
  /// In en, this message translates to:
  /// **'After purchase, you can follow this for a quick guide with the original files you get.'**
  String get afterPurchaseYouCanFollowThisForA4;

  /// No description provided for @s15.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get s15;

  /// No description provided for @s16.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get s16;

  /// No description provided for @switchingBetweenPagesInFigma7.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma7;

  /// No description provided for @goToTheNavigationPanelLeftSidebar7.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar7;

  /// No description provided for @switchingBetweenPagesInFigma8.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma8;

  /// No description provided for @goToTheNavigationPanelLeftSidebar8.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar8;

  /// No description provided for @switchingBetweenPagesInFigma9.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma9;

  /// No description provided for @goToTheNavigationPanelLeftSidebar9.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar9;

  /// No description provided for @s17.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get s17;

  /// No description provided for @s18.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get s18;

  /// No description provided for @switchingBetweenPagesInFigma10.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma10;

  /// No description provided for @goToTheNavigationPanelLeftSidebar10.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar10;

  /// No description provided for @switchingBetweenPagesInFigma11.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma11;

  /// No description provided for @goToTheNavigationPanelLeftSidebar11.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar11;

  /// No description provided for @switchingBetweenPagesInFigma12.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma12;

  /// No description provided for @goToTheNavigationPanelLeftSidebar12.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar12;

  /// No description provided for @s25.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get s25;

  /// No description provided for @s26.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get s26;

  /// No description provided for @workingWithLocalStyles7.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles7;

  /// No description provided for @youCanChangeTypographyColorStyles7.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles7;

  /// No description provided for @workingWithLocalStyles8.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles8;

  /// No description provided for @youCanChangeTypographyColorStyles8.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles8;

  /// No description provided for @workingWithLocalStyles9.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles9;

  /// No description provided for @youCanChangeTypographyColorStyles9.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles9;

  /// No description provided for @s27.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get s27;

  /// No description provided for @s28.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get s28;

  /// No description provided for @workingWithLocalStyles10.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles10;

  /// No description provided for @youCanChangeTypographyColorStyles10.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles10;

  /// No description provided for @workingWithLocalStyles11.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles11;

  /// No description provided for @youCanChangeTypographyColorStyles11.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles11;

  /// No description provided for @workingWithLocalStyles12.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles12;

  /// No description provided for @youCanChangeTypographyColorStyles12.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles12;

  /// No description provided for @s35.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get s35;

  /// No description provided for @s36.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get s36;

  /// No description provided for @workingWithComponentsAndDesign7.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign7;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf7.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf7;

  /// No description provided for @workingWithComponentsAndDesign8.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign8;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf8.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf8;

  /// No description provided for @workingWithComponentsAndDesign9.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign9;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf9.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf9;

  /// No description provided for @s37.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get s37;

  /// No description provided for @s38.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get s38;

  /// No description provided for @workingWithComponentsAndDesign10.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign10;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf10.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf10;

  /// No description provided for @workingWithComponentsAndDesign11.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign11;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf11.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf11;

  /// No description provided for @workingWithComponentsAndDesign12.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign12;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf12.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf12;

  /// No description provided for @s45.
  ///
  /// In en, this message translates to:
  /// **'4'**
  String get s45;

  /// No description provided for @s46.
  ///
  /// In en, this message translates to:
  /// **'4'**
  String get s46;

  /// No description provided for @workingWithAutoLayout7.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout7;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas7.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas7;

  /// No description provided for @workingWithAutoLayout8.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout8;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas8.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas8;

  /// No description provided for @workingWithAutoLayout9.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout9;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas9.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas9;

  /// No description provided for @s47.
  ///
  /// In en, this message translates to:
  /// **'4'**
  String get s47;

  /// No description provided for @s48.
  ///
  /// In en, this message translates to:
  /// **'4'**
  String get s48;

  /// No description provided for @workingWithAutoLayout10.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout10;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas10.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas10;

  /// No description provided for @workingWithAutoLayout11.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout11;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas11.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas11;

  /// No description provided for @workingWithAutoLayout12.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout12;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas12.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas12;

  /// No description provided for @quickStartGuide5.
  ///
  /// In en, this message translates to:
  /// **'QUICK START GUIDE ⚡'**
  String get quickStartGuide5;

  /// No description provided for @afterPurchaseYouCanFollowThisForA5.
  ///
  /// In en, this message translates to:
  /// **'After purchase, you can follow this for a quick guide with the original files you get.'**
  String get afterPurchaseYouCanFollowThisForA5;

  /// No description provided for @quickStartGuide6.
  ///
  /// In en, this message translates to:
  /// **'QUICK START GUIDE ⚡'**
  String get quickStartGuide6;

  /// No description provided for @afterPurchaseYouCanFollowThisForA6.
  ///
  /// In en, this message translates to:
  /// **'After purchase, you can follow this for a quick guide with the original files you get.'**
  String get afterPurchaseYouCanFollowThisForA6;

  /// No description provided for @s19.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get s19;

  /// No description provided for @s110.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get s110;

  /// No description provided for @switchingBetweenPagesInFigma13.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma13;

  /// No description provided for @goToTheNavigationPanelLeftSidebar13.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar13;

  /// No description provided for @switchingBetweenPagesInFigma14.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma14;

  /// No description provided for @goToTheNavigationPanelLeftSidebar14.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar14;

  /// No description provided for @switchingBetweenPagesInFigma15.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma15;

  /// No description provided for @goToTheNavigationPanelLeftSidebar15.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar15;

  /// No description provided for @s111.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get s111;

  /// No description provided for @s112.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get s112;

  /// No description provided for @switchingBetweenPagesInFigma16.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma16;

  /// No description provided for @goToTheNavigationPanelLeftSidebar16.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar16;

  /// No description provided for @switchingBetweenPagesInFigma17.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma17;

  /// No description provided for @goToTheNavigationPanelLeftSidebar17.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar17;

  /// No description provided for @switchingBetweenPagesInFigma18.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma18;

  /// No description provided for @goToTheNavigationPanelLeftSidebar18.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar18;

  /// No description provided for @s29.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get s29;

  /// No description provided for @s210.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get s210;

  /// No description provided for @workingWithLocalStyles13.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles13;

  /// No description provided for @youCanChangeTypographyColorStyles13.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles13;

  /// No description provided for @workingWithLocalStyles14.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles14;

  /// No description provided for @youCanChangeTypographyColorStyles14.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles14;

  /// No description provided for @workingWithLocalStyles15.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles15;

  /// No description provided for @youCanChangeTypographyColorStyles15.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles15;

  /// No description provided for @s211.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get s211;

  /// No description provided for @s212.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get s212;

  /// No description provided for @workingWithLocalStyles16.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles16;

  /// No description provided for @youCanChangeTypographyColorStyles16.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles16;

  /// No description provided for @workingWithLocalStyles17.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles17;

  /// No description provided for @youCanChangeTypographyColorStyles17.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles17;

  /// No description provided for @workingWithLocalStyles18.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles18;

  /// No description provided for @youCanChangeTypographyColorStyles18.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles18;

  /// No description provided for @s39.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get s39;

  /// No description provided for @s310.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get s310;

  /// No description provided for @workingWithComponentsAndDesign13.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign13;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf13.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf13;

  /// No description provided for @workingWithComponentsAndDesign14.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign14;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf14.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf14;

  /// No description provided for @workingWithComponentsAndDesign15.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign15;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf15.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf15;

  /// No description provided for @s311.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get s311;

  /// No description provided for @s312.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get s312;

  /// No description provided for @workingWithComponentsAndDesign16.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign16;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf16.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf16;

  /// No description provided for @workingWithComponentsAndDesign17.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign17;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf17.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf17;

  /// No description provided for @workingWithComponentsAndDesign18.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign18;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf18.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf18;

  /// No description provided for @s49.
  ///
  /// In en, this message translates to:
  /// **'4'**
  String get s49;

  /// No description provided for @s410.
  ///
  /// In en, this message translates to:
  /// **'4'**
  String get s410;

  /// No description provided for @workingWithAutoLayout13.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout13;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas13.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas13;

  /// No description provided for @workingWithAutoLayout14.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout14;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas14.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas14;

  /// No description provided for @workingWithAutoLayout15.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout15;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas15.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas15;

  /// No description provided for @s411.
  ///
  /// In en, this message translates to:
  /// **'4'**
  String get s411;

  /// No description provided for @s412.
  ///
  /// In en, this message translates to:
  /// **'4'**
  String get s412;

  /// No description provided for @workingWithAutoLayout16.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout16;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas16.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas16;

  /// No description provided for @workingWithAutoLayout17.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout17;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas17.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas17;

  /// No description provided for @workingWithAutoLayout18.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout18;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas18.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas18;

  /// No description provided for @quickStartGuide7.
  ///
  /// In en, this message translates to:
  /// **'QUICK START GUIDE ⚡'**
  String get quickStartGuide7;

  /// No description provided for @afterPurchaseYouCanFollowThisForA7.
  ///
  /// In en, this message translates to:
  /// **'After purchase, you can follow this for a quick guide with the original files you get.'**
  String get afterPurchaseYouCanFollowThisForA7;

  /// No description provided for @quickStartGuide8.
  ///
  /// In en, this message translates to:
  /// **'QUICK START GUIDE ⚡'**
  String get quickStartGuide8;

  /// No description provided for @afterPurchaseYouCanFollowThisForA8.
  ///
  /// In en, this message translates to:
  /// **'After purchase, you can follow this for a quick guide with the original files you get.'**
  String get afterPurchaseYouCanFollowThisForA8;

  /// No description provided for @s113.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get s113;

  /// No description provided for @s114.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get s114;

  /// No description provided for @switchingBetweenPagesInFigma19.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma19;

  /// No description provided for @goToTheNavigationPanelLeftSidebar19.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar19;

  /// No description provided for @switchingBetweenPagesInFigma20.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma20;

  /// No description provided for @goToTheNavigationPanelLeftSidebar20.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar20;

  /// No description provided for @switchingBetweenPagesInFigma21.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma21;

  /// No description provided for @goToTheNavigationPanelLeftSidebar21.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar21;

  /// No description provided for @s115.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get s115;

  /// No description provided for @s116.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get s116;

  /// No description provided for @switchingBetweenPagesInFigma22.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma22;

  /// No description provided for @goToTheNavigationPanelLeftSidebar22.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar22;

  /// No description provided for @switchingBetweenPagesInFigma23.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma23;

  /// No description provided for @goToTheNavigationPanelLeftSidebar23.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar23;

  /// No description provided for @switchingBetweenPagesInFigma24.
  ///
  /// In en, this message translates to:
  /// **'Switching Between Pages in Figma'**
  String get switchingBetweenPagesInFigma24;

  /// No description provided for @goToTheNavigationPanelLeftSidebar24.
  ///
  /// In en, this message translates to:
  /// **'Go to the navigation panel (left sidebar) in the Figma canvas, and you can switch from one page to another. Access the light theme, dark theme, and design system via this panel. You can reorder or rename the pages as you wish.'**
  String get goToTheNavigationPanelLeftSidebar24;

  /// No description provided for @s213.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get s213;

  /// No description provided for @s214.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get s214;

  /// No description provided for @workingWithLocalStyles19.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles19;

  /// No description provided for @youCanChangeTypographyColorStyles19.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles19;

  /// No description provided for @workingWithLocalStyles20.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles20;

  /// No description provided for @youCanChangeTypographyColorStyles20.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles20;

  /// No description provided for @workingWithLocalStyles21.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles21;

  /// No description provided for @youCanChangeTypographyColorStyles21.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles21;

  /// No description provided for @s215.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get s215;

  /// No description provided for @s216.
  ///
  /// In en, this message translates to:
  /// **'2'**
  String get s216;

  /// No description provided for @workingWithLocalStyles22.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles22;

  /// No description provided for @youCanChangeTypographyColorStyles22.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles22;

  /// No description provided for @workingWithLocalStyles23.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles23;

  /// No description provided for @youCanChangeTypographyColorStyles23.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles23;

  /// No description provided for @workingWithLocalStyles24.
  ///
  /// In en, this message translates to:
  /// **'Working with Local Styles'**
  String get workingWithLocalStyles24;

  /// No description provided for @youCanChangeTypographyColorStyles24.
  ///
  /// In en, this message translates to:
  /// **'You can change typography, color styles, effects, and grids via local styles according to your needs. If you are not familiar with local styles, you can always detach them and edit the design manually.'**
  String get youCanChangeTypographyColorStyles24;

  /// No description provided for @s313.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get s313;

  /// No description provided for @s314.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get s314;

  /// No description provided for @workingWithComponentsAndDesign19.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign19;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf19.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf19;

  /// No description provided for @workingWithComponentsAndDesign20.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign20;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf20.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf20;

  /// No description provided for @workingWithComponentsAndDesign21.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign21;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf21.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf21;

  /// No description provided for @s315.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get s315;

  /// No description provided for @s316.
  ///
  /// In en, this message translates to:
  /// **'3'**
  String get s316;

  /// No description provided for @workingWithComponentsAndDesign22.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign22;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf22.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf22;

  /// No description provided for @workingWithComponentsAndDesign23.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign23;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf23.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf23;

  /// No description provided for @workingWithComponentsAndDesign24.
  ///
  /// In en, this message translates to:
  /// **'Working with Components and Design Systems'**
  String get workingWithComponentsAndDesign24;

  /// No description provided for @speedUpYourWorkflowWithHundredsOf24.
  ///
  /// In en, this message translates to:
  /// **'Speed up your workflow with hundreds of reusable design components. Change logos, iconography, buttons, input forms, chips, navbar, checkboxes, modals, etc. according to your preferences. You can always detach components and edit designs manually.'**
  String get speedUpYourWorkflowWithHundredsOf24;

  /// No description provided for @s413.
  ///
  /// In en, this message translates to:
  /// **'4'**
  String get s413;

  /// No description provided for @s414.
  ///
  /// In en, this message translates to:
  /// **'4'**
  String get s414;

  /// No description provided for @workingWithAutoLayout19.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout19;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas19.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas19;

  /// No description provided for @workingWithAutoLayout20.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout20;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas20.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas20;

  /// No description provided for @workingWithAutoLayout21.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout21;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas21.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas21;

  /// No description provided for @s415.
  ///
  /// In en, this message translates to:
  /// **'4'**
  String get s415;

  /// No description provided for @s416.
  ///
  /// In en, this message translates to:
  /// **'4'**
  String get s416;

  /// No description provided for @workingWithAutoLayout22.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout22;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas22.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas22;

  /// No description provided for @workingWithAutoLayout23.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout23;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas23.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas23;

  /// No description provided for @workingWithAutoLayout24.
  ///
  /// In en, this message translates to:
  /// **'Working with Auto Layout'**
  String get workingWithAutoLayout24;

  /// No description provided for @autoLayoutIsVeryUsefulThisAppHas24.
  ///
  /// In en, this message translates to:
  /// **'Auto layout is very useful! This app has been designed with 100% auto layout, so if you change the size of the frame (artboard), the design will be automatically adaptive and responsive according to the size of the frame you want. If you are not familiar with auto layout, then you can right click the layer and select remove auto layout.'**
  String get autoLayoutIsVeryUsefulThisAppHas24;

  /// No description provided for @freeDesignSamples.
  ///
  /// In en, this message translates to:
  /// **'FREE DESIGN SAMPLES'**
  String get freeDesignSamples;

  /// No description provided for @freeDesignSamples2.
  ///
  /// In en, this message translates to:
  /// **'FREE DESIGN SAMPLES'**
  String get freeDesignSamples2;

  /// No description provided for @freeDesignSamples3.
  ///
  /// In en, this message translates to:
  /// **'FREE DESIGN SAMPLES'**
  String get freeDesignSamples3;

  /// No description provided for @freeDesignSamples4.
  ///
  /// In en, this message translates to:
  /// **'FREE DESIGN SAMPLES'**
  String get freeDesignSamples4;

  /// No description provided for @createNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Create New Password'**
  String get createNewPassword;

  /// No description provided for @createNewPassword2.
  ///
  /// In en, this message translates to:
  /// **'Create New Password'**
  String get createNewPassword2;

  /// No description provided for @createYourNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Create Your New Password'**
  String get createYourNewPassword;

  /// No description provided for @layout26LightCreateNewPasswordText.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText;

  /// No description provided for @layout26LightCreateNewPasswordText2.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText2;

  /// No description provided for @layout26LightCreateNewPasswordText3.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText3;

  /// No description provided for @layout26LightCreateNewPasswordText4.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText4;

  /// No description provided for @rememberMe.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe;

  /// No description provided for @rememberMe2.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe2;

  /// No description provided for @createYourNewPassword2.
  ///
  /// In en, this message translates to:
  /// **'Create Your New Password'**
  String get createYourNewPassword2;

  /// No description provided for @layout26LightCreateNewPasswordText5.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText5;

  /// No description provided for @layout26LightCreateNewPasswordText6.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText6;

  /// No description provided for @layout26LightCreateNewPasswordText7.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText7;

  /// No description provided for @layout26LightCreateNewPasswordText8.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText8;

  /// No description provided for @rememberMe3.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe3;

  /// No description provided for @rememberMe4.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe4;

  /// No description provided for @continueText.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText;

  /// No description provided for @continueText2.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText2;

  /// No description provided for @createNewPassword3.
  ///
  /// In en, this message translates to:
  /// **'Create New Password'**
  String get createNewPassword3;

  /// No description provided for @createNewPassword4.
  ///
  /// In en, this message translates to:
  /// **'Create New Password'**
  String get createNewPassword4;

  /// No description provided for @createYourNewPassword3.
  ///
  /// In en, this message translates to:
  /// **'Create Your New Password'**
  String get createYourNewPassword3;

  /// No description provided for @layout26LightCreateNewPasswordText9.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText9;

  /// No description provided for @layout26LightCreateNewPasswordText10.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText10;

  /// No description provided for @layout26LightCreateNewPasswordText11.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText11;

  /// No description provided for @layout26LightCreateNewPasswordText12.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText12;

  /// No description provided for @rememberMe5.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe5;

  /// No description provided for @rememberMe6.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe6;

  /// No description provided for @createYourNewPassword4.
  ///
  /// In en, this message translates to:
  /// **'Create Your New Password'**
  String get createYourNewPassword4;

  /// No description provided for @layout26LightCreateNewPasswordText13.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText13;

  /// No description provided for @layout26LightCreateNewPasswordText14.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText14;

  /// No description provided for @layout26LightCreateNewPasswordText15.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText15;

  /// No description provided for @layout26LightCreateNewPasswordText16.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText16;

  /// No description provided for @rememberMe7.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe7;

  /// No description provided for @rememberMe8.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe8;

  /// No description provided for @continueText3.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText3;

  /// No description provided for @continueText4.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText4;

  /// No description provided for @createNewPassword5.
  ///
  /// In en, this message translates to:
  /// **'Create New Password'**
  String get createNewPassword5;

  /// No description provided for @createNewPassword6.
  ///
  /// In en, this message translates to:
  /// **'Create New Password'**
  String get createNewPassword6;

  /// No description provided for @createYourNewPassword5.
  ///
  /// In en, this message translates to:
  /// **'Create Your New Password'**
  String get createYourNewPassword5;

  /// No description provided for @layout26LightCreateNewPasswordText17.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText17;

  /// No description provided for @layout26LightCreateNewPasswordText18.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText18;

  /// No description provided for @layout26LightCreateNewPasswordText19.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText19;

  /// No description provided for @layout26LightCreateNewPasswordText20.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText20;

  /// No description provided for @rememberMe9.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe9;

  /// No description provided for @rememberMe10.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe10;

  /// No description provided for @createYourNewPassword6.
  ///
  /// In en, this message translates to:
  /// **'Create Your New Password'**
  String get createYourNewPassword6;

  /// No description provided for @layout26LightCreateNewPasswordText21.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText21;

  /// No description provided for @layout26LightCreateNewPasswordText22.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText22;

  /// No description provided for @layout26LightCreateNewPasswordText23.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText23;

  /// No description provided for @layout26LightCreateNewPasswordText24.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText24;

  /// No description provided for @rememberMe11.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe11;

  /// No description provided for @rememberMe12.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe12;

  /// No description provided for @continueText5.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText5;

  /// No description provided for @continueText6.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText6;

  /// No description provided for @createNewPassword7.
  ///
  /// In en, this message translates to:
  /// **'Create New Password'**
  String get createNewPassword7;

  /// No description provided for @createNewPassword8.
  ///
  /// In en, this message translates to:
  /// **'Create New Password'**
  String get createNewPassword8;

  /// No description provided for @createYourNewPassword7.
  ///
  /// In en, this message translates to:
  /// **'Create Your New Password'**
  String get createYourNewPassword7;

  /// No description provided for @layout26LightCreateNewPasswordText25.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText25;

  /// No description provided for @layout26LightCreateNewPasswordText26.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText26;

  /// No description provided for @layout26LightCreateNewPasswordText27.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText27;

  /// No description provided for @layout26LightCreateNewPasswordText28.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText28;

  /// No description provided for @rememberMe13.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe13;

  /// No description provided for @rememberMe14.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe14;

  /// No description provided for @createYourNewPassword8.
  ///
  /// In en, this message translates to:
  /// **'Create Your New Password'**
  String get createYourNewPassword8;

  /// No description provided for @layout26LightCreateNewPasswordText29.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText29;

  /// No description provided for @layout26LightCreateNewPasswordText30.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText30;

  /// No description provided for @layout26LightCreateNewPasswordText31.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText31;

  /// No description provided for @layout26LightCreateNewPasswordText32.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText32;

  /// No description provided for @rememberMe15.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe15;

  /// No description provided for @rememberMe16.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe16;

  /// No description provided for @continueText7.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText7;

  /// No description provided for @continueText8.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText8;

  /// No description provided for @createNewPassword9.
  ///
  /// In en, this message translates to:
  /// **'Create New Password'**
  String get createNewPassword9;

  /// No description provided for @createNewPassword10.
  ///
  /// In en, this message translates to:
  /// **'Create New Password'**
  String get createNewPassword10;

  /// No description provided for @createYourNewPassword9.
  ///
  /// In en, this message translates to:
  /// **'Create Your New Password'**
  String get createYourNewPassword9;

  /// No description provided for @layout26LightCreateNewPasswordText33.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText33;

  /// No description provided for @layout26LightCreateNewPasswordText34.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText34;

  /// No description provided for @layout26LightCreateNewPasswordText35.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText35;

  /// No description provided for @layout26LightCreateNewPasswordText36.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText36;

  /// No description provided for @rememberMe17.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe17;

  /// No description provided for @rememberMe18.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe18;

  /// No description provided for @createYourNewPassword10.
  ///
  /// In en, this message translates to:
  /// **'Create Your New Password'**
  String get createYourNewPassword10;

  /// No description provided for @layout26LightCreateNewPasswordText37.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText37;

  /// No description provided for @layout26LightCreateNewPasswordText38.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText38;

  /// No description provided for @layout26LightCreateNewPasswordText39.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText39;

  /// No description provided for @layout26LightCreateNewPasswordText40.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText40;

  /// No description provided for @rememberMe19.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe19;

  /// No description provided for @rememberMe20.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe20;

  /// No description provided for @continueText9.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText9;

  /// No description provided for @continueText10.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText10;

  /// No description provided for @createNewPassword11.
  ///
  /// In en, this message translates to:
  /// **'Create New Password'**
  String get createNewPassword11;

  /// No description provided for @createNewPassword12.
  ///
  /// In en, this message translates to:
  /// **'Create New Password'**
  String get createNewPassword12;

  /// No description provided for @createYourNewPassword11.
  ///
  /// In en, this message translates to:
  /// **'Create Your New Password'**
  String get createYourNewPassword11;

  /// No description provided for @layout26LightCreateNewPasswordText41.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText41;

  /// No description provided for @layout26LightCreateNewPasswordText42.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText42;

  /// No description provided for @layout26LightCreateNewPasswordText43.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText43;

  /// No description provided for @layout26LightCreateNewPasswordText44.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText44;

  /// No description provided for @rememberMe21.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe21;

  /// No description provided for @rememberMe22.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe22;

  /// No description provided for @createYourNewPassword12.
  ///
  /// In en, this message translates to:
  /// **'Create Your New Password'**
  String get createYourNewPassword12;

  /// No description provided for @layout26LightCreateNewPasswordText45.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText45;

  /// No description provided for @layout26LightCreateNewPasswordText46.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText46;

  /// No description provided for @layout26LightCreateNewPasswordText47.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText47;

  /// No description provided for @layout26LightCreateNewPasswordText48.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText48;

  /// No description provided for @rememberMe23.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe23;

  /// No description provided for @rememberMe24.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe24;

  /// No description provided for @continueText11.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText11;

  /// No description provided for @continueText12.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText12;

  /// No description provided for @createNewPassword13.
  ///
  /// In en, this message translates to:
  /// **'Create New Password'**
  String get createNewPassword13;

  /// No description provided for @createNewPassword14.
  ///
  /// In en, this message translates to:
  /// **'Create New Password'**
  String get createNewPassword14;

  /// No description provided for @createYourNewPassword13.
  ///
  /// In en, this message translates to:
  /// **'Create Your New Password'**
  String get createYourNewPassword13;

  /// No description provided for @layout26LightCreateNewPasswordText49.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText49;

  /// No description provided for @layout26LightCreateNewPasswordText50.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText50;

  /// No description provided for @layout26LightCreateNewPasswordText51.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText51;

  /// No description provided for @layout26LightCreateNewPasswordText52.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText52;

  /// No description provided for @rememberMe25.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe25;

  /// No description provided for @rememberMe26.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe26;

  /// No description provided for @createYourNewPassword14.
  ///
  /// In en, this message translates to:
  /// **'Create Your New Password'**
  String get createYourNewPassword14;

  /// No description provided for @layout26LightCreateNewPasswordText53.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText53;

  /// No description provided for @layout26LightCreateNewPasswordText54.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText54;

  /// No description provided for @layout26LightCreateNewPasswordText55.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText55;

  /// No description provided for @layout26LightCreateNewPasswordText56.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText56;

  /// No description provided for @rememberMe27.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe27;

  /// No description provided for @rememberMe28.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe28;

  /// No description provided for @continueText13.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText13;

  /// No description provided for @continueText14.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText14;

  /// No description provided for @createNewPassword15.
  ///
  /// In en, this message translates to:
  /// **'Create New Password'**
  String get createNewPassword15;

  /// No description provided for @createNewPassword16.
  ///
  /// In en, this message translates to:
  /// **'Create New Password'**
  String get createNewPassword16;

  /// No description provided for @createYourNewPassword15.
  ///
  /// In en, this message translates to:
  /// **'Create Your New Password'**
  String get createYourNewPassword15;

  /// No description provided for @layout26LightCreateNewPasswordText57.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText57;

  /// No description provided for @layout26LightCreateNewPasswordText58.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText58;

  /// No description provided for @layout26LightCreateNewPasswordText59.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText59;

  /// No description provided for @layout26LightCreateNewPasswordText60.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText60;

  /// No description provided for @rememberMe29.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe29;

  /// No description provided for @rememberMe30.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe30;

  /// No description provided for @createYourNewPassword16.
  ///
  /// In en, this message translates to:
  /// **'Create Your New Password'**
  String get createYourNewPassword16;

  /// No description provided for @layout26LightCreateNewPasswordText61.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText61;

  /// No description provided for @layout26LightCreateNewPasswordText62.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText62;

  /// No description provided for @layout26LightCreateNewPasswordText63.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText63;

  /// No description provided for @layout26LightCreateNewPasswordText64.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26LightCreateNewPasswordText64;

  /// No description provided for @rememberMe31.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe31;

  /// No description provided for @rememberMe32.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe32;

  /// No description provided for @continueText15.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText15;

  /// No description provided for @continueText16.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText16;

  /// No description provided for @layout26DarkCreateNewPasswordText.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText;

  /// No description provided for @layout26DarkCreateNewPasswordText2.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText2;

  /// No description provided for @layout26DarkCreateNewPasswordText3.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText3;

  /// No description provided for @layout26DarkCreateNewPasswordText4.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText4;

  /// No description provided for @layout26DarkCreateNewPasswordText5.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText5;

  /// No description provided for @layout26DarkCreateNewPasswordText6.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText6;

  /// No description provided for @layout26DarkCreateNewPasswordText7.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText7;

  /// No description provided for @layout26DarkCreateNewPasswordText8.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText8;

  /// No description provided for @layout26DarkCreateNewPasswordText9.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText9;

  /// No description provided for @layout26DarkCreateNewPasswordText10.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText10;

  /// No description provided for @layout26DarkCreateNewPasswordText11.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText11;

  /// No description provided for @layout26DarkCreateNewPasswordText12.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText12;

  /// No description provided for @layout26DarkCreateNewPasswordText13.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText13;

  /// No description provided for @layout26DarkCreateNewPasswordText14.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText14;

  /// No description provided for @layout26DarkCreateNewPasswordText15.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText15;

  /// No description provided for @layout26DarkCreateNewPasswordText16.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText16;

  /// No description provided for @layout26DarkCreateNewPasswordText17.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText17;

  /// No description provided for @layout26DarkCreateNewPasswordText18.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText18;

  /// No description provided for @layout26DarkCreateNewPasswordText19.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText19;

  /// No description provided for @layout26DarkCreateNewPasswordText20.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText20;

  /// No description provided for @layout26DarkCreateNewPasswordText21.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText21;

  /// No description provided for @layout26DarkCreateNewPasswordText22.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText22;

  /// No description provided for @layout26DarkCreateNewPasswordText23.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText23;

  /// No description provided for @layout26DarkCreateNewPasswordText24.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText24;

  /// No description provided for @layout26DarkCreateNewPasswordText25.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText25;

  /// No description provided for @layout26DarkCreateNewPasswordText26.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText26;

  /// No description provided for @layout26DarkCreateNewPasswordText27.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText27;

  /// No description provided for @layout26DarkCreateNewPasswordText28.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText28;

  /// No description provided for @layout26DarkCreateNewPasswordText29.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText29;

  /// No description provided for @layout26DarkCreateNewPasswordText30.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText30;

  /// No description provided for @layout26DarkCreateNewPasswordText31.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText31;

  /// No description provided for @layout26DarkCreateNewPasswordText32.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText32;

  /// No description provided for @layout26DarkCreateNewPasswordText33.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText33;

  /// No description provided for @layout26DarkCreateNewPasswordText34.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText34;

  /// No description provided for @layout26DarkCreateNewPasswordText35.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText35;

  /// No description provided for @layout26DarkCreateNewPasswordText36.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText36;

  /// No description provided for @layout26DarkCreateNewPasswordText37.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText37;

  /// No description provided for @layout26DarkCreateNewPasswordText38.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText38;

  /// No description provided for @layout26DarkCreateNewPasswordText39.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText39;

  /// No description provided for @layout26DarkCreateNewPasswordText40.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText40;

  /// No description provided for @layout26DarkCreateNewPasswordText41.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText41;

  /// No description provided for @layout26DarkCreateNewPasswordText42.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText42;

  /// No description provided for @layout26DarkCreateNewPasswordText43.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText43;

  /// No description provided for @layout26DarkCreateNewPasswordText44.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText44;

  /// No description provided for @layout26DarkCreateNewPasswordText45.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText45;

  /// No description provided for @layout26DarkCreateNewPasswordText46.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText46;

  /// No description provided for @layout26DarkCreateNewPasswordText47.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText47;

  /// No description provided for @layout26DarkCreateNewPasswordText48.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText48;

  /// No description provided for @layout26DarkCreateNewPasswordText49.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText49;

  /// No description provided for @layout26DarkCreateNewPasswordText50.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText50;

  /// No description provided for @layout26DarkCreateNewPasswordText51.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText51;

  /// No description provided for @layout26DarkCreateNewPasswordText52.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText52;

  /// No description provided for @layout26DarkCreateNewPasswordText53.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText53;

  /// No description provided for @layout26DarkCreateNewPasswordText54.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText54;

  /// No description provided for @layout26DarkCreateNewPasswordText55.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText55;

  /// No description provided for @layout26DarkCreateNewPasswordText56.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText56;

  /// No description provided for @layout26DarkCreateNewPasswordText57.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText57;

  /// No description provided for @layout26DarkCreateNewPasswordText58.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText58;

  /// No description provided for @layout26DarkCreateNewPasswordText59.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText59;

  /// No description provided for @layout26DarkCreateNewPasswordText60.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText60;

  /// No description provided for @layout26DarkCreateNewPasswordText61.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText61;

  /// No description provided for @layout26DarkCreateNewPasswordText62.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText62;

  /// No description provided for @layout26DarkCreateNewPasswordText63.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText63;

  /// No description provided for @layout26DarkCreateNewPasswordText64.
  ///
  /// In en, this message translates to:
  /// **'●●●●●●●●●●●●'**
  String get layout26DarkCreateNewPasswordText64;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @notification2.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification2;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @s30SpecialDiscount.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount;

  /// No description provided for @specialPromotionOnlyValidToday.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday;

  /// No description provided for @s30SpecialDiscount2.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount2;

  /// No description provided for @specialPromotionOnlyValidToday2.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday2;

  /// No description provided for @s30SpecialDiscount3.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount3;

  /// No description provided for @specialPromotionOnlyValidToday3.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday3;

  /// No description provided for @s30SpecialDiscount4.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount4;

  /// No description provided for @specialPromotionOnlyValidToday4.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday4;

  /// No description provided for @s30SpecialDiscount5.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount5;

  /// No description provided for @specialPromotionOnlyValidToday5.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday5;

  /// No description provided for @s30SpecialDiscount6.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount6;

  /// No description provided for @specialPromotionOnlyValidToday6.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday6;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @topUpEwalletSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful;

  /// No description provided for @youHaveToTopUpYourEwallet.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet;

  /// No description provided for @topUpEwalletSuccessful2.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful2;

  /// No description provided for @youHaveToTopUpYourEwallet2.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet2;

  /// No description provided for @topUpEwalletSuccessful3.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful3;

  /// No description provided for @youHaveToTopUpYourEwallet3.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet3;

  /// No description provided for @topUpEwalletSuccessful4.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful4;

  /// No description provided for @youHaveToTopUpYourEwallet4.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet4;

  /// No description provided for @topUpEwalletSuccessful5.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful5;

  /// No description provided for @youHaveToTopUpYourEwallet5.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet5;

  /// No description provided for @topUpEwalletSuccessful6.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful6;

  /// No description provided for @youHaveToTopUpYourEwallet6.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet6;

  /// No description provided for @newServicesAvailable.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable;

  /// No description provided for @nowYouCanTrackOrdersInRealTime.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime;

  /// No description provided for @newServicesAvailable2.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable2;

  /// No description provided for @nowYouCanTrackOrdersInRealTime2.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime2;

  /// No description provided for @newServicesAvailable3.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable3;

  /// No description provided for @nowYouCanTrackOrdersInRealTime3.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime3;

  /// No description provided for @newServicesAvailable4.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable4;

  /// No description provided for @nowYouCanTrackOrdersInRealTime4.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime4;

  /// No description provided for @newServicesAvailable5.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable5;

  /// No description provided for @nowYouCanTrackOrdersInRealTime5.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime5;

  /// No description provided for @newServicesAvailable6.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable6;

  /// No description provided for @nowYouCanTrackOrdersInRealTime6.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime6;

  /// No description provided for @december222024.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december222024;

  /// No description provided for @creditCardConnected.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected;

  /// No description provided for @creditCardHasBeenLinked.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked;

  /// No description provided for @creditCardConnected2.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected2;

  /// No description provided for @creditCardHasBeenLinked2.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked2;

  /// No description provided for @creditCardConnected3.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected3;

  /// No description provided for @creditCardHasBeenLinked3.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked3;

  /// No description provided for @creditCardConnected4.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected4;

  /// No description provided for @creditCardHasBeenLinked4.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked4;

  /// No description provided for @creditCardConnected5.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected5;

  /// No description provided for @creditCardHasBeenLinked5.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked5;

  /// No description provided for @creditCardConnected6.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected6;

  /// No description provided for @creditCardHasBeenLinked6.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked6;

  /// No description provided for @accountSetupSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful;

  /// No description provided for @yourAccountHasBeenCreated.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated;

  /// No description provided for @accountSetupSuccessful2.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful2;

  /// No description provided for @yourAccountHasBeenCreated2.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated2;

  /// No description provided for @accountSetupSuccessful3.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful3;

  /// No description provided for @yourAccountHasBeenCreated3.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated3;

  /// No description provided for @accountSetupSuccessful4.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful4;

  /// No description provided for @yourAccountHasBeenCreated4.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated4;

  /// No description provided for @accountSetupSuccessful5.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful5;

  /// No description provided for @yourAccountHasBeenCreated5.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated5;

  /// No description provided for @accountSetupSuccessful6.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful6;

  /// No description provided for @yourAccountHasBeenCreated6.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated6;

  /// No description provided for @today2.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today2;

  /// No description provided for @s30SpecialDiscount7.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount7;

  /// No description provided for @specialPromotionOnlyValidToday7.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday7;

  /// No description provided for @s30SpecialDiscount8.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount8;

  /// No description provided for @specialPromotionOnlyValidToday8.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday8;

  /// No description provided for @s30SpecialDiscount9.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount9;

  /// No description provided for @specialPromotionOnlyValidToday9.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday9;

  /// No description provided for @s30SpecialDiscount10.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount10;

  /// No description provided for @specialPromotionOnlyValidToday10.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday10;

  /// No description provided for @s30SpecialDiscount11.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount11;

  /// No description provided for @specialPromotionOnlyValidToday11.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday11;

  /// No description provided for @s30SpecialDiscount12.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount12;

  /// No description provided for @specialPromotionOnlyValidToday12.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday12;

  /// No description provided for @yesterday2.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday2;

  /// No description provided for @topUpEwalletSuccessful7.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful7;

  /// No description provided for @youHaveToTopUpYourEwallet7.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet7;

  /// No description provided for @topUpEwalletSuccessful8.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful8;

  /// No description provided for @youHaveToTopUpYourEwallet8.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet8;

  /// No description provided for @topUpEwalletSuccessful9.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful9;

  /// No description provided for @youHaveToTopUpYourEwallet9.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet9;

  /// No description provided for @topUpEwalletSuccessful10.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful10;

  /// No description provided for @youHaveToTopUpYourEwallet10.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet10;

  /// No description provided for @topUpEwalletSuccessful11.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful11;

  /// No description provided for @youHaveToTopUpYourEwallet11.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet11;

  /// No description provided for @topUpEwalletSuccessful12.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful12;

  /// No description provided for @youHaveToTopUpYourEwallet12.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet12;

  /// No description provided for @newServicesAvailable7.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable7;

  /// No description provided for @nowYouCanTrackOrdersInRealTime7.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime7;

  /// No description provided for @newServicesAvailable8.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable8;

  /// No description provided for @nowYouCanTrackOrdersInRealTime8.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime8;

  /// No description provided for @newServicesAvailable9.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable9;

  /// No description provided for @nowYouCanTrackOrdersInRealTime9.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime9;

  /// No description provided for @newServicesAvailable10.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable10;

  /// No description provided for @nowYouCanTrackOrdersInRealTime10.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime10;

  /// No description provided for @newServicesAvailable11.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable11;

  /// No description provided for @nowYouCanTrackOrdersInRealTime11.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime11;

  /// No description provided for @newServicesAvailable12.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable12;

  /// No description provided for @nowYouCanTrackOrdersInRealTime12.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime12;

  /// No description provided for @december2220242.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december2220242;

  /// No description provided for @creditCardConnected7.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected7;

  /// No description provided for @creditCardHasBeenLinked7.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked7;

  /// No description provided for @creditCardConnected8.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected8;

  /// No description provided for @creditCardHasBeenLinked8.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked8;

  /// No description provided for @creditCardConnected9.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected9;

  /// No description provided for @creditCardHasBeenLinked9.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked9;

  /// No description provided for @creditCardConnected10.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected10;

  /// No description provided for @creditCardHasBeenLinked10.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked10;

  /// No description provided for @creditCardConnected11.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected11;

  /// No description provided for @creditCardHasBeenLinked11.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked11;

  /// No description provided for @creditCardConnected12.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected12;

  /// No description provided for @creditCardHasBeenLinked12.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked12;

  /// No description provided for @accountSetupSuccessful7.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful7;

  /// No description provided for @yourAccountHasBeenCreated7.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated7;

  /// No description provided for @accountSetupSuccessful8.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful8;

  /// No description provided for @yourAccountHasBeenCreated8.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated8;

  /// No description provided for @accountSetupSuccessful9.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful9;

  /// No description provided for @yourAccountHasBeenCreated9.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated9;

  /// No description provided for @accountSetupSuccessful10.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful10;

  /// No description provided for @yourAccountHasBeenCreated10.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated10;

  /// No description provided for @accountSetupSuccessful11.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful11;

  /// No description provided for @yourAccountHasBeenCreated11.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated11;

  /// No description provided for @accountSetupSuccessful12.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful12;

  /// No description provided for @yourAccountHasBeenCreated12.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated12;

  /// No description provided for @notification3.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification3;

  /// No description provided for @notification4.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification4;

  /// No description provided for @today3.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today3;

  /// No description provided for @s30SpecialDiscount13.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount13;

  /// No description provided for @specialPromotionOnlyValidToday13.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday13;

  /// No description provided for @s30SpecialDiscount14.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount14;

  /// No description provided for @specialPromotionOnlyValidToday14.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday14;

  /// No description provided for @s30SpecialDiscount15.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount15;

  /// No description provided for @specialPromotionOnlyValidToday15.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday15;

  /// No description provided for @s30SpecialDiscount16.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount16;

  /// No description provided for @specialPromotionOnlyValidToday16.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday16;

  /// No description provided for @s30SpecialDiscount17.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount17;

  /// No description provided for @specialPromotionOnlyValidToday17.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday17;

  /// No description provided for @s30SpecialDiscount18.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount18;

  /// No description provided for @specialPromotionOnlyValidToday18.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday18;

  /// No description provided for @yesterday3.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday3;

  /// No description provided for @topUpEwalletSuccessful13.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful13;

  /// No description provided for @youHaveToTopUpYourEwallet13.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet13;

  /// No description provided for @topUpEwalletSuccessful14.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful14;

  /// No description provided for @youHaveToTopUpYourEwallet14.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet14;

  /// No description provided for @topUpEwalletSuccessful15.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful15;

  /// No description provided for @youHaveToTopUpYourEwallet15.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet15;

  /// No description provided for @topUpEwalletSuccessful16.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful16;

  /// No description provided for @youHaveToTopUpYourEwallet16.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet16;

  /// No description provided for @topUpEwalletSuccessful17.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful17;

  /// No description provided for @youHaveToTopUpYourEwallet17.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet17;

  /// No description provided for @topUpEwalletSuccessful18.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful18;

  /// No description provided for @youHaveToTopUpYourEwallet18.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet18;

  /// No description provided for @newServicesAvailable13.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable13;

  /// No description provided for @nowYouCanTrackOrdersInRealTime13.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime13;

  /// No description provided for @newServicesAvailable14.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable14;

  /// No description provided for @nowYouCanTrackOrdersInRealTime14.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime14;

  /// No description provided for @newServicesAvailable15.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable15;

  /// No description provided for @nowYouCanTrackOrdersInRealTime15.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime15;

  /// No description provided for @newServicesAvailable16.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable16;

  /// No description provided for @nowYouCanTrackOrdersInRealTime16.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime16;

  /// No description provided for @newServicesAvailable17.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable17;

  /// No description provided for @nowYouCanTrackOrdersInRealTime17.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime17;

  /// No description provided for @newServicesAvailable18.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable18;

  /// No description provided for @nowYouCanTrackOrdersInRealTime18.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime18;

  /// No description provided for @december2220243.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december2220243;

  /// No description provided for @creditCardConnected13.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected13;

  /// No description provided for @creditCardHasBeenLinked13.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked13;

  /// No description provided for @creditCardConnected14.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected14;

  /// No description provided for @creditCardHasBeenLinked14.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked14;

  /// No description provided for @creditCardConnected15.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected15;

  /// No description provided for @creditCardHasBeenLinked15.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked15;

  /// No description provided for @creditCardConnected16.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected16;

  /// No description provided for @creditCardHasBeenLinked16.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked16;

  /// No description provided for @creditCardConnected17.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected17;

  /// No description provided for @creditCardHasBeenLinked17.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked17;

  /// No description provided for @creditCardConnected18.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected18;

  /// No description provided for @creditCardHasBeenLinked18.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked18;

  /// No description provided for @accountSetupSuccessful13.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful13;

  /// No description provided for @yourAccountHasBeenCreated13.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated13;

  /// No description provided for @accountSetupSuccessful14.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful14;

  /// No description provided for @yourAccountHasBeenCreated14.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated14;

  /// No description provided for @accountSetupSuccessful15.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful15;

  /// No description provided for @yourAccountHasBeenCreated15.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated15;

  /// No description provided for @accountSetupSuccessful16.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful16;

  /// No description provided for @yourAccountHasBeenCreated16.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated16;

  /// No description provided for @accountSetupSuccessful17.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful17;

  /// No description provided for @yourAccountHasBeenCreated17.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated17;

  /// No description provided for @accountSetupSuccessful18.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful18;

  /// No description provided for @yourAccountHasBeenCreated18.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated18;

  /// No description provided for @today4.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today4;

  /// No description provided for @s30SpecialDiscount19.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount19;

  /// No description provided for @specialPromotionOnlyValidToday19.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday19;

  /// No description provided for @s30SpecialDiscount20.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount20;

  /// No description provided for @specialPromotionOnlyValidToday20.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday20;

  /// No description provided for @s30SpecialDiscount21.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount21;

  /// No description provided for @specialPromotionOnlyValidToday21.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday21;

  /// No description provided for @s30SpecialDiscount22.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount22;

  /// No description provided for @specialPromotionOnlyValidToday22.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday22;

  /// No description provided for @s30SpecialDiscount23.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount23;

  /// No description provided for @specialPromotionOnlyValidToday23.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday23;

  /// No description provided for @s30SpecialDiscount24.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount24;

  /// No description provided for @specialPromotionOnlyValidToday24.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday24;

  /// No description provided for @yesterday4.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday4;

  /// No description provided for @topUpEwalletSuccessful19.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful19;

  /// No description provided for @youHaveToTopUpYourEwallet19.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet19;

  /// No description provided for @topUpEwalletSuccessful20.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful20;

  /// No description provided for @youHaveToTopUpYourEwallet20.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet20;

  /// No description provided for @topUpEwalletSuccessful21.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful21;

  /// No description provided for @youHaveToTopUpYourEwallet21.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet21;

  /// No description provided for @topUpEwalletSuccessful22.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful22;

  /// No description provided for @youHaveToTopUpYourEwallet22.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet22;

  /// No description provided for @topUpEwalletSuccessful23.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful23;

  /// No description provided for @youHaveToTopUpYourEwallet23.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet23;

  /// No description provided for @topUpEwalletSuccessful24.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful24;

  /// No description provided for @youHaveToTopUpYourEwallet24.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet24;

  /// No description provided for @newServicesAvailable19.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable19;

  /// No description provided for @nowYouCanTrackOrdersInRealTime19.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime19;

  /// No description provided for @newServicesAvailable20.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable20;

  /// No description provided for @nowYouCanTrackOrdersInRealTime20.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime20;

  /// No description provided for @newServicesAvailable21.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable21;

  /// No description provided for @nowYouCanTrackOrdersInRealTime21.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime21;

  /// No description provided for @newServicesAvailable22.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable22;

  /// No description provided for @nowYouCanTrackOrdersInRealTime22.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime22;

  /// No description provided for @newServicesAvailable23.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable23;

  /// No description provided for @nowYouCanTrackOrdersInRealTime23.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime23;

  /// No description provided for @newServicesAvailable24.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable24;

  /// No description provided for @nowYouCanTrackOrdersInRealTime24.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime24;

  /// No description provided for @december2220244.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december2220244;

  /// No description provided for @creditCardConnected19.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected19;

  /// No description provided for @creditCardHasBeenLinked19.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked19;

  /// No description provided for @creditCardConnected20.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected20;

  /// No description provided for @creditCardHasBeenLinked20.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked20;

  /// No description provided for @creditCardConnected21.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected21;

  /// No description provided for @creditCardHasBeenLinked21.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked21;

  /// No description provided for @creditCardConnected22.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected22;

  /// No description provided for @creditCardHasBeenLinked22.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked22;

  /// No description provided for @creditCardConnected23.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected23;

  /// No description provided for @creditCardHasBeenLinked23.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked23;

  /// No description provided for @creditCardConnected24.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected24;

  /// No description provided for @creditCardHasBeenLinked24.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked24;

  /// No description provided for @accountSetupSuccessful19.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful19;

  /// No description provided for @yourAccountHasBeenCreated19.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated19;

  /// No description provided for @accountSetupSuccessful20.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful20;

  /// No description provided for @yourAccountHasBeenCreated20.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated20;

  /// No description provided for @accountSetupSuccessful21.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful21;

  /// No description provided for @yourAccountHasBeenCreated21.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated21;

  /// No description provided for @accountSetupSuccessful22.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful22;

  /// No description provided for @yourAccountHasBeenCreated22.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated22;

  /// No description provided for @accountSetupSuccessful23.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful23;

  /// No description provided for @yourAccountHasBeenCreated23.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated23;

  /// No description provided for @accountSetupSuccessful24.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful24;

  /// No description provided for @yourAccountHasBeenCreated24.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated24;

  /// No description provided for @notification5.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification5;

  /// No description provided for @notification6.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification6;

  /// No description provided for @today5.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today5;

  /// No description provided for @s30SpecialDiscount25.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount25;

  /// No description provided for @specialPromotionOnlyValidToday25.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday25;

  /// No description provided for @s30SpecialDiscount26.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount26;

  /// No description provided for @specialPromotionOnlyValidToday26.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday26;

  /// No description provided for @s30SpecialDiscount27.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount27;

  /// No description provided for @specialPromotionOnlyValidToday27.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday27;

  /// No description provided for @s30SpecialDiscount28.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount28;

  /// No description provided for @specialPromotionOnlyValidToday28.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday28;

  /// No description provided for @s30SpecialDiscount29.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount29;

  /// No description provided for @specialPromotionOnlyValidToday29.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday29;

  /// No description provided for @s30SpecialDiscount30.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount30;

  /// No description provided for @specialPromotionOnlyValidToday30.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday30;

  /// No description provided for @yesterday5.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday5;

  /// No description provided for @topUpEwalletSuccessful25.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful25;

  /// No description provided for @youHaveToTopUpYourEwallet25.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet25;

  /// No description provided for @topUpEwalletSuccessful26.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful26;

  /// No description provided for @youHaveToTopUpYourEwallet26.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet26;

  /// No description provided for @topUpEwalletSuccessful27.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful27;

  /// No description provided for @youHaveToTopUpYourEwallet27.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet27;

  /// No description provided for @topUpEwalletSuccessful28.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful28;

  /// No description provided for @youHaveToTopUpYourEwallet28.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet28;

  /// No description provided for @topUpEwalletSuccessful29.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful29;

  /// No description provided for @youHaveToTopUpYourEwallet29.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet29;

  /// No description provided for @topUpEwalletSuccessful30.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful30;

  /// No description provided for @youHaveToTopUpYourEwallet30.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet30;

  /// No description provided for @newServicesAvailable25.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable25;

  /// No description provided for @nowYouCanTrackOrdersInRealTime25.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime25;

  /// No description provided for @newServicesAvailable26.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable26;

  /// No description provided for @nowYouCanTrackOrdersInRealTime26.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime26;

  /// No description provided for @newServicesAvailable27.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable27;

  /// No description provided for @nowYouCanTrackOrdersInRealTime27.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime27;

  /// No description provided for @newServicesAvailable28.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable28;

  /// No description provided for @nowYouCanTrackOrdersInRealTime28.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime28;

  /// No description provided for @newServicesAvailable29.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable29;

  /// No description provided for @nowYouCanTrackOrdersInRealTime29.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime29;

  /// No description provided for @newServicesAvailable30.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable30;

  /// No description provided for @nowYouCanTrackOrdersInRealTime30.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime30;

  /// No description provided for @december2220245.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december2220245;

  /// No description provided for @creditCardConnected25.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected25;

  /// No description provided for @creditCardHasBeenLinked25.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked25;

  /// No description provided for @creditCardConnected26.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected26;

  /// No description provided for @creditCardHasBeenLinked26.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked26;

  /// No description provided for @creditCardConnected27.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected27;

  /// No description provided for @creditCardHasBeenLinked27.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked27;

  /// No description provided for @creditCardConnected28.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected28;

  /// No description provided for @creditCardHasBeenLinked28.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked28;

  /// No description provided for @creditCardConnected29.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected29;

  /// No description provided for @creditCardHasBeenLinked29.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked29;

  /// No description provided for @creditCardConnected30.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected30;

  /// No description provided for @creditCardHasBeenLinked30.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked30;

  /// No description provided for @accountSetupSuccessful25.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful25;

  /// No description provided for @yourAccountHasBeenCreated25.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated25;

  /// No description provided for @accountSetupSuccessful26.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful26;

  /// No description provided for @yourAccountHasBeenCreated26.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated26;

  /// No description provided for @accountSetupSuccessful27.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful27;

  /// No description provided for @yourAccountHasBeenCreated27.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated27;

  /// No description provided for @accountSetupSuccessful28.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful28;

  /// No description provided for @yourAccountHasBeenCreated28.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated28;

  /// No description provided for @accountSetupSuccessful29.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful29;

  /// No description provided for @yourAccountHasBeenCreated29.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated29;

  /// No description provided for @accountSetupSuccessful30.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful30;

  /// No description provided for @yourAccountHasBeenCreated30.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated30;

  /// No description provided for @today6.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today6;

  /// No description provided for @s30SpecialDiscount31.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount31;

  /// No description provided for @specialPromotionOnlyValidToday31.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday31;

  /// No description provided for @s30SpecialDiscount32.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount32;

  /// No description provided for @specialPromotionOnlyValidToday32.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday32;

  /// No description provided for @s30SpecialDiscount33.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount33;

  /// No description provided for @specialPromotionOnlyValidToday33.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday33;

  /// No description provided for @s30SpecialDiscount34.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount34;

  /// No description provided for @specialPromotionOnlyValidToday34.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday34;

  /// No description provided for @s30SpecialDiscount35.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount35;

  /// No description provided for @specialPromotionOnlyValidToday35.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday35;

  /// No description provided for @s30SpecialDiscount36.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount36;

  /// No description provided for @specialPromotionOnlyValidToday36.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday36;

  /// No description provided for @yesterday6.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday6;

  /// No description provided for @topUpEwalletSuccessful31.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful31;

  /// No description provided for @youHaveToTopUpYourEwallet31.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet31;

  /// No description provided for @topUpEwalletSuccessful32.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful32;

  /// No description provided for @youHaveToTopUpYourEwallet32.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet32;

  /// No description provided for @topUpEwalletSuccessful33.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful33;

  /// No description provided for @youHaveToTopUpYourEwallet33.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet33;

  /// No description provided for @topUpEwalletSuccessful34.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful34;

  /// No description provided for @youHaveToTopUpYourEwallet34.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet34;

  /// No description provided for @topUpEwalletSuccessful35.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful35;

  /// No description provided for @youHaveToTopUpYourEwallet35.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet35;

  /// No description provided for @topUpEwalletSuccessful36.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful36;

  /// No description provided for @youHaveToTopUpYourEwallet36.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet36;

  /// No description provided for @newServicesAvailable31.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable31;

  /// No description provided for @nowYouCanTrackOrdersInRealTime31.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime31;

  /// No description provided for @newServicesAvailable32.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable32;

  /// No description provided for @nowYouCanTrackOrdersInRealTime32.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime32;

  /// No description provided for @newServicesAvailable33.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable33;

  /// No description provided for @nowYouCanTrackOrdersInRealTime33.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime33;

  /// No description provided for @newServicesAvailable34.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable34;

  /// No description provided for @nowYouCanTrackOrdersInRealTime34.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime34;

  /// No description provided for @newServicesAvailable35.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable35;

  /// No description provided for @nowYouCanTrackOrdersInRealTime35.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime35;

  /// No description provided for @newServicesAvailable36.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable36;

  /// No description provided for @nowYouCanTrackOrdersInRealTime36.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime36;

  /// No description provided for @december2220246.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december2220246;

  /// No description provided for @creditCardConnected31.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected31;

  /// No description provided for @creditCardHasBeenLinked31.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked31;

  /// No description provided for @creditCardConnected32.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected32;

  /// No description provided for @creditCardHasBeenLinked32.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked32;

  /// No description provided for @creditCardConnected33.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected33;

  /// No description provided for @creditCardHasBeenLinked33.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked33;

  /// No description provided for @creditCardConnected34.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected34;

  /// No description provided for @creditCardHasBeenLinked34.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked34;

  /// No description provided for @creditCardConnected35.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected35;

  /// No description provided for @creditCardHasBeenLinked35.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked35;

  /// No description provided for @creditCardConnected36.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected36;

  /// No description provided for @creditCardHasBeenLinked36.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked36;

  /// No description provided for @accountSetupSuccessful31.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful31;

  /// No description provided for @yourAccountHasBeenCreated31.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated31;

  /// No description provided for @accountSetupSuccessful32.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful32;

  /// No description provided for @yourAccountHasBeenCreated32.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated32;

  /// No description provided for @accountSetupSuccessful33.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful33;

  /// No description provided for @yourAccountHasBeenCreated33.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated33;

  /// No description provided for @accountSetupSuccessful34.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful34;

  /// No description provided for @yourAccountHasBeenCreated34.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated34;

  /// No description provided for @accountSetupSuccessful35.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful35;

  /// No description provided for @yourAccountHasBeenCreated35.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated35;

  /// No description provided for @accountSetupSuccessful36.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful36;

  /// No description provided for @yourAccountHasBeenCreated36.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated36;

  /// No description provided for @notification7.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification7;

  /// No description provided for @notification8.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification8;

  /// No description provided for @today7.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today7;

  /// No description provided for @s30SpecialDiscount37.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount37;

  /// No description provided for @specialPromotionOnlyValidToday37.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday37;

  /// No description provided for @s30SpecialDiscount38.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount38;

  /// No description provided for @specialPromotionOnlyValidToday38.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday38;

  /// No description provided for @s30SpecialDiscount39.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount39;

  /// No description provided for @specialPromotionOnlyValidToday39.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday39;

  /// No description provided for @s30SpecialDiscount40.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount40;

  /// No description provided for @specialPromotionOnlyValidToday40.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday40;

  /// No description provided for @s30SpecialDiscount41.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount41;

  /// No description provided for @specialPromotionOnlyValidToday41.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday41;

  /// No description provided for @s30SpecialDiscount42.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount42;

  /// No description provided for @specialPromotionOnlyValidToday42.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday42;

  /// No description provided for @yesterday7.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday7;

  /// No description provided for @topUpEwalletSuccessful37.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful37;

  /// No description provided for @youHaveToTopUpYourEwallet37.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet37;

  /// No description provided for @topUpEwalletSuccessful38.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful38;

  /// No description provided for @youHaveToTopUpYourEwallet38.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet38;

  /// No description provided for @topUpEwalletSuccessful39.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful39;

  /// No description provided for @youHaveToTopUpYourEwallet39.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet39;

  /// No description provided for @topUpEwalletSuccessful40.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful40;

  /// No description provided for @youHaveToTopUpYourEwallet40.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet40;

  /// No description provided for @topUpEwalletSuccessful41.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful41;

  /// No description provided for @youHaveToTopUpYourEwallet41.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet41;

  /// No description provided for @topUpEwalletSuccessful42.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful42;

  /// No description provided for @youHaveToTopUpYourEwallet42.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet42;

  /// No description provided for @newServicesAvailable37.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable37;

  /// No description provided for @nowYouCanTrackOrdersInRealTime37.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime37;

  /// No description provided for @newServicesAvailable38.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable38;

  /// No description provided for @nowYouCanTrackOrdersInRealTime38.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime38;

  /// No description provided for @newServicesAvailable39.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable39;

  /// No description provided for @nowYouCanTrackOrdersInRealTime39.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime39;

  /// No description provided for @newServicesAvailable40.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable40;

  /// No description provided for @nowYouCanTrackOrdersInRealTime40.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime40;

  /// No description provided for @newServicesAvailable41.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable41;

  /// No description provided for @nowYouCanTrackOrdersInRealTime41.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime41;

  /// No description provided for @newServicesAvailable42.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable42;

  /// No description provided for @nowYouCanTrackOrdersInRealTime42.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime42;

  /// No description provided for @december2220247.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december2220247;

  /// No description provided for @creditCardConnected37.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected37;

  /// No description provided for @creditCardHasBeenLinked37.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked37;

  /// No description provided for @creditCardConnected38.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected38;

  /// No description provided for @creditCardHasBeenLinked38.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked38;

  /// No description provided for @creditCardConnected39.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected39;

  /// No description provided for @creditCardHasBeenLinked39.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked39;

  /// No description provided for @creditCardConnected40.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected40;

  /// No description provided for @creditCardHasBeenLinked40.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked40;

  /// No description provided for @creditCardConnected41.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected41;

  /// No description provided for @creditCardHasBeenLinked41.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked41;

  /// No description provided for @creditCardConnected42.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected42;

  /// No description provided for @creditCardHasBeenLinked42.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked42;

  /// No description provided for @accountSetupSuccessful37.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful37;

  /// No description provided for @yourAccountHasBeenCreated37.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated37;

  /// No description provided for @accountSetupSuccessful38.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful38;

  /// No description provided for @yourAccountHasBeenCreated38.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated38;

  /// No description provided for @accountSetupSuccessful39.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful39;

  /// No description provided for @yourAccountHasBeenCreated39.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated39;

  /// No description provided for @accountSetupSuccessful40.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful40;

  /// No description provided for @yourAccountHasBeenCreated40.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated40;

  /// No description provided for @accountSetupSuccessful41.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful41;

  /// No description provided for @yourAccountHasBeenCreated41.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated41;

  /// No description provided for @accountSetupSuccessful42.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful42;

  /// No description provided for @yourAccountHasBeenCreated42.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated42;

  /// No description provided for @today8.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today8;

  /// No description provided for @s30SpecialDiscount43.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount43;

  /// No description provided for @specialPromotionOnlyValidToday43.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday43;

  /// No description provided for @s30SpecialDiscount44.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount44;

  /// No description provided for @specialPromotionOnlyValidToday44.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday44;

  /// No description provided for @s30SpecialDiscount45.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount45;

  /// No description provided for @specialPromotionOnlyValidToday45.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday45;

  /// No description provided for @s30SpecialDiscount46.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount46;

  /// No description provided for @specialPromotionOnlyValidToday46.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday46;

  /// No description provided for @s30SpecialDiscount47.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount47;

  /// No description provided for @specialPromotionOnlyValidToday47.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday47;

  /// No description provided for @s30SpecialDiscount48.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount48;

  /// No description provided for @specialPromotionOnlyValidToday48.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday48;

  /// No description provided for @yesterday8.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday8;

  /// No description provided for @topUpEwalletSuccessful43.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful43;

  /// No description provided for @youHaveToTopUpYourEwallet43.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet43;

  /// No description provided for @topUpEwalletSuccessful44.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful44;

  /// No description provided for @youHaveToTopUpYourEwallet44.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet44;

  /// No description provided for @topUpEwalletSuccessful45.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful45;

  /// No description provided for @youHaveToTopUpYourEwallet45.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet45;

  /// No description provided for @topUpEwalletSuccessful46.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful46;

  /// No description provided for @youHaveToTopUpYourEwallet46.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet46;

  /// No description provided for @topUpEwalletSuccessful47.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful47;

  /// No description provided for @youHaveToTopUpYourEwallet47.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet47;

  /// No description provided for @topUpEwalletSuccessful48.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful48;

  /// No description provided for @youHaveToTopUpYourEwallet48.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet48;

  /// No description provided for @newServicesAvailable43.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable43;

  /// No description provided for @nowYouCanTrackOrdersInRealTime43.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime43;

  /// No description provided for @newServicesAvailable44.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable44;

  /// No description provided for @nowYouCanTrackOrdersInRealTime44.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime44;

  /// No description provided for @newServicesAvailable45.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable45;

  /// No description provided for @nowYouCanTrackOrdersInRealTime45.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime45;

  /// No description provided for @newServicesAvailable46.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable46;

  /// No description provided for @nowYouCanTrackOrdersInRealTime46.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime46;

  /// No description provided for @newServicesAvailable47.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable47;

  /// No description provided for @nowYouCanTrackOrdersInRealTime47.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime47;

  /// No description provided for @newServicesAvailable48.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable48;

  /// No description provided for @nowYouCanTrackOrdersInRealTime48.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime48;

  /// No description provided for @december2220248.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december2220248;

  /// No description provided for @creditCardConnected43.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected43;

  /// No description provided for @creditCardHasBeenLinked43.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked43;

  /// No description provided for @creditCardConnected44.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected44;

  /// No description provided for @creditCardHasBeenLinked44.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked44;

  /// No description provided for @creditCardConnected45.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected45;

  /// No description provided for @creditCardHasBeenLinked45.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked45;

  /// No description provided for @creditCardConnected46.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected46;

  /// No description provided for @creditCardHasBeenLinked46.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked46;

  /// No description provided for @creditCardConnected47.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected47;

  /// No description provided for @creditCardHasBeenLinked47.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked47;

  /// No description provided for @creditCardConnected48.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected48;

  /// No description provided for @creditCardHasBeenLinked48.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked48;

  /// No description provided for @accountSetupSuccessful43.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful43;

  /// No description provided for @yourAccountHasBeenCreated43.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated43;

  /// No description provided for @accountSetupSuccessful44.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful44;

  /// No description provided for @yourAccountHasBeenCreated44.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated44;

  /// No description provided for @accountSetupSuccessful45.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful45;

  /// No description provided for @yourAccountHasBeenCreated45.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated45;

  /// No description provided for @accountSetupSuccessful46.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful46;

  /// No description provided for @yourAccountHasBeenCreated46.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated46;

  /// No description provided for @accountSetupSuccessful47.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful47;

  /// No description provided for @yourAccountHasBeenCreated47.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated47;

  /// No description provided for @accountSetupSuccessful48.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful48;

  /// No description provided for @yourAccountHasBeenCreated48.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated48;

  /// No description provided for @notification9.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification9;

  /// No description provided for @notification10.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification10;

  /// No description provided for @today9.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today9;

  /// No description provided for @s30SpecialDiscount49.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount49;

  /// No description provided for @specialPromotionOnlyValidToday49.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday49;

  /// No description provided for @s30SpecialDiscount50.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount50;

  /// No description provided for @specialPromotionOnlyValidToday50.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday50;

  /// No description provided for @s30SpecialDiscount51.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount51;

  /// No description provided for @specialPromotionOnlyValidToday51.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday51;

  /// No description provided for @s30SpecialDiscount52.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount52;

  /// No description provided for @specialPromotionOnlyValidToday52.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday52;

  /// No description provided for @s30SpecialDiscount53.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount53;

  /// No description provided for @specialPromotionOnlyValidToday53.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday53;

  /// No description provided for @s30SpecialDiscount54.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount54;

  /// No description provided for @specialPromotionOnlyValidToday54.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday54;

  /// No description provided for @yesterday9.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday9;

  /// No description provided for @topUpEwalletSuccessful49.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful49;

  /// No description provided for @youHaveToTopUpYourEwallet49.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet49;

  /// No description provided for @topUpEwalletSuccessful50.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful50;

  /// No description provided for @youHaveToTopUpYourEwallet50.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet50;

  /// No description provided for @topUpEwalletSuccessful51.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful51;

  /// No description provided for @youHaveToTopUpYourEwallet51.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet51;

  /// No description provided for @topUpEwalletSuccessful52.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful52;

  /// No description provided for @youHaveToTopUpYourEwallet52.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet52;

  /// No description provided for @topUpEwalletSuccessful53.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful53;

  /// No description provided for @youHaveToTopUpYourEwallet53.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet53;

  /// No description provided for @topUpEwalletSuccessful54.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful54;

  /// No description provided for @youHaveToTopUpYourEwallet54.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet54;

  /// No description provided for @newServicesAvailable49.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable49;

  /// No description provided for @nowYouCanTrackOrdersInRealTime49.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime49;

  /// No description provided for @newServicesAvailable50.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable50;

  /// No description provided for @nowYouCanTrackOrdersInRealTime50.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime50;

  /// No description provided for @newServicesAvailable51.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable51;

  /// No description provided for @nowYouCanTrackOrdersInRealTime51.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime51;

  /// No description provided for @newServicesAvailable52.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable52;

  /// No description provided for @nowYouCanTrackOrdersInRealTime52.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime52;

  /// No description provided for @newServicesAvailable53.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable53;

  /// No description provided for @nowYouCanTrackOrdersInRealTime53.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime53;

  /// No description provided for @newServicesAvailable54.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable54;

  /// No description provided for @nowYouCanTrackOrdersInRealTime54.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime54;

  /// No description provided for @december2220249.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december2220249;

  /// No description provided for @creditCardConnected49.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected49;

  /// No description provided for @creditCardHasBeenLinked49.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked49;

  /// No description provided for @creditCardConnected50.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected50;

  /// No description provided for @creditCardHasBeenLinked50.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked50;

  /// No description provided for @creditCardConnected51.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected51;

  /// No description provided for @creditCardHasBeenLinked51.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked51;

  /// No description provided for @creditCardConnected52.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected52;

  /// No description provided for @creditCardHasBeenLinked52.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked52;

  /// No description provided for @creditCardConnected53.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected53;

  /// No description provided for @creditCardHasBeenLinked53.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked53;

  /// No description provided for @creditCardConnected54.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected54;

  /// No description provided for @creditCardHasBeenLinked54.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked54;

  /// No description provided for @accountSetupSuccessful49.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful49;

  /// No description provided for @yourAccountHasBeenCreated49.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated49;

  /// No description provided for @accountSetupSuccessful50.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful50;

  /// No description provided for @yourAccountHasBeenCreated50.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated50;

  /// No description provided for @accountSetupSuccessful51.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful51;

  /// No description provided for @yourAccountHasBeenCreated51.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated51;

  /// No description provided for @accountSetupSuccessful52.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful52;

  /// No description provided for @yourAccountHasBeenCreated52.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated52;

  /// No description provided for @accountSetupSuccessful53.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful53;

  /// No description provided for @yourAccountHasBeenCreated53.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated53;

  /// No description provided for @accountSetupSuccessful54.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful54;

  /// No description provided for @yourAccountHasBeenCreated54.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated54;

  /// No description provided for @today10.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today10;

  /// No description provided for @s30SpecialDiscount55.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount55;

  /// No description provided for @specialPromotionOnlyValidToday55.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday55;

  /// No description provided for @s30SpecialDiscount56.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount56;

  /// No description provided for @specialPromotionOnlyValidToday56.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday56;

  /// No description provided for @s30SpecialDiscount57.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount57;

  /// No description provided for @specialPromotionOnlyValidToday57.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday57;

  /// No description provided for @s30SpecialDiscount58.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount58;

  /// No description provided for @specialPromotionOnlyValidToday58.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday58;

  /// No description provided for @s30SpecialDiscount59.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount59;

  /// No description provided for @specialPromotionOnlyValidToday59.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday59;

  /// No description provided for @s30SpecialDiscount60.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount60;

  /// No description provided for @specialPromotionOnlyValidToday60.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday60;

  /// No description provided for @yesterday10.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday10;

  /// No description provided for @topUpEwalletSuccessful55.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful55;

  /// No description provided for @youHaveToTopUpYourEwallet55.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet55;

  /// No description provided for @topUpEwalletSuccessful56.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful56;

  /// No description provided for @youHaveToTopUpYourEwallet56.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet56;

  /// No description provided for @topUpEwalletSuccessful57.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful57;

  /// No description provided for @youHaveToTopUpYourEwallet57.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet57;

  /// No description provided for @topUpEwalletSuccessful58.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful58;

  /// No description provided for @youHaveToTopUpYourEwallet58.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet58;

  /// No description provided for @topUpEwalletSuccessful59.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful59;

  /// No description provided for @youHaveToTopUpYourEwallet59.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet59;

  /// No description provided for @topUpEwalletSuccessful60.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful60;

  /// No description provided for @youHaveToTopUpYourEwallet60.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet60;

  /// No description provided for @newServicesAvailable55.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable55;

  /// No description provided for @nowYouCanTrackOrdersInRealTime55.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime55;

  /// No description provided for @newServicesAvailable56.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable56;

  /// No description provided for @nowYouCanTrackOrdersInRealTime56.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime56;

  /// No description provided for @newServicesAvailable57.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable57;

  /// No description provided for @nowYouCanTrackOrdersInRealTime57.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime57;

  /// No description provided for @newServicesAvailable58.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable58;

  /// No description provided for @nowYouCanTrackOrdersInRealTime58.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime58;

  /// No description provided for @newServicesAvailable59.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable59;

  /// No description provided for @nowYouCanTrackOrdersInRealTime59.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime59;

  /// No description provided for @newServicesAvailable60.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable60;

  /// No description provided for @nowYouCanTrackOrdersInRealTime60.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime60;

  /// No description provided for @december22202410.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202410;

  /// No description provided for @creditCardConnected55.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected55;

  /// No description provided for @creditCardHasBeenLinked55.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked55;

  /// No description provided for @creditCardConnected56.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected56;

  /// No description provided for @creditCardHasBeenLinked56.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked56;

  /// No description provided for @creditCardConnected57.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected57;

  /// No description provided for @creditCardHasBeenLinked57.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked57;

  /// No description provided for @creditCardConnected58.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected58;

  /// No description provided for @creditCardHasBeenLinked58.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked58;

  /// No description provided for @creditCardConnected59.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected59;

  /// No description provided for @creditCardHasBeenLinked59.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked59;

  /// No description provided for @creditCardConnected60.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected60;

  /// No description provided for @creditCardHasBeenLinked60.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked60;

  /// No description provided for @accountSetupSuccessful55.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful55;

  /// No description provided for @yourAccountHasBeenCreated55.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated55;

  /// No description provided for @accountSetupSuccessful56.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful56;

  /// No description provided for @yourAccountHasBeenCreated56.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated56;

  /// No description provided for @accountSetupSuccessful57.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful57;

  /// No description provided for @yourAccountHasBeenCreated57.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated57;

  /// No description provided for @accountSetupSuccessful58.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful58;

  /// No description provided for @yourAccountHasBeenCreated58.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated58;

  /// No description provided for @accountSetupSuccessful59.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful59;

  /// No description provided for @yourAccountHasBeenCreated59.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated59;

  /// No description provided for @accountSetupSuccessful60.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful60;

  /// No description provided for @yourAccountHasBeenCreated60.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated60;

  /// No description provided for @notification11.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification11;

  /// No description provided for @notification12.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification12;

  /// No description provided for @today11.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today11;

  /// No description provided for @s30SpecialDiscount61.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount61;

  /// No description provided for @specialPromotionOnlyValidToday61.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday61;

  /// No description provided for @s30SpecialDiscount62.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount62;

  /// No description provided for @specialPromotionOnlyValidToday62.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday62;

  /// No description provided for @s30SpecialDiscount63.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount63;

  /// No description provided for @specialPromotionOnlyValidToday63.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday63;

  /// No description provided for @s30SpecialDiscount64.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount64;

  /// No description provided for @specialPromotionOnlyValidToday64.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday64;

  /// No description provided for @s30SpecialDiscount65.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount65;

  /// No description provided for @specialPromotionOnlyValidToday65.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday65;

  /// No description provided for @s30SpecialDiscount66.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount66;

  /// No description provided for @specialPromotionOnlyValidToday66.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday66;

  /// No description provided for @yesterday11.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday11;

  /// No description provided for @topUpEwalletSuccessful61.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful61;

  /// No description provided for @youHaveToTopUpYourEwallet61.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet61;

  /// No description provided for @topUpEwalletSuccessful62.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful62;

  /// No description provided for @youHaveToTopUpYourEwallet62.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet62;

  /// No description provided for @topUpEwalletSuccessful63.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful63;

  /// No description provided for @youHaveToTopUpYourEwallet63.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet63;

  /// No description provided for @topUpEwalletSuccessful64.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful64;

  /// No description provided for @youHaveToTopUpYourEwallet64.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet64;

  /// No description provided for @topUpEwalletSuccessful65.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful65;

  /// No description provided for @youHaveToTopUpYourEwallet65.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet65;

  /// No description provided for @topUpEwalletSuccessful66.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful66;

  /// No description provided for @youHaveToTopUpYourEwallet66.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet66;

  /// No description provided for @newServicesAvailable61.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable61;

  /// No description provided for @nowYouCanTrackOrdersInRealTime61.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime61;

  /// No description provided for @newServicesAvailable62.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable62;

  /// No description provided for @nowYouCanTrackOrdersInRealTime62.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime62;

  /// No description provided for @newServicesAvailable63.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable63;

  /// No description provided for @nowYouCanTrackOrdersInRealTime63.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime63;

  /// No description provided for @newServicesAvailable64.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable64;

  /// No description provided for @nowYouCanTrackOrdersInRealTime64.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime64;

  /// No description provided for @newServicesAvailable65.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable65;

  /// No description provided for @nowYouCanTrackOrdersInRealTime65.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime65;

  /// No description provided for @newServicesAvailable66.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable66;

  /// No description provided for @nowYouCanTrackOrdersInRealTime66.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime66;

  /// No description provided for @december22202411.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202411;

  /// No description provided for @creditCardConnected61.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected61;

  /// No description provided for @creditCardHasBeenLinked61.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked61;

  /// No description provided for @creditCardConnected62.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected62;

  /// No description provided for @creditCardHasBeenLinked62.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked62;

  /// No description provided for @creditCardConnected63.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected63;

  /// No description provided for @creditCardHasBeenLinked63.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked63;

  /// No description provided for @creditCardConnected64.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected64;

  /// No description provided for @creditCardHasBeenLinked64.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked64;

  /// No description provided for @creditCardConnected65.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected65;

  /// No description provided for @creditCardHasBeenLinked65.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked65;

  /// No description provided for @creditCardConnected66.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected66;

  /// No description provided for @creditCardHasBeenLinked66.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked66;

  /// No description provided for @accountSetupSuccessful61.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful61;

  /// No description provided for @yourAccountHasBeenCreated61.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated61;

  /// No description provided for @accountSetupSuccessful62.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful62;

  /// No description provided for @yourAccountHasBeenCreated62.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated62;

  /// No description provided for @accountSetupSuccessful63.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful63;

  /// No description provided for @yourAccountHasBeenCreated63.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated63;

  /// No description provided for @accountSetupSuccessful64.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful64;

  /// No description provided for @yourAccountHasBeenCreated64.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated64;

  /// No description provided for @accountSetupSuccessful65.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful65;

  /// No description provided for @yourAccountHasBeenCreated65.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated65;

  /// No description provided for @accountSetupSuccessful66.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful66;

  /// No description provided for @yourAccountHasBeenCreated66.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated66;

  /// No description provided for @today12.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today12;

  /// No description provided for @s30SpecialDiscount67.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount67;

  /// No description provided for @specialPromotionOnlyValidToday67.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday67;

  /// No description provided for @s30SpecialDiscount68.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount68;

  /// No description provided for @specialPromotionOnlyValidToday68.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday68;

  /// No description provided for @s30SpecialDiscount69.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount69;

  /// No description provided for @specialPromotionOnlyValidToday69.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday69;

  /// No description provided for @s30SpecialDiscount70.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount70;

  /// No description provided for @specialPromotionOnlyValidToday70.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday70;

  /// No description provided for @s30SpecialDiscount71.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount71;

  /// No description provided for @specialPromotionOnlyValidToday71.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday71;

  /// No description provided for @s30SpecialDiscount72.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount72;

  /// No description provided for @specialPromotionOnlyValidToday72.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday72;

  /// No description provided for @yesterday12.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday12;

  /// No description provided for @topUpEwalletSuccessful67.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful67;

  /// No description provided for @youHaveToTopUpYourEwallet67.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet67;

  /// No description provided for @topUpEwalletSuccessful68.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful68;

  /// No description provided for @youHaveToTopUpYourEwallet68.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet68;

  /// No description provided for @topUpEwalletSuccessful69.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful69;

  /// No description provided for @youHaveToTopUpYourEwallet69.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet69;

  /// No description provided for @topUpEwalletSuccessful70.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful70;

  /// No description provided for @youHaveToTopUpYourEwallet70.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet70;

  /// No description provided for @topUpEwalletSuccessful71.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful71;

  /// No description provided for @youHaveToTopUpYourEwallet71.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet71;

  /// No description provided for @topUpEwalletSuccessful72.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful72;

  /// No description provided for @youHaveToTopUpYourEwallet72.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet72;

  /// No description provided for @newServicesAvailable67.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable67;

  /// No description provided for @nowYouCanTrackOrdersInRealTime67.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime67;

  /// No description provided for @newServicesAvailable68.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable68;

  /// No description provided for @nowYouCanTrackOrdersInRealTime68.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime68;

  /// No description provided for @newServicesAvailable69.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable69;

  /// No description provided for @nowYouCanTrackOrdersInRealTime69.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime69;

  /// No description provided for @newServicesAvailable70.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable70;

  /// No description provided for @nowYouCanTrackOrdersInRealTime70.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime70;

  /// No description provided for @newServicesAvailable71.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable71;

  /// No description provided for @nowYouCanTrackOrdersInRealTime71.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime71;

  /// No description provided for @newServicesAvailable72.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable72;

  /// No description provided for @nowYouCanTrackOrdersInRealTime72.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime72;

  /// No description provided for @december22202412.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202412;

  /// No description provided for @creditCardConnected67.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected67;

  /// No description provided for @creditCardHasBeenLinked67.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked67;

  /// No description provided for @creditCardConnected68.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected68;

  /// No description provided for @creditCardHasBeenLinked68.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked68;

  /// No description provided for @creditCardConnected69.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected69;

  /// No description provided for @creditCardHasBeenLinked69.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked69;

  /// No description provided for @creditCardConnected70.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected70;

  /// No description provided for @creditCardHasBeenLinked70.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked70;

  /// No description provided for @creditCardConnected71.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected71;

  /// No description provided for @creditCardHasBeenLinked71.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked71;

  /// No description provided for @creditCardConnected72.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected72;

  /// No description provided for @creditCardHasBeenLinked72.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked72;

  /// No description provided for @accountSetupSuccessful67.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful67;

  /// No description provided for @yourAccountHasBeenCreated67.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated67;

  /// No description provided for @accountSetupSuccessful68.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful68;

  /// No description provided for @yourAccountHasBeenCreated68.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated68;

  /// No description provided for @accountSetupSuccessful69.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful69;

  /// No description provided for @yourAccountHasBeenCreated69.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated69;

  /// No description provided for @accountSetupSuccessful70.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful70;

  /// No description provided for @yourAccountHasBeenCreated70.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated70;

  /// No description provided for @accountSetupSuccessful71.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful71;

  /// No description provided for @yourAccountHasBeenCreated71.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated71;

  /// No description provided for @accountSetupSuccessful72.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful72;

  /// No description provided for @yourAccountHasBeenCreated72.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated72;

  /// No description provided for @notification13.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification13;

  /// No description provided for @notification14.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification14;

  /// No description provided for @today13.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today13;

  /// No description provided for @s30SpecialDiscount73.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount73;

  /// No description provided for @specialPromotionOnlyValidToday73.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday73;

  /// No description provided for @s30SpecialDiscount74.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount74;

  /// No description provided for @specialPromotionOnlyValidToday74.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday74;

  /// No description provided for @s30SpecialDiscount75.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount75;

  /// No description provided for @specialPromotionOnlyValidToday75.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday75;

  /// No description provided for @s30SpecialDiscount76.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount76;

  /// No description provided for @specialPromotionOnlyValidToday76.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday76;

  /// No description provided for @s30SpecialDiscount77.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount77;

  /// No description provided for @specialPromotionOnlyValidToday77.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday77;

  /// No description provided for @s30SpecialDiscount78.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount78;

  /// No description provided for @specialPromotionOnlyValidToday78.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday78;

  /// No description provided for @yesterday13.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday13;

  /// No description provided for @topUpEwalletSuccessful73.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful73;

  /// No description provided for @youHaveToTopUpYourEwallet73.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet73;

  /// No description provided for @topUpEwalletSuccessful74.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful74;

  /// No description provided for @youHaveToTopUpYourEwallet74.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet74;

  /// No description provided for @topUpEwalletSuccessful75.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful75;

  /// No description provided for @youHaveToTopUpYourEwallet75.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet75;

  /// No description provided for @topUpEwalletSuccessful76.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful76;

  /// No description provided for @youHaveToTopUpYourEwallet76.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet76;

  /// No description provided for @topUpEwalletSuccessful77.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful77;

  /// No description provided for @youHaveToTopUpYourEwallet77.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet77;

  /// No description provided for @topUpEwalletSuccessful78.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful78;

  /// No description provided for @youHaveToTopUpYourEwallet78.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet78;

  /// No description provided for @newServicesAvailable73.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable73;

  /// No description provided for @nowYouCanTrackOrdersInRealTime73.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime73;

  /// No description provided for @newServicesAvailable74.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable74;

  /// No description provided for @nowYouCanTrackOrdersInRealTime74.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime74;

  /// No description provided for @newServicesAvailable75.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable75;

  /// No description provided for @nowYouCanTrackOrdersInRealTime75.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime75;

  /// No description provided for @newServicesAvailable76.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable76;

  /// No description provided for @nowYouCanTrackOrdersInRealTime76.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime76;

  /// No description provided for @newServicesAvailable77.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable77;

  /// No description provided for @nowYouCanTrackOrdersInRealTime77.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime77;

  /// No description provided for @newServicesAvailable78.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable78;

  /// No description provided for @nowYouCanTrackOrdersInRealTime78.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime78;

  /// No description provided for @december22202413.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202413;

  /// No description provided for @creditCardConnected73.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected73;

  /// No description provided for @creditCardHasBeenLinked73.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked73;

  /// No description provided for @creditCardConnected74.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected74;

  /// No description provided for @creditCardHasBeenLinked74.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked74;

  /// No description provided for @creditCardConnected75.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected75;

  /// No description provided for @creditCardHasBeenLinked75.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked75;

  /// No description provided for @creditCardConnected76.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected76;

  /// No description provided for @creditCardHasBeenLinked76.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked76;

  /// No description provided for @creditCardConnected77.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected77;

  /// No description provided for @creditCardHasBeenLinked77.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked77;

  /// No description provided for @creditCardConnected78.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected78;

  /// No description provided for @creditCardHasBeenLinked78.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked78;

  /// No description provided for @accountSetupSuccessful73.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful73;

  /// No description provided for @yourAccountHasBeenCreated73.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated73;

  /// No description provided for @accountSetupSuccessful74.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful74;

  /// No description provided for @yourAccountHasBeenCreated74.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated74;

  /// No description provided for @accountSetupSuccessful75.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful75;

  /// No description provided for @yourAccountHasBeenCreated75.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated75;

  /// No description provided for @accountSetupSuccessful76.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful76;

  /// No description provided for @yourAccountHasBeenCreated76.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated76;

  /// No description provided for @accountSetupSuccessful77.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful77;

  /// No description provided for @yourAccountHasBeenCreated77.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated77;

  /// No description provided for @accountSetupSuccessful78.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful78;

  /// No description provided for @yourAccountHasBeenCreated78.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated78;

  /// No description provided for @today14.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today14;

  /// No description provided for @s30SpecialDiscount79.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount79;

  /// No description provided for @specialPromotionOnlyValidToday79.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday79;

  /// No description provided for @s30SpecialDiscount80.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount80;

  /// No description provided for @specialPromotionOnlyValidToday80.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday80;

  /// No description provided for @s30SpecialDiscount81.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount81;

  /// No description provided for @specialPromotionOnlyValidToday81.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday81;

  /// No description provided for @s30SpecialDiscount82.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount82;

  /// No description provided for @specialPromotionOnlyValidToday82.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday82;

  /// No description provided for @s30SpecialDiscount83.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount83;

  /// No description provided for @specialPromotionOnlyValidToday83.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday83;

  /// No description provided for @s30SpecialDiscount84.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount84;

  /// No description provided for @specialPromotionOnlyValidToday84.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday84;

  /// No description provided for @yesterday14.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday14;

  /// No description provided for @topUpEwalletSuccessful79.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful79;

  /// No description provided for @youHaveToTopUpYourEwallet79.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet79;

  /// No description provided for @topUpEwalletSuccessful80.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful80;

  /// No description provided for @youHaveToTopUpYourEwallet80.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet80;

  /// No description provided for @topUpEwalletSuccessful81.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful81;

  /// No description provided for @youHaveToTopUpYourEwallet81.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet81;

  /// No description provided for @topUpEwalletSuccessful82.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful82;

  /// No description provided for @youHaveToTopUpYourEwallet82.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet82;

  /// No description provided for @topUpEwalletSuccessful83.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful83;

  /// No description provided for @youHaveToTopUpYourEwallet83.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet83;

  /// No description provided for @topUpEwalletSuccessful84.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful84;

  /// No description provided for @youHaveToTopUpYourEwallet84.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet84;

  /// No description provided for @newServicesAvailable79.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable79;

  /// No description provided for @nowYouCanTrackOrdersInRealTime79.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime79;

  /// No description provided for @newServicesAvailable80.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable80;

  /// No description provided for @nowYouCanTrackOrdersInRealTime80.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime80;

  /// No description provided for @newServicesAvailable81.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable81;

  /// No description provided for @nowYouCanTrackOrdersInRealTime81.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime81;

  /// No description provided for @newServicesAvailable82.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable82;

  /// No description provided for @nowYouCanTrackOrdersInRealTime82.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime82;

  /// No description provided for @newServicesAvailable83.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable83;

  /// No description provided for @nowYouCanTrackOrdersInRealTime83.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime83;

  /// No description provided for @newServicesAvailable84.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable84;

  /// No description provided for @nowYouCanTrackOrdersInRealTime84.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime84;

  /// No description provided for @december22202414.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202414;

  /// No description provided for @creditCardConnected79.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected79;

  /// No description provided for @creditCardHasBeenLinked79.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked79;

  /// No description provided for @creditCardConnected80.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected80;

  /// No description provided for @creditCardHasBeenLinked80.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked80;

  /// No description provided for @creditCardConnected81.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected81;

  /// No description provided for @creditCardHasBeenLinked81.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked81;

  /// No description provided for @creditCardConnected82.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected82;

  /// No description provided for @creditCardHasBeenLinked82.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked82;

  /// No description provided for @creditCardConnected83.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected83;

  /// No description provided for @creditCardHasBeenLinked83.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked83;

  /// No description provided for @creditCardConnected84.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected84;

  /// No description provided for @creditCardHasBeenLinked84.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked84;

  /// No description provided for @accountSetupSuccessful79.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful79;

  /// No description provided for @yourAccountHasBeenCreated79.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated79;

  /// No description provided for @accountSetupSuccessful80.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful80;

  /// No description provided for @yourAccountHasBeenCreated80.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated80;

  /// No description provided for @accountSetupSuccessful81.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful81;

  /// No description provided for @yourAccountHasBeenCreated81.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated81;

  /// No description provided for @accountSetupSuccessful82.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful82;

  /// No description provided for @yourAccountHasBeenCreated82.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated82;

  /// No description provided for @accountSetupSuccessful83.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful83;

  /// No description provided for @yourAccountHasBeenCreated83.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated83;

  /// No description provided for @accountSetupSuccessful84.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful84;

  /// No description provided for @yourAccountHasBeenCreated84.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated84;

  /// No description provided for @notification15.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification15;

  /// No description provided for @notification16.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification16;

  /// No description provided for @today15.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today15;

  /// No description provided for @s30SpecialDiscount85.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount85;

  /// No description provided for @specialPromotionOnlyValidToday85.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday85;

  /// No description provided for @s30SpecialDiscount86.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount86;

  /// No description provided for @specialPromotionOnlyValidToday86.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday86;

  /// No description provided for @s30SpecialDiscount87.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount87;

  /// No description provided for @specialPromotionOnlyValidToday87.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday87;

  /// No description provided for @s30SpecialDiscount88.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount88;

  /// No description provided for @specialPromotionOnlyValidToday88.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday88;

  /// No description provided for @s30SpecialDiscount89.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount89;

  /// No description provided for @specialPromotionOnlyValidToday89.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday89;

  /// No description provided for @s30SpecialDiscount90.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount90;

  /// No description provided for @specialPromotionOnlyValidToday90.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday90;

  /// No description provided for @yesterday15.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday15;

  /// No description provided for @topUpEwalletSuccessful85.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful85;

  /// No description provided for @youHaveToTopUpYourEwallet85.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet85;

  /// No description provided for @topUpEwalletSuccessful86.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful86;

  /// No description provided for @youHaveToTopUpYourEwallet86.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet86;

  /// No description provided for @topUpEwalletSuccessful87.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful87;

  /// No description provided for @youHaveToTopUpYourEwallet87.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet87;

  /// No description provided for @topUpEwalletSuccessful88.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful88;

  /// No description provided for @youHaveToTopUpYourEwallet88.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet88;

  /// No description provided for @topUpEwalletSuccessful89.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful89;

  /// No description provided for @youHaveToTopUpYourEwallet89.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet89;

  /// No description provided for @topUpEwalletSuccessful90.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful90;

  /// No description provided for @youHaveToTopUpYourEwallet90.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet90;

  /// No description provided for @newServicesAvailable85.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable85;

  /// No description provided for @nowYouCanTrackOrdersInRealTime85.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime85;

  /// No description provided for @newServicesAvailable86.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable86;

  /// No description provided for @nowYouCanTrackOrdersInRealTime86.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime86;

  /// No description provided for @newServicesAvailable87.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable87;

  /// No description provided for @nowYouCanTrackOrdersInRealTime87.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime87;

  /// No description provided for @newServicesAvailable88.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable88;

  /// No description provided for @nowYouCanTrackOrdersInRealTime88.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime88;

  /// No description provided for @newServicesAvailable89.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable89;

  /// No description provided for @nowYouCanTrackOrdersInRealTime89.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime89;

  /// No description provided for @newServicesAvailable90.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable90;

  /// No description provided for @nowYouCanTrackOrdersInRealTime90.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime90;

  /// No description provided for @december22202415.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202415;

  /// No description provided for @creditCardConnected85.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected85;

  /// No description provided for @creditCardHasBeenLinked85.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked85;

  /// No description provided for @creditCardConnected86.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected86;

  /// No description provided for @creditCardHasBeenLinked86.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked86;

  /// No description provided for @creditCardConnected87.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected87;

  /// No description provided for @creditCardHasBeenLinked87.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked87;

  /// No description provided for @creditCardConnected88.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected88;

  /// No description provided for @creditCardHasBeenLinked88.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked88;

  /// No description provided for @creditCardConnected89.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected89;

  /// No description provided for @creditCardHasBeenLinked89.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked89;

  /// No description provided for @creditCardConnected90.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected90;

  /// No description provided for @creditCardHasBeenLinked90.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked90;

  /// No description provided for @accountSetupSuccessful85.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful85;

  /// No description provided for @yourAccountHasBeenCreated85.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated85;

  /// No description provided for @accountSetupSuccessful86.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful86;

  /// No description provided for @yourAccountHasBeenCreated86.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated86;

  /// No description provided for @accountSetupSuccessful87.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful87;

  /// No description provided for @yourAccountHasBeenCreated87.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated87;

  /// No description provided for @accountSetupSuccessful88.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful88;

  /// No description provided for @yourAccountHasBeenCreated88.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated88;

  /// No description provided for @accountSetupSuccessful89.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful89;

  /// No description provided for @yourAccountHasBeenCreated89.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated89;

  /// No description provided for @accountSetupSuccessful90.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful90;

  /// No description provided for @yourAccountHasBeenCreated90.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated90;

  /// No description provided for @today16.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today16;

  /// No description provided for @s30SpecialDiscount91.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount91;

  /// No description provided for @specialPromotionOnlyValidToday91.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday91;

  /// No description provided for @s30SpecialDiscount92.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount92;

  /// No description provided for @specialPromotionOnlyValidToday92.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday92;

  /// No description provided for @s30SpecialDiscount93.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount93;

  /// No description provided for @specialPromotionOnlyValidToday93.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday93;

  /// No description provided for @s30SpecialDiscount94.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount94;

  /// No description provided for @specialPromotionOnlyValidToday94.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday94;

  /// No description provided for @s30SpecialDiscount95.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount95;

  /// No description provided for @specialPromotionOnlyValidToday95.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday95;

  /// No description provided for @s30SpecialDiscount96.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount96;

  /// No description provided for @specialPromotionOnlyValidToday96.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday96;

  /// No description provided for @yesterday16.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday16;

  /// No description provided for @topUpEwalletSuccessful91.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful91;

  /// No description provided for @youHaveToTopUpYourEwallet91.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet91;

  /// No description provided for @topUpEwalletSuccessful92.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful92;

  /// No description provided for @youHaveToTopUpYourEwallet92.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet92;

  /// No description provided for @topUpEwalletSuccessful93.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful93;

  /// No description provided for @youHaveToTopUpYourEwallet93.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet93;

  /// No description provided for @topUpEwalletSuccessful94.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful94;

  /// No description provided for @youHaveToTopUpYourEwallet94.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet94;

  /// No description provided for @topUpEwalletSuccessful95.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful95;

  /// No description provided for @youHaveToTopUpYourEwallet95.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet95;

  /// No description provided for @topUpEwalletSuccessful96.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful96;

  /// No description provided for @youHaveToTopUpYourEwallet96.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet96;

  /// No description provided for @newServicesAvailable91.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable91;

  /// No description provided for @nowYouCanTrackOrdersInRealTime91.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime91;

  /// No description provided for @newServicesAvailable92.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable92;

  /// No description provided for @nowYouCanTrackOrdersInRealTime92.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime92;

  /// No description provided for @newServicesAvailable93.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable93;

  /// No description provided for @nowYouCanTrackOrdersInRealTime93.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime93;

  /// No description provided for @newServicesAvailable94.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable94;

  /// No description provided for @nowYouCanTrackOrdersInRealTime94.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime94;

  /// No description provided for @newServicesAvailable95.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable95;

  /// No description provided for @nowYouCanTrackOrdersInRealTime95.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime95;

  /// No description provided for @newServicesAvailable96.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable96;

  /// No description provided for @nowYouCanTrackOrdersInRealTime96.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime96;

  /// No description provided for @december22202416.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202416;

  /// No description provided for @creditCardConnected91.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected91;

  /// No description provided for @creditCardHasBeenLinked91.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked91;

  /// No description provided for @creditCardConnected92.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected92;

  /// No description provided for @creditCardHasBeenLinked92.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked92;

  /// No description provided for @creditCardConnected93.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected93;

  /// No description provided for @creditCardHasBeenLinked93.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked93;

  /// No description provided for @creditCardConnected94.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected94;

  /// No description provided for @creditCardHasBeenLinked94.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked94;

  /// No description provided for @creditCardConnected95.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected95;

  /// No description provided for @creditCardHasBeenLinked95.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked95;

  /// No description provided for @creditCardConnected96.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected96;

  /// No description provided for @creditCardHasBeenLinked96.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked96;

  /// No description provided for @accountSetupSuccessful91.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful91;

  /// No description provided for @yourAccountHasBeenCreated91.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated91;

  /// No description provided for @accountSetupSuccessful92.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful92;

  /// No description provided for @yourAccountHasBeenCreated92.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated92;

  /// No description provided for @accountSetupSuccessful93.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful93;

  /// No description provided for @yourAccountHasBeenCreated93.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated93;

  /// No description provided for @accountSetupSuccessful94.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful94;

  /// No description provided for @yourAccountHasBeenCreated94.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated94;

  /// No description provided for @accountSetupSuccessful95.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful95;

  /// No description provided for @yourAccountHasBeenCreated95.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated95;

  /// No description provided for @accountSetupSuccessful96.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful96;

  /// No description provided for @yourAccountHasBeenCreated96.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated96;

  /// No description provided for @notification17.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification17;

  /// No description provided for @notification18.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification18;

  /// No description provided for @today17.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today17;

  /// No description provided for @s30SpecialDiscount97.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount97;

  /// No description provided for @specialPromotionOnlyValidToday97.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday97;

  /// No description provided for @s30SpecialDiscount98.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount98;

  /// No description provided for @specialPromotionOnlyValidToday98.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday98;

  /// No description provided for @s30SpecialDiscount99.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount99;

  /// No description provided for @specialPromotionOnlyValidToday99.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday99;

  /// No description provided for @s30SpecialDiscount100.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount100;

  /// No description provided for @specialPromotionOnlyValidToday100.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday100;

  /// No description provided for @s30SpecialDiscount101.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount101;

  /// No description provided for @specialPromotionOnlyValidToday101.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday101;

  /// No description provided for @s30SpecialDiscount102.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount102;

  /// No description provided for @specialPromotionOnlyValidToday102.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday102;

  /// No description provided for @yesterday17.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday17;

  /// No description provided for @topUpEwalletSuccessful97.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful97;

  /// No description provided for @youHaveToTopUpYourEwallet97.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet97;

  /// No description provided for @topUpEwalletSuccessful98.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful98;

  /// No description provided for @youHaveToTopUpYourEwallet98.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet98;

  /// No description provided for @topUpEwalletSuccessful99.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful99;

  /// No description provided for @youHaveToTopUpYourEwallet99.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet99;

  /// No description provided for @topUpEwalletSuccessful100.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful100;

  /// No description provided for @youHaveToTopUpYourEwallet100.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet100;

  /// No description provided for @topUpEwalletSuccessful101.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful101;

  /// No description provided for @youHaveToTopUpYourEwallet101.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet101;

  /// No description provided for @topUpEwalletSuccessful102.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful102;

  /// No description provided for @youHaveToTopUpYourEwallet102.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet102;

  /// No description provided for @newServicesAvailable97.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable97;

  /// No description provided for @nowYouCanTrackOrdersInRealTime97.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime97;

  /// No description provided for @newServicesAvailable98.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable98;

  /// No description provided for @nowYouCanTrackOrdersInRealTime98.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime98;

  /// No description provided for @newServicesAvailable99.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable99;

  /// No description provided for @nowYouCanTrackOrdersInRealTime99.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime99;

  /// No description provided for @newServicesAvailable100.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable100;

  /// No description provided for @nowYouCanTrackOrdersInRealTime100.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime100;

  /// No description provided for @newServicesAvailable101.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable101;

  /// No description provided for @nowYouCanTrackOrdersInRealTime101.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime101;

  /// No description provided for @newServicesAvailable102.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable102;

  /// No description provided for @nowYouCanTrackOrdersInRealTime102.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime102;

  /// No description provided for @december22202417.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202417;

  /// No description provided for @creditCardConnected97.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected97;

  /// No description provided for @creditCardHasBeenLinked97.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked97;

  /// No description provided for @creditCardConnected98.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected98;

  /// No description provided for @creditCardHasBeenLinked98.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked98;

  /// No description provided for @creditCardConnected99.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected99;

  /// No description provided for @creditCardHasBeenLinked99.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked99;

  /// No description provided for @creditCardConnected100.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected100;

  /// No description provided for @creditCardHasBeenLinked100.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked100;

  /// No description provided for @creditCardConnected101.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected101;

  /// No description provided for @creditCardHasBeenLinked101.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked101;

  /// No description provided for @creditCardConnected102.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected102;

  /// No description provided for @creditCardHasBeenLinked102.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked102;

  /// No description provided for @accountSetupSuccessful97.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful97;

  /// No description provided for @yourAccountHasBeenCreated97.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated97;

  /// No description provided for @accountSetupSuccessful98.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful98;

  /// No description provided for @yourAccountHasBeenCreated98.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated98;

  /// No description provided for @accountSetupSuccessful99.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful99;

  /// No description provided for @yourAccountHasBeenCreated99.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated99;

  /// No description provided for @accountSetupSuccessful100.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful100;

  /// No description provided for @yourAccountHasBeenCreated100.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated100;

  /// No description provided for @accountSetupSuccessful101.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful101;

  /// No description provided for @yourAccountHasBeenCreated101.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated101;

  /// No description provided for @accountSetupSuccessful102.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful102;

  /// No description provided for @yourAccountHasBeenCreated102.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated102;

  /// No description provided for @today18.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today18;

  /// No description provided for @s30SpecialDiscount103.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount103;

  /// No description provided for @specialPromotionOnlyValidToday103.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday103;

  /// No description provided for @s30SpecialDiscount104.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount104;

  /// No description provided for @specialPromotionOnlyValidToday104.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday104;

  /// No description provided for @s30SpecialDiscount105.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount105;

  /// No description provided for @specialPromotionOnlyValidToday105.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday105;

  /// No description provided for @s30SpecialDiscount106.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount106;

  /// No description provided for @specialPromotionOnlyValidToday106.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday106;

  /// No description provided for @s30SpecialDiscount107.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount107;

  /// No description provided for @specialPromotionOnlyValidToday107.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday107;

  /// No description provided for @s30SpecialDiscount108.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount108;

  /// No description provided for @specialPromotionOnlyValidToday108.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday108;

  /// No description provided for @yesterday18.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday18;

  /// No description provided for @topUpEwalletSuccessful103.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful103;

  /// No description provided for @youHaveToTopUpYourEwallet103.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet103;

  /// No description provided for @topUpEwalletSuccessful104.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful104;

  /// No description provided for @youHaveToTopUpYourEwallet104.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet104;

  /// No description provided for @topUpEwalletSuccessful105.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful105;

  /// No description provided for @youHaveToTopUpYourEwallet105.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet105;

  /// No description provided for @topUpEwalletSuccessful106.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful106;

  /// No description provided for @youHaveToTopUpYourEwallet106.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet106;

  /// No description provided for @topUpEwalletSuccessful107.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful107;

  /// No description provided for @youHaveToTopUpYourEwallet107.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet107;

  /// No description provided for @topUpEwalletSuccessful108.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful108;

  /// No description provided for @youHaveToTopUpYourEwallet108.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet108;

  /// No description provided for @newServicesAvailable103.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable103;

  /// No description provided for @nowYouCanTrackOrdersInRealTime103.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime103;

  /// No description provided for @newServicesAvailable104.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable104;

  /// No description provided for @nowYouCanTrackOrdersInRealTime104.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime104;

  /// No description provided for @newServicesAvailable105.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable105;

  /// No description provided for @nowYouCanTrackOrdersInRealTime105.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime105;

  /// No description provided for @newServicesAvailable106.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable106;

  /// No description provided for @nowYouCanTrackOrdersInRealTime106.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime106;

  /// No description provided for @newServicesAvailable107.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable107;

  /// No description provided for @nowYouCanTrackOrdersInRealTime107.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime107;

  /// No description provided for @newServicesAvailable108.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable108;

  /// No description provided for @nowYouCanTrackOrdersInRealTime108.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime108;

  /// No description provided for @december22202418.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202418;

  /// No description provided for @creditCardConnected103.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected103;

  /// No description provided for @creditCardHasBeenLinked103.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked103;

  /// No description provided for @creditCardConnected104.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected104;

  /// No description provided for @creditCardHasBeenLinked104.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked104;

  /// No description provided for @creditCardConnected105.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected105;

  /// No description provided for @creditCardHasBeenLinked105.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked105;

  /// No description provided for @creditCardConnected106.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected106;

  /// No description provided for @creditCardHasBeenLinked106.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked106;

  /// No description provided for @creditCardConnected107.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected107;

  /// No description provided for @creditCardHasBeenLinked107.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked107;

  /// No description provided for @creditCardConnected108.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected108;

  /// No description provided for @creditCardHasBeenLinked108.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked108;

  /// No description provided for @accountSetupSuccessful103.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful103;

  /// No description provided for @yourAccountHasBeenCreated103.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated103;

  /// No description provided for @accountSetupSuccessful104.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful104;

  /// No description provided for @yourAccountHasBeenCreated104.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated104;

  /// No description provided for @accountSetupSuccessful105.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful105;

  /// No description provided for @yourAccountHasBeenCreated105.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated105;

  /// No description provided for @accountSetupSuccessful106.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful106;

  /// No description provided for @yourAccountHasBeenCreated106.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated106;

  /// No description provided for @accountSetupSuccessful107.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful107;

  /// No description provided for @yourAccountHasBeenCreated107.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated107;

  /// No description provided for @accountSetupSuccessful108.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful108;

  /// No description provided for @yourAccountHasBeenCreated108.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated108;

  /// No description provided for @notification19.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification19;

  /// No description provided for @notification20.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification20;

  /// No description provided for @today19.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today19;

  /// No description provided for @s30SpecialDiscount109.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount109;

  /// No description provided for @specialPromotionOnlyValidToday109.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday109;

  /// No description provided for @s30SpecialDiscount110.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount110;

  /// No description provided for @specialPromotionOnlyValidToday110.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday110;

  /// No description provided for @s30SpecialDiscount111.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount111;

  /// No description provided for @specialPromotionOnlyValidToday111.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday111;

  /// No description provided for @s30SpecialDiscount112.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount112;

  /// No description provided for @specialPromotionOnlyValidToday112.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday112;

  /// No description provided for @s30SpecialDiscount113.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount113;

  /// No description provided for @specialPromotionOnlyValidToday113.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday113;

  /// No description provided for @s30SpecialDiscount114.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount114;

  /// No description provided for @specialPromotionOnlyValidToday114.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday114;

  /// No description provided for @yesterday19.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday19;

  /// No description provided for @topUpEwalletSuccessful109.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful109;

  /// No description provided for @youHaveToTopUpYourEwallet109.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet109;

  /// No description provided for @topUpEwalletSuccessful110.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful110;

  /// No description provided for @youHaveToTopUpYourEwallet110.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet110;

  /// No description provided for @topUpEwalletSuccessful111.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful111;

  /// No description provided for @youHaveToTopUpYourEwallet111.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet111;

  /// No description provided for @topUpEwalletSuccessful112.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful112;

  /// No description provided for @youHaveToTopUpYourEwallet112.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet112;

  /// No description provided for @topUpEwalletSuccessful113.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful113;

  /// No description provided for @youHaveToTopUpYourEwallet113.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet113;

  /// No description provided for @topUpEwalletSuccessful114.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful114;

  /// No description provided for @youHaveToTopUpYourEwallet114.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet114;

  /// No description provided for @newServicesAvailable109.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable109;

  /// No description provided for @nowYouCanTrackOrdersInRealTime109.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime109;

  /// No description provided for @newServicesAvailable110.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable110;

  /// No description provided for @nowYouCanTrackOrdersInRealTime110.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime110;

  /// No description provided for @newServicesAvailable111.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable111;

  /// No description provided for @nowYouCanTrackOrdersInRealTime111.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime111;

  /// No description provided for @newServicesAvailable112.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable112;

  /// No description provided for @nowYouCanTrackOrdersInRealTime112.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime112;

  /// No description provided for @newServicesAvailable113.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable113;

  /// No description provided for @nowYouCanTrackOrdersInRealTime113.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime113;

  /// No description provided for @newServicesAvailable114.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable114;

  /// No description provided for @nowYouCanTrackOrdersInRealTime114.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime114;

  /// No description provided for @december22202419.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202419;

  /// No description provided for @creditCardConnected109.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected109;

  /// No description provided for @creditCardHasBeenLinked109.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked109;

  /// No description provided for @creditCardConnected110.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected110;

  /// No description provided for @creditCardHasBeenLinked110.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked110;

  /// No description provided for @creditCardConnected111.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected111;

  /// No description provided for @creditCardHasBeenLinked111.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked111;

  /// No description provided for @creditCardConnected112.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected112;

  /// No description provided for @creditCardHasBeenLinked112.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked112;

  /// No description provided for @creditCardConnected113.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected113;

  /// No description provided for @creditCardHasBeenLinked113.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked113;

  /// No description provided for @creditCardConnected114.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected114;

  /// No description provided for @creditCardHasBeenLinked114.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked114;

  /// No description provided for @accountSetupSuccessful109.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful109;

  /// No description provided for @yourAccountHasBeenCreated109.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated109;

  /// No description provided for @accountSetupSuccessful110.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful110;

  /// No description provided for @yourAccountHasBeenCreated110.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated110;

  /// No description provided for @accountSetupSuccessful111.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful111;

  /// No description provided for @yourAccountHasBeenCreated111.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated111;

  /// No description provided for @accountSetupSuccessful112.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful112;

  /// No description provided for @yourAccountHasBeenCreated112.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated112;

  /// No description provided for @accountSetupSuccessful113.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful113;

  /// No description provided for @yourAccountHasBeenCreated113.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated113;

  /// No description provided for @accountSetupSuccessful114.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful114;

  /// No description provided for @yourAccountHasBeenCreated114.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated114;

  /// No description provided for @today20.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today20;

  /// No description provided for @s30SpecialDiscount115.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount115;

  /// No description provided for @specialPromotionOnlyValidToday115.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday115;

  /// No description provided for @s30SpecialDiscount116.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount116;

  /// No description provided for @specialPromotionOnlyValidToday116.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday116;

  /// No description provided for @s30SpecialDiscount117.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount117;

  /// No description provided for @specialPromotionOnlyValidToday117.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday117;

  /// No description provided for @s30SpecialDiscount118.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount118;

  /// No description provided for @specialPromotionOnlyValidToday118.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday118;

  /// No description provided for @s30SpecialDiscount119.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount119;

  /// No description provided for @specialPromotionOnlyValidToday119.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday119;

  /// No description provided for @s30SpecialDiscount120.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount120;

  /// No description provided for @specialPromotionOnlyValidToday120.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday120;

  /// No description provided for @yesterday20.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday20;

  /// No description provided for @topUpEwalletSuccessful115.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful115;

  /// No description provided for @youHaveToTopUpYourEwallet115.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet115;

  /// No description provided for @topUpEwalletSuccessful116.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful116;

  /// No description provided for @youHaveToTopUpYourEwallet116.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet116;

  /// No description provided for @topUpEwalletSuccessful117.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful117;

  /// No description provided for @youHaveToTopUpYourEwallet117.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet117;

  /// No description provided for @topUpEwalletSuccessful118.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful118;

  /// No description provided for @youHaveToTopUpYourEwallet118.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet118;

  /// No description provided for @topUpEwalletSuccessful119.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful119;

  /// No description provided for @youHaveToTopUpYourEwallet119.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet119;

  /// No description provided for @topUpEwalletSuccessful120.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful120;

  /// No description provided for @youHaveToTopUpYourEwallet120.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet120;

  /// No description provided for @newServicesAvailable115.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable115;

  /// No description provided for @nowYouCanTrackOrdersInRealTime115.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime115;

  /// No description provided for @newServicesAvailable116.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable116;

  /// No description provided for @nowYouCanTrackOrdersInRealTime116.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime116;

  /// No description provided for @newServicesAvailable117.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable117;

  /// No description provided for @nowYouCanTrackOrdersInRealTime117.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime117;

  /// No description provided for @newServicesAvailable118.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable118;

  /// No description provided for @nowYouCanTrackOrdersInRealTime118.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime118;

  /// No description provided for @newServicesAvailable119.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable119;

  /// No description provided for @nowYouCanTrackOrdersInRealTime119.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime119;

  /// No description provided for @newServicesAvailable120.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable120;

  /// No description provided for @nowYouCanTrackOrdersInRealTime120.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime120;

  /// No description provided for @december22202420.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202420;

  /// No description provided for @creditCardConnected115.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected115;

  /// No description provided for @creditCardHasBeenLinked115.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked115;

  /// No description provided for @creditCardConnected116.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected116;

  /// No description provided for @creditCardHasBeenLinked116.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked116;

  /// No description provided for @creditCardConnected117.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected117;

  /// No description provided for @creditCardHasBeenLinked117.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked117;

  /// No description provided for @creditCardConnected118.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected118;

  /// No description provided for @creditCardHasBeenLinked118.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked118;

  /// No description provided for @creditCardConnected119.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected119;

  /// No description provided for @creditCardHasBeenLinked119.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked119;

  /// No description provided for @creditCardConnected120.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected120;

  /// No description provided for @creditCardHasBeenLinked120.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked120;

  /// No description provided for @accountSetupSuccessful115.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful115;

  /// No description provided for @yourAccountHasBeenCreated115.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated115;

  /// No description provided for @accountSetupSuccessful116.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful116;

  /// No description provided for @yourAccountHasBeenCreated116.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated116;

  /// No description provided for @accountSetupSuccessful117.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful117;

  /// No description provided for @yourAccountHasBeenCreated117.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated117;

  /// No description provided for @accountSetupSuccessful118.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful118;

  /// No description provided for @yourAccountHasBeenCreated118.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated118;

  /// No description provided for @accountSetupSuccessful119.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful119;

  /// No description provided for @yourAccountHasBeenCreated119.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated119;

  /// No description provided for @accountSetupSuccessful120.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful120;

  /// No description provided for @yourAccountHasBeenCreated120.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated120;

  /// No description provided for @notification21.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification21;

  /// No description provided for @notification22.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification22;

  /// No description provided for @today21.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today21;

  /// No description provided for @s30SpecialDiscount121.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount121;

  /// No description provided for @specialPromotionOnlyValidToday121.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday121;

  /// No description provided for @s30SpecialDiscount122.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount122;

  /// No description provided for @specialPromotionOnlyValidToday122.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday122;

  /// No description provided for @s30SpecialDiscount123.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount123;

  /// No description provided for @specialPromotionOnlyValidToday123.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday123;

  /// No description provided for @s30SpecialDiscount124.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount124;

  /// No description provided for @specialPromotionOnlyValidToday124.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday124;

  /// No description provided for @s30SpecialDiscount125.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount125;

  /// No description provided for @specialPromotionOnlyValidToday125.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday125;

  /// No description provided for @s30SpecialDiscount126.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount126;

  /// No description provided for @specialPromotionOnlyValidToday126.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday126;

  /// No description provided for @yesterday21.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday21;

  /// No description provided for @topUpEwalletSuccessful121.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful121;

  /// No description provided for @youHaveToTopUpYourEwallet121.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet121;

  /// No description provided for @topUpEwalletSuccessful122.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful122;

  /// No description provided for @youHaveToTopUpYourEwallet122.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet122;

  /// No description provided for @topUpEwalletSuccessful123.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful123;

  /// No description provided for @youHaveToTopUpYourEwallet123.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet123;

  /// No description provided for @topUpEwalletSuccessful124.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful124;

  /// No description provided for @youHaveToTopUpYourEwallet124.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet124;

  /// No description provided for @topUpEwalletSuccessful125.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful125;

  /// No description provided for @youHaveToTopUpYourEwallet125.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet125;

  /// No description provided for @topUpEwalletSuccessful126.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful126;

  /// No description provided for @youHaveToTopUpYourEwallet126.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet126;

  /// No description provided for @newServicesAvailable121.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable121;

  /// No description provided for @nowYouCanTrackOrdersInRealTime121.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime121;

  /// No description provided for @newServicesAvailable122.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable122;

  /// No description provided for @nowYouCanTrackOrdersInRealTime122.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime122;

  /// No description provided for @newServicesAvailable123.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable123;

  /// No description provided for @nowYouCanTrackOrdersInRealTime123.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime123;

  /// No description provided for @newServicesAvailable124.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable124;

  /// No description provided for @nowYouCanTrackOrdersInRealTime124.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime124;

  /// No description provided for @newServicesAvailable125.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable125;

  /// No description provided for @nowYouCanTrackOrdersInRealTime125.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime125;

  /// No description provided for @newServicesAvailable126.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable126;

  /// No description provided for @nowYouCanTrackOrdersInRealTime126.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime126;

  /// No description provided for @december22202421.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202421;

  /// No description provided for @creditCardConnected121.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected121;

  /// No description provided for @creditCardHasBeenLinked121.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked121;

  /// No description provided for @creditCardConnected122.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected122;

  /// No description provided for @creditCardHasBeenLinked122.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked122;

  /// No description provided for @creditCardConnected123.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected123;

  /// No description provided for @creditCardHasBeenLinked123.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked123;

  /// No description provided for @creditCardConnected124.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected124;

  /// No description provided for @creditCardHasBeenLinked124.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked124;

  /// No description provided for @creditCardConnected125.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected125;

  /// No description provided for @creditCardHasBeenLinked125.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked125;

  /// No description provided for @creditCardConnected126.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected126;

  /// No description provided for @creditCardHasBeenLinked126.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked126;

  /// No description provided for @accountSetupSuccessful121.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful121;

  /// No description provided for @yourAccountHasBeenCreated121.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated121;

  /// No description provided for @accountSetupSuccessful122.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful122;

  /// No description provided for @yourAccountHasBeenCreated122.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated122;

  /// No description provided for @accountSetupSuccessful123.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful123;

  /// No description provided for @yourAccountHasBeenCreated123.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated123;

  /// No description provided for @accountSetupSuccessful124.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful124;

  /// No description provided for @yourAccountHasBeenCreated124.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated124;

  /// No description provided for @accountSetupSuccessful125.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful125;

  /// No description provided for @yourAccountHasBeenCreated125.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated125;

  /// No description provided for @accountSetupSuccessful126.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful126;

  /// No description provided for @yourAccountHasBeenCreated126.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated126;

  /// No description provided for @today22.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today22;

  /// No description provided for @s30SpecialDiscount127.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount127;

  /// No description provided for @specialPromotionOnlyValidToday127.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday127;

  /// No description provided for @s30SpecialDiscount128.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount128;

  /// No description provided for @specialPromotionOnlyValidToday128.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday128;

  /// No description provided for @s30SpecialDiscount129.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount129;

  /// No description provided for @specialPromotionOnlyValidToday129.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday129;

  /// No description provided for @s30SpecialDiscount130.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount130;

  /// No description provided for @specialPromotionOnlyValidToday130.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday130;

  /// No description provided for @s30SpecialDiscount131.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount131;

  /// No description provided for @specialPromotionOnlyValidToday131.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday131;

  /// No description provided for @s30SpecialDiscount132.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount132;

  /// No description provided for @specialPromotionOnlyValidToday132.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday132;

  /// No description provided for @yesterday22.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday22;

  /// No description provided for @topUpEwalletSuccessful127.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful127;

  /// No description provided for @youHaveToTopUpYourEwallet127.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet127;

  /// No description provided for @topUpEwalletSuccessful128.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful128;

  /// No description provided for @youHaveToTopUpYourEwallet128.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet128;

  /// No description provided for @topUpEwalletSuccessful129.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful129;

  /// No description provided for @youHaveToTopUpYourEwallet129.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet129;

  /// No description provided for @topUpEwalletSuccessful130.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful130;

  /// No description provided for @youHaveToTopUpYourEwallet130.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet130;

  /// No description provided for @topUpEwalletSuccessful131.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful131;

  /// No description provided for @youHaveToTopUpYourEwallet131.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet131;

  /// No description provided for @topUpEwalletSuccessful132.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful132;

  /// No description provided for @youHaveToTopUpYourEwallet132.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet132;

  /// No description provided for @newServicesAvailable127.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable127;

  /// No description provided for @nowYouCanTrackOrdersInRealTime127.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime127;

  /// No description provided for @newServicesAvailable128.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable128;

  /// No description provided for @nowYouCanTrackOrdersInRealTime128.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime128;

  /// No description provided for @newServicesAvailable129.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable129;

  /// No description provided for @nowYouCanTrackOrdersInRealTime129.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime129;

  /// No description provided for @newServicesAvailable130.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable130;

  /// No description provided for @nowYouCanTrackOrdersInRealTime130.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime130;

  /// No description provided for @newServicesAvailable131.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable131;

  /// No description provided for @nowYouCanTrackOrdersInRealTime131.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime131;

  /// No description provided for @newServicesAvailable132.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable132;

  /// No description provided for @nowYouCanTrackOrdersInRealTime132.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime132;

  /// No description provided for @december22202422.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202422;

  /// No description provided for @creditCardConnected127.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected127;

  /// No description provided for @creditCardHasBeenLinked127.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked127;

  /// No description provided for @creditCardConnected128.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected128;

  /// No description provided for @creditCardHasBeenLinked128.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked128;

  /// No description provided for @creditCardConnected129.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected129;

  /// No description provided for @creditCardHasBeenLinked129.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked129;

  /// No description provided for @creditCardConnected130.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected130;

  /// No description provided for @creditCardHasBeenLinked130.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked130;

  /// No description provided for @creditCardConnected131.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected131;

  /// No description provided for @creditCardHasBeenLinked131.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked131;

  /// No description provided for @creditCardConnected132.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected132;

  /// No description provided for @creditCardHasBeenLinked132.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked132;

  /// No description provided for @accountSetupSuccessful127.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful127;

  /// No description provided for @yourAccountHasBeenCreated127.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated127;

  /// No description provided for @accountSetupSuccessful128.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful128;

  /// No description provided for @yourAccountHasBeenCreated128.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated128;

  /// No description provided for @accountSetupSuccessful129.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful129;

  /// No description provided for @yourAccountHasBeenCreated129.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated129;

  /// No description provided for @accountSetupSuccessful130.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful130;

  /// No description provided for @yourAccountHasBeenCreated130.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated130;

  /// No description provided for @accountSetupSuccessful131.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful131;

  /// No description provided for @yourAccountHasBeenCreated131.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated131;

  /// No description provided for @accountSetupSuccessful132.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful132;

  /// No description provided for @yourAccountHasBeenCreated132.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated132;

  /// No description provided for @notification23.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification23;

  /// No description provided for @notification24.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification24;

  /// No description provided for @today23.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today23;

  /// No description provided for @s30SpecialDiscount133.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount133;

  /// No description provided for @specialPromotionOnlyValidToday133.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday133;

  /// No description provided for @s30SpecialDiscount134.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount134;

  /// No description provided for @specialPromotionOnlyValidToday134.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday134;

  /// No description provided for @s30SpecialDiscount135.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount135;

  /// No description provided for @specialPromotionOnlyValidToday135.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday135;

  /// No description provided for @s30SpecialDiscount136.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount136;

  /// No description provided for @specialPromotionOnlyValidToday136.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday136;

  /// No description provided for @s30SpecialDiscount137.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount137;

  /// No description provided for @specialPromotionOnlyValidToday137.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday137;

  /// No description provided for @s30SpecialDiscount138.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount138;

  /// No description provided for @specialPromotionOnlyValidToday138.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday138;

  /// No description provided for @yesterday23.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday23;

  /// No description provided for @topUpEwalletSuccessful133.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful133;

  /// No description provided for @youHaveToTopUpYourEwallet133.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet133;

  /// No description provided for @topUpEwalletSuccessful134.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful134;

  /// No description provided for @youHaveToTopUpYourEwallet134.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet134;

  /// No description provided for @topUpEwalletSuccessful135.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful135;

  /// No description provided for @youHaveToTopUpYourEwallet135.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet135;

  /// No description provided for @topUpEwalletSuccessful136.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful136;

  /// No description provided for @youHaveToTopUpYourEwallet136.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet136;

  /// No description provided for @topUpEwalletSuccessful137.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful137;

  /// No description provided for @youHaveToTopUpYourEwallet137.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet137;

  /// No description provided for @topUpEwalletSuccessful138.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful138;

  /// No description provided for @youHaveToTopUpYourEwallet138.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet138;

  /// No description provided for @newServicesAvailable133.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable133;

  /// No description provided for @nowYouCanTrackOrdersInRealTime133.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime133;

  /// No description provided for @newServicesAvailable134.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable134;

  /// No description provided for @nowYouCanTrackOrdersInRealTime134.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime134;

  /// No description provided for @newServicesAvailable135.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable135;

  /// No description provided for @nowYouCanTrackOrdersInRealTime135.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime135;

  /// No description provided for @newServicesAvailable136.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable136;

  /// No description provided for @nowYouCanTrackOrdersInRealTime136.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime136;

  /// No description provided for @newServicesAvailable137.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable137;

  /// No description provided for @nowYouCanTrackOrdersInRealTime137.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime137;

  /// No description provided for @newServicesAvailable138.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable138;

  /// No description provided for @nowYouCanTrackOrdersInRealTime138.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime138;

  /// No description provided for @december22202423.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202423;

  /// No description provided for @creditCardConnected133.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected133;

  /// No description provided for @creditCardHasBeenLinked133.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked133;

  /// No description provided for @creditCardConnected134.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected134;

  /// No description provided for @creditCardHasBeenLinked134.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked134;

  /// No description provided for @creditCardConnected135.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected135;

  /// No description provided for @creditCardHasBeenLinked135.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked135;

  /// No description provided for @creditCardConnected136.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected136;

  /// No description provided for @creditCardHasBeenLinked136.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked136;

  /// No description provided for @creditCardConnected137.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected137;

  /// No description provided for @creditCardHasBeenLinked137.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked137;

  /// No description provided for @creditCardConnected138.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected138;

  /// No description provided for @creditCardHasBeenLinked138.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked138;

  /// No description provided for @accountSetupSuccessful133.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful133;

  /// No description provided for @yourAccountHasBeenCreated133.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated133;

  /// No description provided for @accountSetupSuccessful134.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful134;

  /// No description provided for @yourAccountHasBeenCreated134.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated134;

  /// No description provided for @accountSetupSuccessful135.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful135;

  /// No description provided for @yourAccountHasBeenCreated135.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated135;

  /// No description provided for @accountSetupSuccessful136.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful136;

  /// No description provided for @yourAccountHasBeenCreated136.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated136;

  /// No description provided for @accountSetupSuccessful137.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful137;

  /// No description provided for @yourAccountHasBeenCreated137.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated137;

  /// No description provided for @accountSetupSuccessful138.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful138;

  /// No description provided for @yourAccountHasBeenCreated138.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated138;

  /// No description provided for @today24.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today24;

  /// No description provided for @s30SpecialDiscount139.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount139;

  /// No description provided for @specialPromotionOnlyValidToday139.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday139;

  /// No description provided for @s30SpecialDiscount140.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount140;

  /// No description provided for @specialPromotionOnlyValidToday140.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday140;

  /// No description provided for @s30SpecialDiscount141.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount141;

  /// No description provided for @specialPromotionOnlyValidToday141.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday141;

  /// No description provided for @s30SpecialDiscount142.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount142;

  /// No description provided for @specialPromotionOnlyValidToday142.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday142;

  /// No description provided for @s30SpecialDiscount143.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount143;

  /// No description provided for @specialPromotionOnlyValidToday143.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday143;

  /// No description provided for @s30SpecialDiscount144.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount144;

  /// No description provided for @specialPromotionOnlyValidToday144.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday144;

  /// No description provided for @yesterday24.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday24;

  /// No description provided for @topUpEwalletSuccessful139.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful139;

  /// No description provided for @youHaveToTopUpYourEwallet139.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet139;

  /// No description provided for @topUpEwalletSuccessful140.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful140;

  /// No description provided for @youHaveToTopUpYourEwallet140.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet140;

  /// No description provided for @topUpEwalletSuccessful141.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful141;

  /// No description provided for @youHaveToTopUpYourEwallet141.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet141;

  /// No description provided for @topUpEwalletSuccessful142.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful142;

  /// No description provided for @youHaveToTopUpYourEwallet142.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet142;

  /// No description provided for @topUpEwalletSuccessful143.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful143;

  /// No description provided for @youHaveToTopUpYourEwallet143.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet143;

  /// No description provided for @topUpEwalletSuccessful144.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful144;

  /// No description provided for @youHaveToTopUpYourEwallet144.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet144;

  /// No description provided for @newServicesAvailable139.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable139;

  /// No description provided for @nowYouCanTrackOrdersInRealTime139.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime139;

  /// No description provided for @newServicesAvailable140.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable140;

  /// No description provided for @nowYouCanTrackOrdersInRealTime140.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime140;

  /// No description provided for @newServicesAvailable141.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable141;

  /// No description provided for @nowYouCanTrackOrdersInRealTime141.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime141;

  /// No description provided for @newServicesAvailable142.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable142;

  /// No description provided for @nowYouCanTrackOrdersInRealTime142.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime142;

  /// No description provided for @newServicesAvailable143.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable143;

  /// No description provided for @nowYouCanTrackOrdersInRealTime143.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime143;

  /// No description provided for @newServicesAvailable144.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable144;

  /// No description provided for @nowYouCanTrackOrdersInRealTime144.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime144;

  /// No description provided for @december22202424.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202424;

  /// No description provided for @creditCardConnected139.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected139;

  /// No description provided for @creditCardHasBeenLinked139.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked139;

  /// No description provided for @creditCardConnected140.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected140;

  /// No description provided for @creditCardHasBeenLinked140.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked140;

  /// No description provided for @creditCardConnected141.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected141;

  /// No description provided for @creditCardHasBeenLinked141.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked141;

  /// No description provided for @creditCardConnected142.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected142;

  /// No description provided for @creditCardHasBeenLinked142.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked142;

  /// No description provided for @creditCardConnected143.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected143;

  /// No description provided for @creditCardHasBeenLinked143.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked143;

  /// No description provided for @creditCardConnected144.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected144;

  /// No description provided for @creditCardHasBeenLinked144.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked144;

  /// No description provided for @accountSetupSuccessful139.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful139;

  /// No description provided for @yourAccountHasBeenCreated139.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated139;

  /// No description provided for @accountSetupSuccessful140.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful140;

  /// No description provided for @yourAccountHasBeenCreated140.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated140;

  /// No description provided for @accountSetupSuccessful141.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful141;

  /// No description provided for @yourAccountHasBeenCreated141.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated141;

  /// No description provided for @accountSetupSuccessful142.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful142;

  /// No description provided for @yourAccountHasBeenCreated142.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated142;

  /// No description provided for @accountSetupSuccessful143.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful143;

  /// No description provided for @yourAccountHasBeenCreated143.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated143;

  /// No description provided for @accountSetupSuccessful144.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful144;

  /// No description provided for @yourAccountHasBeenCreated144.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated144;

  /// No description provided for @notification25.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification25;

  /// No description provided for @notification26.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification26;

  /// No description provided for @today25.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today25;

  /// No description provided for @s30SpecialDiscount145.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount145;

  /// No description provided for @specialPromotionOnlyValidToday145.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday145;

  /// No description provided for @s30SpecialDiscount146.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount146;

  /// No description provided for @specialPromotionOnlyValidToday146.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday146;

  /// No description provided for @s30SpecialDiscount147.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount147;

  /// No description provided for @specialPromotionOnlyValidToday147.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday147;

  /// No description provided for @s30SpecialDiscount148.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount148;

  /// No description provided for @specialPromotionOnlyValidToday148.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday148;

  /// No description provided for @s30SpecialDiscount149.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount149;

  /// No description provided for @specialPromotionOnlyValidToday149.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday149;

  /// No description provided for @s30SpecialDiscount150.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount150;

  /// No description provided for @specialPromotionOnlyValidToday150.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday150;

  /// No description provided for @yesterday25.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday25;

  /// No description provided for @topUpEwalletSuccessful145.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful145;

  /// No description provided for @youHaveToTopUpYourEwallet145.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet145;

  /// No description provided for @topUpEwalletSuccessful146.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful146;

  /// No description provided for @youHaveToTopUpYourEwallet146.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet146;

  /// No description provided for @topUpEwalletSuccessful147.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful147;

  /// No description provided for @youHaveToTopUpYourEwallet147.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet147;

  /// No description provided for @topUpEwalletSuccessful148.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful148;

  /// No description provided for @youHaveToTopUpYourEwallet148.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet148;

  /// No description provided for @topUpEwalletSuccessful149.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful149;

  /// No description provided for @youHaveToTopUpYourEwallet149.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet149;

  /// No description provided for @topUpEwalletSuccessful150.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful150;

  /// No description provided for @youHaveToTopUpYourEwallet150.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet150;

  /// No description provided for @newServicesAvailable145.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable145;

  /// No description provided for @nowYouCanTrackOrdersInRealTime145.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime145;

  /// No description provided for @newServicesAvailable146.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable146;

  /// No description provided for @nowYouCanTrackOrdersInRealTime146.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime146;

  /// No description provided for @newServicesAvailable147.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable147;

  /// No description provided for @nowYouCanTrackOrdersInRealTime147.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime147;

  /// No description provided for @newServicesAvailable148.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable148;

  /// No description provided for @nowYouCanTrackOrdersInRealTime148.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime148;

  /// No description provided for @newServicesAvailable149.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable149;

  /// No description provided for @nowYouCanTrackOrdersInRealTime149.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime149;

  /// No description provided for @newServicesAvailable150.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable150;

  /// No description provided for @nowYouCanTrackOrdersInRealTime150.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime150;

  /// No description provided for @december22202425.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202425;

  /// No description provided for @creditCardConnected145.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected145;

  /// No description provided for @creditCardHasBeenLinked145.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked145;

  /// No description provided for @creditCardConnected146.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected146;

  /// No description provided for @creditCardHasBeenLinked146.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked146;

  /// No description provided for @creditCardConnected147.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected147;

  /// No description provided for @creditCardHasBeenLinked147.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked147;

  /// No description provided for @creditCardConnected148.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected148;

  /// No description provided for @creditCardHasBeenLinked148.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked148;

  /// No description provided for @creditCardConnected149.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected149;

  /// No description provided for @creditCardHasBeenLinked149.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked149;

  /// No description provided for @creditCardConnected150.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected150;

  /// No description provided for @creditCardHasBeenLinked150.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked150;

  /// No description provided for @accountSetupSuccessful145.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful145;

  /// No description provided for @yourAccountHasBeenCreated145.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated145;

  /// No description provided for @accountSetupSuccessful146.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful146;

  /// No description provided for @yourAccountHasBeenCreated146.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated146;

  /// No description provided for @accountSetupSuccessful147.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful147;

  /// No description provided for @yourAccountHasBeenCreated147.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated147;

  /// No description provided for @accountSetupSuccessful148.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful148;

  /// No description provided for @yourAccountHasBeenCreated148.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated148;

  /// No description provided for @accountSetupSuccessful149.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful149;

  /// No description provided for @yourAccountHasBeenCreated149.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated149;

  /// No description provided for @accountSetupSuccessful150.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful150;

  /// No description provided for @yourAccountHasBeenCreated150.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated150;

  /// No description provided for @today26.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today26;

  /// No description provided for @s30SpecialDiscount151.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount151;

  /// No description provided for @specialPromotionOnlyValidToday151.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday151;

  /// No description provided for @s30SpecialDiscount152.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount152;

  /// No description provided for @specialPromotionOnlyValidToday152.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday152;

  /// No description provided for @s30SpecialDiscount153.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount153;

  /// No description provided for @specialPromotionOnlyValidToday153.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday153;

  /// No description provided for @s30SpecialDiscount154.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount154;

  /// No description provided for @specialPromotionOnlyValidToday154.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday154;

  /// No description provided for @s30SpecialDiscount155.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount155;

  /// No description provided for @specialPromotionOnlyValidToday155.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday155;

  /// No description provided for @s30SpecialDiscount156.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount156;

  /// No description provided for @specialPromotionOnlyValidToday156.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday156;

  /// No description provided for @yesterday26.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday26;

  /// No description provided for @topUpEwalletSuccessful151.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful151;

  /// No description provided for @youHaveToTopUpYourEwallet151.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet151;

  /// No description provided for @topUpEwalletSuccessful152.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful152;

  /// No description provided for @youHaveToTopUpYourEwallet152.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet152;

  /// No description provided for @topUpEwalletSuccessful153.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful153;

  /// No description provided for @youHaveToTopUpYourEwallet153.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet153;

  /// No description provided for @topUpEwalletSuccessful154.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful154;

  /// No description provided for @youHaveToTopUpYourEwallet154.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet154;

  /// No description provided for @topUpEwalletSuccessful155.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful155;

  /// No description provided for @youHaveToTopUpYourEwallet155.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet155;

  /// No description provided for @topUpEwalletSuccessful156.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful156;

  /// No description provided for @youHaveToTopUpYourEwallet156.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet156;

  /// No description provided for @newServicesAvailable151.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable151;

  /// No description provided for @nowYouCanTrackOrdersInRealTime151.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime151;

  /// No description provided for @newServicesAvailable152.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable152;

  /// No description provided for @nowYouCanTrackOrdersInRealTime152.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime152;

  /// No description provided for @newServicesAvailable153.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable153;

  /// No description provided for @nowYouCanTrackOrdersInRealTime153.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime153;

  /// No description provided for @newServicesAvailable154.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable154;

  /// No description provided for @nowYouCanTrackOrdersInRealTime154.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime154;

  /// No description provided for @newServicesAvailable155.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable155;

  /// No description provided for @nowYouCanTrackOrdersInRealTime155.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime155;

  /// No description provided for @newServicesAvailable156.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable156;

  /// No description provided for @nowYouCanTrackOrdersInRealTime156.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime156;

  /// No description provided for @december22202426.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202426;

  /// No description provided for @creditCardConnected151.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected151;

  /// No description provided for @creditCardHasBeenLinked151.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked151;

  /// No description provided for @creditCardConnected152.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected152;

  /// No description provided for @creditCardHasBeenLinked152.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked152;

  /// No description provided for @creditCardConnected153.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected153;

  /// No description provided for @creditCardHasBeenLinked153.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked153;

  /// No description provided for @creditCardConnected154.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected154;

  /// No description provided for @creditCardHasBeenLinked154.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked154;

  /// No description provided for @creditCardConnected155.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected155;

  /// No description provided for @creditCardHasBeenLinked155.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked155;

  /// No description provided for @creditCardConnected156.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected156;

  /// No description provided for @creditCardHasBeenLinked156.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked156;

  /// No description provided for @accountSetupSuccessful151.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful151;

  /// No description provided for @yourAccountHasBeenCreated151.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated151;

  /// No description provided for @accountSetupSuccessful152.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful152;

  /// No description provided for @yourAccountHasBeenCreated152.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated152;

  /// No description provided for @accountSetupSuccessful153.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful153;

  /// No description provided for @yourAccountHasBeenCreated153.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated153;

  /// No description provided for @accountSetupSuccessful154.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful154;

  /// No description provided for @yourAccountHasBeenCreated154.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated154;

  /// No description provided for @accountSetupSuccessful155.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful155;

  /// No description provided for @yourAccountHasBeenCreated155.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated155;

  /// No description provided for @accountSetupSuccessful156.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful156;

  /// No description provided for @yourAccountHasBeenCreated156.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated156;

  /// No description provided for @notification27.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification27;

  /// No description provided for @notification28.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification28;

  /// No description provided for @today27.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today27;

  /// No description provided for @s30SpecialDiscount157.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount157;

  /// No description provided for @specialPromotionOnlyValidToday157.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday157;

  /// No description provided for @s30SpecialDiscount158.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount158;

  /// No description provided for @specialPromotionOnlyValidToday158.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday158;

  /// No description provided for @s30SpecialDiscount159.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount159;

  /// No description provided for @specialPromotionOnlyValidToday159.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday159;

  /// No description provided for @s30SpecialDiscount160.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount160;

  /// No description provided for @specialPromotionOnlyValidToday160.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday160;

  /// No description provided for @s30SpecialDiscount161.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount161;

  /// No description provided for @specialPromotionOnlyValidToday161.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday161;

  /// No description provided for @s30SpecialDiscount162.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount162;

  /// No description provided for @specialPromotionOnlyValidToday162.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday162;

  /// No description provided for @yesterday27.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday27;

  /// No description provided for @topUpEwalletSuccessful157.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful157;

  /// No description provided for @youHaveToTopUpYourEwallet157.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet157;

  /// No description provided for @topUpEwalletSuccessful158.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful158;

  /// No description provided for @youHaveToTopUpYourEwallet158.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet158;

  /// No description provided for @topUpEwalletSuccessful159.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful159;

  /// No description provided for @youHaveToTopUpYourEwallet159.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet159;

  /// No description provided for @topUpEwalletSuccessful160.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful160;

  /// No description provided for @youHaveToTopUpYourEwallet160.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet160;

  /// No description provided for @topUpEwalletSuccessful161.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful161;

  /// No description provided for @youHaveToTopUpYourEwallet161.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet161;

  /// No description provided for @topUpEwalletSuccessful162.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful162;

  /// No description provided for @youHaveToTopUpYourEwallet162.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet162;

  /// No description provided for @newServicesAvailable157.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable157;

  /// No description provided for @nowYouCanTrackOrdersInRealTime157.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime157;

  /// No description provided for @newServicesAvailable158.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable158;

  /// No description provided for @nowYouCanTrackOrdersInRealTime158.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime158;

  /// No description provided for @newServicesAvailable159.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable159;

  /// No description provided for @nowYouCanTrackOrdersInRealTime159.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime159;

  /// No description provided for @newServicesAvailable160.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable160;

  /// No description provided for @nowYouCanTrackOrdersInRealTime160.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime160;

  /// No description provided for @newServicesAvailable161.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable161;

  /// No description provided for @nowYouCanTrackOrdersInRealTime161.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime161;

  /// No description provided for @newServicesAvailable162.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable162;

  /// No description provided for @nowYouCanTrackOrdersInRealTime162.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime162;

  /// No description provided for @december22202427.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202427;

  /// No description provided for @creditCardConnected157.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected157;

  /// No description provided for @creditCardHasBeenLinked157.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked157;

  /// No description provided for @creditCardConnected158.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected158;

  /// No description provided for @creditCardHasBeenLinked158.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked158;

  /// No description provided for @creditCardConnected159.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected159;

  /// No description provided for @creditCardHasBeenLinked159.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked159;

  /// No description provided for @creditCardConnected160.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected160;

  /// No description provided for @creditCardHasBeenLinked160.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked160;

  /// No description provided for @creditCardConnected161.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected161;

  /// No description provided for @creditCardHasBeenLinked161.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked161;

  /// No description provided for @creditCardConnected162.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected162;

  /// No description provided for @creditCardHasBeenLinked162.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked162;

  /// No description provided for @accountSetupSuccessful157.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful157;

  /// No description provided for @yourAccountHasBeenCreated157.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated157;

  /// No description provided for @accountSetupSuccessful158.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful158;

  /// No description provided for @yourAccountHasBeenCreated158.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated158;

  /// No description provided for @accountSetupSuccessful159.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful159;

  /// No description provided for @yourAccountHasBeenCreated159.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated159;

  /// No description provided for @accountSetupSuccessful160.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful160;

  /// No description provided for @yourAccountHasBeenCreated160.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated160;

  /// No description provided for @accountSetupSuccessful161.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful161;

  /// No description provided for @yourAccountHasBeenCreated161.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated161;

  /// No description provided for @accountSetupSuccessful162.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful162;

  /// No description provided for @yourAccountHasBeenCreated162.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated162;

  /// No description provided for @today28.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today28;

  /// No description provided for @s30SpecialDiscount163.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount163;

  /// No description provided for @specialPromotionOnlyValidToday163.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday163;

  /// No description provided for @s30SpecialDiscount164.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount164;

  /// No description provided for @specialPromotionOnlyValidToday164.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday164;

  /// No description provided for @s30SpecialDiscount165.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount165;

  /// No description provided for @specialPromotionOnlyValidToday165.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday165;

  /// No description provided for @s30SpecialDiscount166.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount166;

  /// No description provided for @specialPromotionOnlyValidToday166.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday166;

  /// No description provided for @s30SpecialDiscount167.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount167;

  /// No description provided for @specialPromotionOnlyValidToday167.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday167;

  /// No description provided for @s30SpecialDiscount168.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount168;

  /// No description provided for @specialPromotionOnlyValidToday168.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday168;

  /// No description provided for @yesterday28.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday28;

  /// No description provided for @topUpEwalletSuccessful163.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful163;

  /// No description provided for @youHaveToTopUpYourEwallet163.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet163;

  /// No description provided for @topUpEwalletSuccessful164.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful164;

  /// No description provided for @youHaveToTopUpYourEwallet164.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet164;

  /// No description provided for @topUpEwalletSuccessful165.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful165;

  /// No description provided for @youHaveToTopUpYourEwallet165.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet165;

  /// No description provided for @topUpEwalletSuccessful166.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful166;

  /// No description provided for @youHaveToTopUpYourEwallet166.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet166;

  /// No description provided for @topUpEwalletSuccessful167.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful167;

  /// No description provided for @youHaveToTopUpYourEwallet167.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet167;

  /// No description provided for @topUpEwalletSuccessful168.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful168;

  /// No description provided for @youHaveToTopUpYourEwallet168.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet168;

  /// No description provided for @newServicesAvailable163.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable163;

  /// No description provided for @nowYouCanTrackOrdersInRealTime163.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime163;

  /// No description provided for @newServicesAvailable164.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable164;

  /// No description provided for @nowYouCanTrackOrdersInRealTime164.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime164;

  /// No description provided for @newServicesAvailable165.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable165;

  /// No description provided for @nowYouCanTrackOrdersInRealTime165.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime165;

  /// No description provided for @newServicesAvailable166.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable166;

  /// No description provided for @nowYouCanTrackOrdersInRealTime166.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime166;

  /// No description provided for @newServicesAvailable167.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable167;

  /// No description provided for @nowYouCanTrackOrdersInRealTime167.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime167;

  /// No description provided for @newServicesAvailable168.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable168;

  /// No description provided for @nowYouCanTrackOrdersInRealTime168.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime168;

  /// No description provided for @december22202428.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202428;

  /// No description provided for @creditCardConnected163.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected163;

  /// No description provided for @creditCardHasBeenLinked163.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked163;

  /// No description provided for @creditCardConnected164.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected164;

  /// No description provided for @creditCardHasBeenLinked164.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked164;

  /// No description provided for @creditCardConnected165.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected165;

  /// No description provided for @creditCardHasBeenLinked165.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked165;

  /// No description provided for @creditCardConnected166.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected166;

  /// No description provided for @creditCardHasBeenLinked166.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked166;

  /// No description provided for @creditCardConnected167.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected167;

  /// No description provided for @creditCardHasBeenLinked167.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked167;

  /// No description provided for @creditCardConnected168.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected168;

  /// No description provided for @creditCardHasBeenLinked168.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked168;

  /// No description provided for @accountSetupSuccessful163.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful163;

  /// No description provided for @yourAccountHasBeenCreated163.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated163;

  /// No description provided for @accountSetupSuccessful164.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful164;

  /// No description provided for @yourAccountHasBeenCreated164.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated164;

  /// No description provided for @accountSetupSuccessful165.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful165;

  /// No description provided for @yourAccountHasBeenCreated165.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated165;

  /// No description provided for @accountSetupSuccessful166.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful166;

  /// No description provided for @yourAccountHasBeenCreated166.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated166;

  /// No description provided for @accountSetupSuccessful167.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful167;

  /// No description provided for @yourAccountHasBeenCreated167.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated167;

  /// No description provided for @accountSetupSuccessful168.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful168;

  /// No description provided for @yourAccountHasBeenCreated168.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated168;

  /// No description provided for @notification29.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification29;

  /// No description provided for @notification30.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification30;

  /// No description provided for @today29.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today29;

  /// No description provided for @s30SpecialDiscount169.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount169;

  /// No description provided for @specialPromotionOnlyValidToday169.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday169;

  /// No description provided for @s30SpecialDiscount170.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount170;

  /// No description provided for @specialPromotionOnlyValidToday170.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday170;

  /// No description provided for @s30SpecialDiscount171.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount171;

  /// No description provided for @specialPromotionOnlyValidToday171.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday171;

  /// No description provided for @s30SpecialDiscount172.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount172;

  /// No description provided for @specialPromotionOnlyValidToday172.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday172;

  /// No description provided for @s30SpecialDiscount173.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount173;

  /// No description provided for @specialPromotionOnlyValidToday173.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday173;

  /// No description provided for @s30SpecialDiscount174.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount174;

  /// No description provided for @specialPromotionOnlyValidToday174.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday174;

  /// No description provided for @yesterday29.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday29;

  /// No description provided for @topUpEwalletSuccessful169.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful169;

  /// No description provided for @youHaveToTopUpYourEwallet169.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet169;

  /// No description provided for @topUpEwalletSuccessful170.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful170;

  /// No description provided for @youHaveToTopUpYourEwallet170.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet170;

  /// No description provided for @topUpEwalletSuccessful171.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful171;

  /// No description provided for @youHaveToTopUpYourEwallet171.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet171;

  /// No description provided for @topUpEwalletSuccessful172.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful172;

  /// No description provided for @youHaveToTopUpYourEwallet172.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet172;

  /// No description provided for @topUpEwalletSuccessful173.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful173;

  /// No description provided for @youHaveToTopUpYourEwallet173.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet173;

  /// No description provided for @topUpEwalletSuccessful174.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful174;

  /// No description provided for @youHaveToTopUpYourEwallet174.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet174;

  /// No description provided for @newServicesAvailable169.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable169;

  /// No description provided for @nowYouCanTrackOrdersInRealTime169.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime169;

  /// No description provided for @newServicesAvailable170.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable170;

  /// No description provided for @nowYouCanTrackOrdersInRealTime170.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime170;

  /// No description provided for @newServicesAvailable171.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable171;

  /// No description provided for @nowYouCanTrackOrdersInRealTime171.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime171;

  /// No description provided for @newServicesAvailable172.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable172;

  /// No description provided for @nowYouCanTrackOrdersInRealTime172.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime172;

  /// No description provided for @newServicesAvailable173.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable173;

  /// No description provided for @nowYouCanTrackOrdersInRealTime173.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime173;

  /// No description provided for @newServicesAvailable174.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable174;

  /// No description provided for @nowYouCanTrackOrdersInRealTime174.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime174;

  /// No description provided for @december22202429.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202429;

  /// No description provided for @creditCardConnected169.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected169;

  /// No description provided for @creditCardHasBeenLinked169.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked169;

  /// No description provided for @creditCardConnected170.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected170;

  /// No description provided for @creditCardHasBeenLinked170.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked170;

  /// No description provided for @creditCardConnected171.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected171;

  /// No description provided for @creditCardHasBeenLinked171.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked171;

  /// No description provided for @creditCardConnected172.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected172;

  /// No description provided for @creditCardHasBeenLinked172.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked172;

  /// No description provided for @creditCardConnected173.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected173;

  /// No description provided for @creditCardHasBeenLinked173.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked173;

  /// No description provided for @creditCardConnected174.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected174;

  /// No description provided for @creditCardHasBeenLinked174.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked174;

  /// No description provided for @accountSetupSuccessful169.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful169;

  /// No description provided for @yourAccountHasBeenCreated169.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated169;

  /// No description provided for @accountSetupSuccessful170.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful170;

  /// No description provided for @yourAccountHasBeenCreated170.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated170;

  /// No description provided for @accountSetupSuccessful171.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful171;

  /// No description provided for @yourAccountHasBeenCreated171.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated171;

  /// No description provided for @accountSetupSuccessful172.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful172;

  /// No description provided for @yourAccountHasBeenCreated172.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated172;

  /// No description provided for @accountSetupSuccessful173.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful173;

  /// No description provided for @yourAccountHasBeenCreated173.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated173;

  /// No description provided for @accountSetupSuccessful174.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful174;

  /// No description provided for @yourAccountHasBeenCreated174.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated174;

  /// No description provided for @today30.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today30;

  /// No description provided for @s30SpecialDiscount175.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount175;

  /// No description provided for @specialPromotionOnlyValidToday175.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday175;

  /// No description provided for @s30SpecialDiscount176.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount176;

  /// No description provided for @specialPromotionOnlyValidToday176.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday176;

  /// No description provided for @s30SpecialDiscount177.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount177;

  /// No description provided for @specialPromotionOnlyValidToday177.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday177;

  /// No description provided for @s30SpecialDiscount178.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount178;

  /// No description provided for @specialPromotionOnlyValidToday178.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday178;

  /// No description provided for @s30SpecialDiscount179.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount179;

  /// No description provided for @specialPromotionOnlyValidToday179.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday179;

  /// No description provided for @s30SpecialDiscount180.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount180;

  /// No description provided for @specialPromotionOnlyValidToday180.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday180;

  /// No description provided for @yesterday30.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday30;

  /// No description provided for @topUpEwalletSuccessful175.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful175;

  /// No description provided for @youHaveToTopUpYourEwallet175.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet175;

  /// No description provided for @topUpEwalletSuccessful176.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful176;

  /// No description provided for @youHaveToTopUpYourEwallet176.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet176;

  /// No description provided for @topUpEwalletSuccessful177.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful177;

  /// No description provided for @youHaveToTopUpYourEwallet177.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet177;

  /// No description provided for @topUpEwalletSuccessful178.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful178;

  /// No description provided for @youHaveToTopUpYourEwallet178.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet178;

  /// No description provided for @topUpEwalletSuccessful179.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful179;

  /// No description provided for @youHaveToTopUpYourEwallet179.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet179;

  /// No description provided for @topUpEwalletSuccessful180.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful180;

  /// No description provided for @youHaveToTopUpYourEwallet180.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet180;

  /// No description provided for @newServicesAvailable175.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable175;

  /// No description provided for @nowYouCanTrackOrdersInRealTime175.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime175;

  /// No description provided for @newServicesAvailable176.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable176;

  /// No description provided for @nowYouCanTrackOrdersInRealTime176.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime176;

  /// No description provided for @newServicesAvailable177.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable177;

  /// No description provided for @nowYouCanTrackOrdersInRealTime177.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime177;

  /// No description provided for @newServicesAvailable178.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable178;

  /// No description provided for @nowYouCanTrackOrdersInRealTime178.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime178;

  /// No description provided for @newServicesAvailable179.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable179;

  /// No description provided for @nowYouCanTrackOrdersInRealTime179.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime179;

  /// No description provided for @newServicesAvailable180.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable180;

  /// No description provided for @nowYouCanTrackOrdersInRealTime180.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime180;

  /// No description provided for @december22202430.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202430;

  /// No description provided for @creditCardConnected175.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected175;

  /// No description provided for @creditCardHasBeenLinked175.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked175;

  /// No description provided for @creditCardConnected176.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected176;

  /// No description provided for @creditCardHasBeenLinked176.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked176;

  /// No description provided for @creditCardConnected177.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected177;

  /// No description provided for @creditCardHasBeenLinked177.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked177;

  /// No description provided for @creditCardConnected178.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected178;

  /// No description provided for @creditCardHasBeenLinked178.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked178;

  /// No description provided for @creditCardConnected179.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected179;

  /// No description provided for @creditCardHasBeenLinked179.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked179;

  /// No description provided for @creditCardConnected180.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected180;

  /// No description provided for @creditCardHasBeenLinked180.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked180;

  /// No description provided for @accountSetupSuccessful175.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful175;

  /// No description provided for @yourAccountHasBeenCreated175.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated175;

  /// No description provided for @accountSetupSuccessful176.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful176;

  /// No description provided for @yourAccountHasBeenCreated176.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated176;

  /// No description provided for @accountSetupSuccessful177.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful177;

  /// No description provided for @yourAccountHasBeenCreated177.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated177;

  /// No description provided for @accountSetupSuccessful178.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful178;

  /// No description provided for @yourAccountHasBeenCreated178.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated178;

  /// No description provided for @accountSetupSuccessful179.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful179;

  /// No description provided for @yourAccountHasBeenCreated179.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated179;

  /// No description provided for @accountSetupSuccessful180.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful180;

  /// No description provided for @yourAccountHasBeenCreated180.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated180;

  /// No description provided for @notification31.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification31;

  /// No description provided for @notification32.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification32;

  /// No description provided for @today31.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today31;

  /// No description provided for @s30SpecialDiscount181.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount181;

  /// No description provided for @specialPromotionOnlyValidToday181.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday181;

  /// No description provided for @s30SpecialDiscount182.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount182;

  /// No description provided for @specialPromotionOnlyValidToday182.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday182;

  /// No description provided for @s30SpecialDiscount183.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount183;

  /// No description provided for @specialPromotionOnlyValidToday183.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday183;

  /// No description provided for @s30SpecialDiscount184.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount184;

  /// No description provided for @specialPromotionOnlyValidToday184.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday184;

  /// No description provided for @s30SpecialDiscount185.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount185;

  /// No description provided for @specialPromotionOnlyValidToday185.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday185;

  /// No description provided for @s30SpecialDiscount186.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount186;

  /// No description provided for @specialPromotionOnlyValidToday186.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday186;

  /// No description provided for @yesterday31.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday31;

  /// No description provided for @topUpEwalletSuccessful181.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful181;

  /// No description provided for @youHaveToTopUpYourEwallet181.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet181;

  /// No description provided for @topUpEwalletSuccessful182.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful182;

  /// No description provided for @youHaveToTopUpYourEwallet182.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet182;

  /// No description provided for @topUpEwalletSuccessful183.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful183;

  /// No description provided for @youHaveToTopUpYourEwallet183.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet183;

  /// No description provided for @topUpEwalletSuccessful184.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful184;

  /// No description provided for @youHaveToTopUpYourEwallet184.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet184;

  /// No description provided for @topUpEwalletSuccessful185.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful185;

  /// No description provided for @youHaveToTopUpYourEwallet185.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet185;

  /// No description provided for @topUpEwalletSuccessful186.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful186;

  /// No description provided for @youHaveToTopUpYourEwallet186.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet186;

  /// No description provided for @newServicesAvailable181.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable181;

  /// No description provided for @nowYouCanTrackOrdersInRealTime181.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime181;

  /// No description provided for @newServicesAvailable182.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable182;

  /// No description provided for @nowYouCanTrackOrdersInRealTime182.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime182;

  /// No description provided for @newServicesAvailable183.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable183;

  /// No description provided for @nowYouCanTrackOrdersInRealTime183.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime183;

  /// No description provided for @newServicesAvailable184.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable184;

  /// No description provided for @nowYouCanTrackOrdersInRealTime184.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime184;

  /// No description provided for @newServicesAvailable185.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable185;

  /// No description provided for @nowYouCanTrackOrdersInRealTime185.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime185;

  /// No description provided for @newServicesAvailable186.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable186;

  /// No description provided for @nowYouCanTrackOrdersInRealTime186.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime186;

  /// No description provided for @december22202431.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202431;

  /// No description provided for @creditCardConnected181.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected181;

  /// No description provided for @creditCardHasBeenLinked181.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked181;

  /// No description provided for @creditCardConnected182.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected182;

  /// No description provided for @creditCardHasBeenLinked182.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked182;

  /// No description provided for @creditCardConnected183.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected183;

  /// No description provided for @creditCardHasBeenLinked183.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked183;

  /// No description provided for @creditCardConnected184.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected184;

  /// No description provided for @creditCardHasBeenLinked184.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked184;

  /// No description provided for @creditCardConnected185.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected185;

  /// No description provided for @creditCardHasBeenLinked185.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked185;

  /// No description provided for @creditCardConnected186.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected186;

  /// No description provided for @creditCardHasBeenLinked186.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked186;

  /// No description provided for @accountSetupSuccessful181.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful181;

  /// No description provided for @yourAccountHasBeenCreated181.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated181;

  /// No description provided for @accountSetupSuccessful182.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful182;

  /// No description provided for @yourAccountHasBeenCreated182.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated182;

  /// No description provided for @accountSetupSuccessful183.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful183;

  /// No description provided for @yourAccountHasBeenCreated183.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated183;

  /// No description provided for @accountSetupSuccessful184.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful184;

  /// No description provided for @yourAccountHasBeenCreated184.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated184;

  /// No description provided for @accountSetupSuccessful185.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful185;

  /// No description provided for @yourAccountHasBeenCreated185.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated185;

  /// No description provided for @accountSetupSuccessful186.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful186;

  /// No description provided for @yourAccountHasBeenCreated186.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated186;

  /// No description provided for @today32.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today32;

  /// No description provided for @s30SpecialDiscount187.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount187;

  /// No description provided for @specialPromotionOnlyValidToday187.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday187;

  /// No description provided for @s30SpecialDiscount188.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount188;

  /// No description provided for @specialPromotionOnlyValidToday188.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday188;

  /// No description provided for @s30SpecialDiscount189.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount189;

  /// No description provided for @specialPromotionOnlyValidToday189.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday189;

  /// No description provided for @s30SpecialDiscount190.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount190;

  /// No description provided for @specialPromotionOnlyValidToday190.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday190;

  /// No description provided for @s30SpecialDiscount191.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount191;

  /// No description provided for @specialPromotionOnlyValidToday191.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday191;

  /// No description provided for @s30SpecialDiscount192.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount192;

  /// No description provided for @specialPromotionOnlyValidToday192.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday192;

  /// No description provided for @yesterday32.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday32;

  /// No description provided for @topUpEwalletSuccessful187.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful187;

  /// No description provided for @youHaveToTopUpYourEwallet187.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet187;

  /// No description provided for @topUpEwalletSuccessful188.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful188;

  /// No description provided for @youHaveToTopUpYourEwallet188.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet188;

  /// No description provided for @topUpEwalletSuccessful189.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful189;

  /// No description provided for @youHaveToTopUpYourEwallet189.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet189;

  /// No description provided for @topUpEwalletSuccessful190.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful190;

  /// No description provided for @youHaveToTopUpYourEwallet190.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet190;

  /// No description provided for @topUpEwalletSuccessful191.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful191;

  /// No description provided for @youHaveToTopUpYourEwallet191.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet191;

  /// No description provided for @topUpEwalletSuccessful192.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful192;

  /// No description provided for @youHaveToTopUpYourEwallet192.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet192;

  /// No description provided for @newServicesAvailable187.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable187;

  /// No description provided for @nowYouCanTrackOrdersInRealTime187.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime187;

  /// No description provided for @newServicesAvailable188.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable188;

  /// No description provided for @nowYouCanTrackOrdersInRealTime188.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime188;

  /// No description provided for @newServicesAvailable189.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable189;

  /// No description provided for @nowYouCanTrackOrdersInRealTime189.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime189;

  /// No description provided for @newServicesAvailable190.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable190;

  /// No description provided for @nowYouCanTrackOrdersInRealTime190.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime190;

  /// No description provided for @newServicesAvailable191.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable191;

  /// No description provided for @nowYouCanTrackOrdersInRealTime191.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime191;

  /// No description provided for @newServicesAvailable192.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable192;

  /// No description provided for @nowYouCanTrackOrdersInRealTime192.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime192;

  /// No description provided for @december22202432.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202432;

  /// No description provided for @creditCardConnected187.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected187;

  /// No description provided for @creditCardHasBeenLinked187.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked187;

  /// No description provided for @creditCardConnected188.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected188;

  /// No description provided for @creditCardHasBeenLinked188.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked188;

  /// No description provided for @creditCardConnected189.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected189;

  /// No description provided for @creditCardHasBeenLinked189.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked189;

  /// No description provided for @creditCardConnected190.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected190;

  /// No description provided for @creditCardHasBeenLinked190.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked190;

  /// No description provided for @creditCardConnected191.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected191;

  /// No description provided for @creditCardHasBeenLinked191.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked191;

  /// No description provided for @creditCardConnected192.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected192;

  /// No description provided for @creditCardHasBeenLinked192.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked192;

  /// No description provided for @accountSetupSuccessful187.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful187;

  /// No description provided for @yourAccountHasBeenCreated187.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated187;

  /// No description provided for @accountSetupSuccessful188.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful188;

  /// No description provided for @yourAccountHasBeenCreated188.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated188;

  /// No description provided for @accountSetupSuccessful189.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful189;

  /// No description provided for @yourAccountHasBeenCreated189.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated189;

  /// No description provided for @accountSetupSuccessful190.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful190;

  /// No description provided for @yourAccountHasBeenCreated190.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated190;

  /// No description provided for @accountSetupSuccessful191.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful191;

  /// No description provided for @yourAccountHasBeenCreated191.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated191;

  /// No description provided for @accountSetupSuccessful192.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful192;

  /// No description provided for @yourAccountHasBeenCreated192.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated192;

  /// No description provided for @notification33.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification33;

  /// No description provided for @notification34.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification34;

  /// No description provided for @today33.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today33;

  /// No description provided for @s30SpecialDiscount193.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount193;

  /// No description provided for @specialPromotionOnlyValidToday193.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday193;

  /// No description provided for @s30SpecialDiscount194.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount194;

  /// No description provided for @specialPromotionOnlyValidToday194.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday194;

  /// No description provided for @s30SpecialDiscount195.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount195;

  /// No description provided for @specialPromotionOnlyValidToday195.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday195;

  /// No description provided for @s30SpecialDiscount196.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount196;

  /// No description provided for @specialPromotionOnlyValidToday196.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday196;

  /// No description provided for @s30SpecialDiscount197.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount197;

  /// No description provided for @specialPromotionOnlyValidToday197.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday197;

  /// No description provided for @s30SpecialDiscount198.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount198;

  /// No description provided for @specialPromotionOnlyValidToday198.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday198;

  /// No description provided for @yesterday33.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday33;

  /// No description provided for @topUpEwalletSuccessful193.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful193;

  /// No description provided for @youHaveToTopUpYourEwallet193.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet193;

  /// No description provided for @topUpEwalletSuccessful194.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful194;

  /// No description provided for @youHaveToTopUpYourEwallet194.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet194;

  /// No description provided for @topUpEwalletSuccessful195.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful195;

  /// No description provided for @youHaveToTopUpYourEwallet195.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet195;

  /// No description provided for @topUpEwalletSuccessful196.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful196;

  /// No description provided for @youHaveToTopUpYourEwallet196.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet196;

  /// No description provided for @topUpEwalletSuccessful197.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful197;

  /// No description provided for @youHaveToTopUpYourEwallet197.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet197;

  /// No description provided for @topUpEwalletSuccessful198.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful198;

  /// No description provided for @youHaveToTopUpYourEwallet198.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet198;

  /// No description provided for @newServicesAvailable193.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable193;

  /// No description provided for @nowYouCanTrackOrdersInRealTime193.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime193;

  /// No description provided for @newServicesAvailable194.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable194;

  /// No description provided for @nowYouCanTrackOrdersInRealTime194.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime194;

  /// No description provided for @newServicesAvailable195.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable195;

  /// No description provided for @nowYouCanTrackOrdersInRealTime195.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime195;

  /// No description provided for @newServicesAvailable196.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable196;

  /// No description provided for @nowYouCanTrackOrdersInRealTime196.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime196;

  /// No description provided for @newServicesAvailable197.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable197;

  /// No description provided for @nowYouCanTrackOrdersInRealTime197.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime197;

  /// No description provided for @newServicesAvailable198.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable198;

  /// No description provided for @nowYouCanTrackOrdersInRealTime198.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime198;

  /// No description provided for @december22202433.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202433;

  /// No description provided for @creditCardConnected193.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected193;

  /// No description provided for @creditCardHasBeenLinked193.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked193;

  /// No description provided for @creditCardConnected194.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected194;

  /// No description provided for @creditCardHasBeenLinked194.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked194;

  /// No description provided for @creditCardConnected195.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected195;

  /// No description provided for @creditCardHasBeenLinked195.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked195;

  /// No description provided for @creditCardConnected196.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected196;

  /// No description provided for @creditCardHasBeenLinked196.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked196;

  /// No description provided for @creditCardConnected197.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected197;

  /// No description provided for @creditCardHasBeenLinked197.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked197;

  /// No description provided for @creditCardConnected198.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected198;

  /// No description provided for @creditCardHasBeenLinked198.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked198;

  /// No description provided for @accountSetupSuccessful193.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful193;

  /// No description provided for @yourAccountHasBeenCreated193.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated193;

  /// No description provided for @accountSetupSuccessful194.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful194;

  /// No description provided for @yourAccountHasBeenCreated194.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated194;

  /// No description provided for @accountSetupSuccessful195.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful195;

  /// No description provided for @yourAccountHasBeenCreated195.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated195;

  /// No description provided for @accountSetupSuccessful196.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful196;

  /// No description provided for @yourAccountHasBeenCreated196.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated196;

  /// No description provided for @accountSetupSuccessful197.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful197;

  /// No description provided for @yourAccountHasBeenCreated197.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated197;

  /// No description provided for @accountSetupSuccessful198.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful198;

  /// No description provided for @yourAccountHasBeenCreated198.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated198;

  /// No description provided for @today34.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today34;

  /// No description provided for @s30SpecialDiscount199.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount199;

  /// No description provided for @specialPromotionOnlyValidToday199.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday199;

  /// No description provided for @s30SpecialDiscount200.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount200;

  /// No description provided for @specialPromotionOnlyValidToday200.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday200;

  /// No description provided for @s30SpecialDiscount201.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount201;

  /// No description provided for @specialPromotionOnlyValidToday201.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday201;

  /// No description provided for @s30SpecialDiscount202.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount202;

  /// No description provided for @specialPromotionOnlyValidToday202.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday202;

  /// No description provided for @s30SpecialDiscount203.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount203;

  /// No description provided for @specialPromotionOnlyValidToday203.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday203;

  /// No description provided for @s30SpecialDiscount204.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount204;

  /// No description provided for @specialPromotionOnlyValidToday204.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday204;

  /// No description provided for @yesterday34.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday34;

  /// No description provided for @topUpEwalletSuccessful199.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful199;

  /// No description provided for @youHaveToTopUpYourEwallet199.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet199;

  /// No description provided for @topUpEwalletSuccessful200.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful200;

  /// No description provided for @youHaveToTopUpYourEwallet200.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet200;

  /// No description provided for @topUpEwalletSuccessful201.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful201;

  /// No description provided for @youHaveToTopUpYourEwallet201.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet201;

  /// No description provided for @topUpEwalletSuccessful202.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful202;

  /// No description provided for @youHaveToTopUpYourEwallet202.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet202;

  /// No description provided for @topUpEwalletSuccessful203.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful203;

  /// No description provided for @youHaveToTopUpYourEwallet203.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet203;

  /// No description provided for @topUpEwalletSuccessful204.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful204;

  /// No description provided for @youHaveToTopUpYourEwallet204.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet204;

  /// No description provided for @newServicesAvailable199.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable199;

  /// No description provided for @nowYouCanTrackOrdersInRealTime199.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime199;

  /// No description provided for @newServicesAvailable200.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable200;

  /// No description provided for @nowYouCanTrackOrdersInRealTime200.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime200;

  /// No description provided for @newServicesAvailable201.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable201;

  /// No description provided for @nowYouCanTrackOrdersInRealTime201.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime201;

  /// No description provided for @newServicesAvailable202.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable202;

  /// No description provided for @nowYouCanTrackOrdersInRealTime202.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime202;

  /// No description provided for @newServicesAvailable203.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable203;

  /// No description provided for @nowYouCanTrackOrdersInRealTime203.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime203;

  /// No description provided for @newServicesAvailable204.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable204;

  /// No description provided for @nowYouCanTrackOrdersInRealTime204.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime204;

  /// No description provided for @december22202434.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202434;

  /// No description provided for @creditCardConnected199.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected199;

  /// No description provided for @creditCardHasBeenLinked199.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked199;

  /// No description provided for @creditCardConnected200.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected200;

  /// No description provided for @creditCardHasBeenLinked200.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked200;

  /// No description provided for @creditCardConnected201.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected201;

  /// No description provided for @creditCardHasBeenLinked201.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked201;

  /// No description provided for @creditCardConnected202.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected202;

  /// No description provided for @creditCardHasBeenLinked202.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked202;

  /// No description provided for @creditCardConnected203.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected203;

  /// No description provided for @creditCardHasBeenLinked203.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked203;

  /// No description provided for @creditCardConnected204.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected204;

  /// No description provided for @creditCardHasBeenLinked204.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked204;

  /// No description provided for @accountSetupSuccessful199.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful199;

  /// No description provided for @yourAccountHasBeenCreated199.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated199;

  /// No description provided for @accountSetupSuccessful200.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful200;

  /// No description provided for @yourAccountHasBeenCreated200.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated200;

  /// No description provided for @accountSetupSuccessful201.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful201;

  /// No description provided for @yourAccountHasBeenCreated201.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated201;

  /// No description provided for @accountSetupSuccessful202.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful202;

  /// No description provided for @yourAccountHasBeenCreated202.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated202;

  /// No description provided for @accountSetupSuccessful203.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful203;

  /// No description provided for @yourAccountHasBeenCreated203.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated203;

  /// No description provided for @accountSetupSuccessful204.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful204;

  /// No description provided for @yourAccountHasBeenCreated204.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated204;

  /// No description provided for @notification35.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification35;

  /// No description provided for @notification36.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification36;

  /// No description provided for @today35.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today35;

  /// No description provided for @s30SpecialDiscount205.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount205;

  /// No description provided for @specialPromotionOnlyValidToday205.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday205;

  /// No description provided for @s30SpecialDiscount206.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount206;

  /// No description provided for @specialPromotionOnlyValidToday206.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday206;

  /// No description provided for @s30SpecialDiscount207.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount207;

  /// No description provided for @specialPromotionOnlyValidToday207.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday207;

  /// No description provided for @s30SpecialDiscount208.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount208;

  /// No description provided for @specialPromotionOnlyValidToday208.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday208;

  /// No description provided for @s30SpecialDiscount209.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount209;

  /// No description provided for @specialPromotionOnlyValidToday209.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday209;

  /// No description provided for @s30SpecialDiscount210.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount210;

  /// No description provided for @specialPromotionOnlyValidToday210.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday210;

  /// No description provided for @yesterday35.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday35;

  /// No description provided for @topUpEwalletSuccessful205.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful205;

  /// No description provided for @youHaveToTopUpYourEwallet205.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet205;

  /// No description provided for @topUpEwalletSuccessful206.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful206;

  /// No description provided for @youHaveToTopUpYourEwallet206.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet206;

  /// No description provided for @topUpEwalletSuccessful207.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful207;

  /// No description provided for @youHaveToTopUpYourEwallet207.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet207;

  /// No description provided for @topUpEwalletSuccessful208.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful208;

  /// No description provided for @youHaveToTopUpYourEwallet208.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet208;

  /// No description provided for @topUpEwalletSuccessful209.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful209;

  /// No description provided for @youHaveToTopUpYourEwallet209.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet209;

  /// No description provided for @topUpEwalletSuccessful210.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful210;

  /// No description provided for @youHaveToTopUpYourEwallet210.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet210;

  /// No description provided for @newServicesAvailable205.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable205;

  /// No description provided for @nowYouCanTrackOrdersInRealTime205.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime205;

  /// No description provided for @newServicesAvailable206.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable206;

  /// No description provided for @nowYouCanTrackOrdersInRealTime206.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime206;

  /// No description provided for @newServicesAvailable207.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable207;

  /// No description provided for @nowYouCanTrackOrdersInRealTime207.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime207;

  /// No description provided for @newServicesAvailable208.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable208;

  /// No description provided for @nowYouCanTrackOrdersInRealTime208.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime208;

  /// No description provided for @newServicesAvailable209.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable209;

  /// No description provided for @nowYouCanTrackOrdersInRealTime209.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime209;

  /// No description provided for @newServicesAvailable210.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable210;

  /// No description provided for @nowYouCanTrackOrdersInRealTime210.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime210;

  /// No description provided for @december22202435.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202435;

  /// No description provided for @creditCardConnected205.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected205;

  /// No description provided for @creditCardHasBeenLinked205.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked205;

  /// No description provided for @creditCardConnected206.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected206;

  /// No description provided for @creditCardHasBeenLinked206.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked206;

  /// No description provided for @creditCardConnected207.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected207;

  /// No description provided for @creditCardHasBeenLinked207.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked207;

  /// No description provided for @creditCardConnected208.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected208;

  /// No description provided for @creditCardHasBeenLinked208.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked208;

  /// No description provided for @creditCardConnected209.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected209;

  /// No description provided for @creditCardHasBeenLinked209.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked209;

  /// No description provided for @creditCardConnected210.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected210;

  /// No description provided for @creditCardHasBeenLinked210.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked210;

  /// No description provided for @accountSetupSuccessful205.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful205;

  /// No description provided for @yourAccountHasBeenCreated205.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated205;

  /// No description provided for @accountSetupSuccessful206.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful206;

  /// No description provided for @yourAccountHasBeenCreated206.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated206;

  /// No description provided for @accountSetupSuccessful207.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful207;

  /// No description provided for @yourAccountHasBeenCreated207.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated207;

  /// No description provided for @accountSetupSuccessful208.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful208;

  /// No description provided for @yourAccountHasBeenCreated208.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated208;

  /// No description provided for @accountSetupSuccessful209.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful209;

  /// No description provided for @yourAccountHasBeenCreated209.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated209;

  /// No description provided for @accountSetupSuccessful210.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful210;

  /// No description provided for @yourAccountHasBeenCreated210.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated210;

  /// No description provided for @today36.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today36;

  /// No description provided for @s30SpecialDiscount211.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount211;

  /// No description provided for @specialPromotionOnlyValidToday211.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday211;

  /// No description provided for @s30SpecialDiscount212.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount212;

  /// No description provided for @specialPromotionOnlyValidToday212.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday212;

  /// No description provided for @s30SpecialDiscount213.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount213;

  /// No description provided for @specialPromotionOnlyValidToday213.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday213;

  /// No description provided for @s30SpecialDiscount214.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount214;

  /// No description provided for @specialPromotionOnlyValidToday214.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday214;

  /// No description provided for @s30SpecialDiscount215.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount215;

  /// No description provided for @specialPromotionOnlyValidToday215.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday215;

  /// No description provided for @s30SpecialDiscount216.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount216;

  /// No description provided for @specialPromotionOnlyValidToday216.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday216;

  /// No description provided for @yesterday36.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday36;

  /// No description provided for @topUpEwalletSuccessful211.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful211;

  /// No description provided for @youHaveToTopUpYourEwallet211.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet211;

  /// No description provided for @topUpEwalletSuccessful212.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful212;

  /// No description provided for @youHaveToTopUpYourEwallet212.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet212;

  /// No description provided for @topUpEwalletSuccessful213.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful213;

  /// No description provided for @youHaveToTopUpYourEwallet213.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet213;

  /// No description provided for @topUpEwalletSuccessful214.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful214;

  /// No description provided for @youHaveToTopUpYourEwallet214.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet214;

  /// No description provided for @topUpEwalletSuccessful215.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful215;

  /// No description provided for @youHaveToTopUpYourEwallet215.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet215;

  /// No description provided for @topUpEwalletSuccessful216.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful216;

  /// No description provided for @youHaveToTopUpYourEwallet216.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet216;

  /// No description provided for @newServicesAvailable211.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable211;

  /// No description provided for @nowYouCanTrackOrdersInRealTime211.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime211;

  /// No description provided for @newServicesAvailable212.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable212;

  /// No description provided for @nowYouCanTrackOrdersInRealTime212.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime212;

  /// No description provided for @newServicesAvailable213.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable213;

  /// No description provided for @nowYouCanTrackOrdersInRealTime213.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime213;

  /// No description provided for @newServicesAvailable214.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable214;

  /// No description provided for @nowYouCanTrackOrdersInRealTime214.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime214;

  /// No description provided for @newServicesAvailable215.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable215;

  /// No description provided for @nowYouCanTrackOrdersInRealTime215.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime215;

  /// No description provided for @newServicesAvailable216.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable216;

  /// No description provided for @nowYouCanTrackOrdersInRealTime216.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime216;

  /// No description provided for @december22202436.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202436;

  /// No description provided for @creditCardConnected211.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected211;

  /// No description provided for @creditCardHasBeenLinked211.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked211;

  /// No description provided for @creditCardConnected212.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected212;

  /// No description provided for @creditCardHasBeenLinked212.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked212;

  /// No description provided for @creditCardConnected213.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected213;

  /// No description provided for @creditCardHasBeenLinked213.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked213;

  /// No description provided for @creditCardConnected214.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected214;

  /// No description provided for @creditCardHasBeenLinked214.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked214;

  /// No description provided for @creditCardConnected215.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected215;

  /// No description provided for @creditCardHasBeenLinked215.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked215;

  /// No description provided for @creditCardConnected216.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected216;

  /// No description provided for @creditCardHasBeenLinked216.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked216;

  /// No description provided for @accountSetupSuccessful211.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful211;

  /// No description provided for @yourAccountHasBeenCreated211.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated211;

  /// No description provided for @accountSetupSuccessful212.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful212;

  /// No description provided for @yourAccountHasBeenCreated212.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated212;

  /// No description provided for @accountSetupSuccessful213.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful213;

  /// No description provided for @yourAccountHasBeenCreated213.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated213;

  /// No description provided for @accountSetupSuccessful214.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful214;

  /// No description provided for @yourAccountHasBeenCreated214.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated214;

  /// No description provided for @accountSetupSuccessful215.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful215;

  /// No description provided for @yourAccountHasBeenCreated215.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated215;

  /// No description provided for @accountSetupSuccessful216.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful216;

  /// No description provided for @yourAccountHasBeenCreated216.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated216;

  /// No description provided for @notification37.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification37;

  /// No description provided for @notification38.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification38;

  /// No description provided for @today37.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today37;

  /// No description provided for @s30SpecialDiscount217.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount217;

  /// No description provided for @specialPromotionOnlyValidToday217.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday217;

  /// No description provided for @s30SpecialDiscount218.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount218;

  /// No description provided for @specialPromotionOnlyValidToday218.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday218;

  /// No description provided for @s30SpecialDiscount219.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount219;

  /// No description provided for @specialPromotionOnlyValidToday219.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday219;

  /// No description provided for @s30SpecialDiscount220.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount220;

  /// No description provided for @specialPromotionOnlyValidToday220.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday220;

  /// No description provided for @s30SpecialDiscount221.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount221;

  /// No description provided for @specialPromotionOnlyValidToday221.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday221;

  /// No description provided for @s30SpecialDiscount222.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount222;

  /// No description provided for @specialPromotionOnlyValidToday222.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday222;

  /// No description provided for @yesterday37.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday37;

  /// No description provided for @topUpEwalletSuccessful217.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful217;

  /// No description provided for @youHaveToTopUpYourEwallet217.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet217;

  /// No description provided for @topUpEwalletSuccessful218.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful218;

  /// No description provided for @youHaveToTopUpYourEwallet218.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet218;

  /// No description provided for @topUpEwalletSuccessful219.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful219;

  /// No description provided for @youHaveToTopUpYourEwallet219.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet219;

  /// No description provided for @topUpEwalletSuccessful220.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful220;

  /// No description provided for @youHaveToTopUpYourEwallet220.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet220;

  /// No description provided for @topUpEwalletSuccessful221.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful221;

  /// No description provided for @youHaveToTopUpYourEwallet221.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet221;

  /// No description provided for @topUpEwalletSuccessful222.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful222;

  /// No description provided for @youHaveToTopUpYourEwallet222.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet222;

  /// No description provided for @newServicesAvailable217.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable217;

  /// No description provided for @nowYouCanTrackOrdersInRealTime217.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime217;

  /// No description provided for @newServicesAvailable218.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable218;

  /// No description provided for @nowYouCanTrackOrdersInRealTime218.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime218;

  /// No description provided for @newServicesAvailable219.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable219;

  /// No description provided for @nowYouCanTrackOrdersInRealTime219.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime219;

  /// No description provided for @newServicesAvailable220.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable220;

  /// No description provided for @nowYouCanTrackOrdersInRealTime220.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime220;

  /// No description provided for @newServicesAvailable221.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable221;

  /// No description provided for @nowYouCanTrackOrdersInRealTime221.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime221;

  /// No description provided for @newServicesAvailable222.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable222;

  /// No description provided for @nowYouCanTrackOrdersInRealTime222.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime222;

  /// No description provided for @december22202437.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202437;

  /// No description provided for @creditCardConnected217.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected217;

  /// No description provided for @creditCardHasBeenLinked217.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked217;

  /// No description provided for @creditCardConnected218.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected218;

  /// No description provided for @creditCardHasBeenLinked218.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked218;

  /// No description provided for @creditCardConnected219.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected219;

  /// No description provided for @creditCardHasBeenLinked219.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked219;

  /// No description provided for @creditCardConnected220.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected220;

  /// No description provided for @creditCardHasBeenLinked220.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked220;

  /// No description provided for @creditCardConnected221.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected221;

  /// No description provided for @creditCardHasBeenLinked221.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked221;

  /// No description provided for @creditCardConnected222.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected222;

  /// No description provided for @creditCardHasBeenLinked222.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked222;

  /// No description provided for @accountSetupSuccessful217.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful217;

  /// No description provided for @yourAccountHasBeenCreated217.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated217;

  /// No description provided for @accountSetupSuccessful218.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful218;

  /// No description provided for @yourAccountHasBeenCreated218.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated218;

  /// No description provided for @accountSetupSuccessful219.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful219;

  /// No description provided for @yourAccountHasBeenCreated219.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated219;

  /// No description provided for @accountSetupSuccessful220.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful220;

  /// No description provided for @yourAccountHasBeenCreated220.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated220;

  /// No description provided for @accountSetupSuccessful221.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful221;

  /// No description provided for @yourAccountHasBeenCreated221.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated221;

  /// No description provided for @accountSetupSuccessful222.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful222;

  /// No description provided for @yourAccountHasBeenCreated222.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated222;

  /// No description provided for @today38.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today38;

  /// No description provided for @s30SpecialDiscount223.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount223;

  /// No description provided for @specialPromotionOnlyValidToday223.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday223;

  /// No description provided for @s30SpecialDiscount224.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount224;

  /// No description provided for @specialPromotionOnlyValidToday224.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday224;

  /// No description provided for @s30SpecialDiscount225.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount225;

  /// No description provided for @specialPromotionOnlyValidToday225.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday225;

  /// No description provided for @s30SpecialDiscount226.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount226;

  /// No description provided for @specialPromotionOnlyValidToday226.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday226;

  /// No description provided for @s30SpecialDiscount227.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount227;

  /// No description provided for @specialPromotionOnlyValidToday227.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday227;

  /// No description provided for @s30SpecialDiscount228.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount228;

  /// No description provided for @specialPromotionOnlyValidToday228.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday228;

  /// No description provided for @yesterday38.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday38;

  /// No description provided for @topUpEwalletSuccessful223.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful223;

  /// No description provided for @youHaveToTopUpYourEwallet223.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet223;

  /// No description provided for @topUpEwalletSuccessful224.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful224;

  /// No description provided for @youHaveToTopUpYourEwallet224.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet224;

  /// No description provided for @topUpEwalletSuccessful225.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful225;

  /// No description provided for @youHaveToTopUpYourEwallet225.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet225;

  /// No description provided for @topUpEwalletSuccessful226.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful226;

  /// No description provided for @youHaveToTopUpYourEwallet226.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet226;

  /// No description provided for @topUpEwalletSuccessful227.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful227;

  /// No description provided for @youHaveToTopUpYourEwallet227.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet227;

  /// No description provided for @topUpEwalletSuccessful228.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful228;

  /// No description provided for @youHaveToTopUpYourEwallet228.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet228;

  /// No description provided for @newServicesAvailable223.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable223;

  /// No description provided for @nowYouCanTrackOrdersInRealTime223.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime223;

  /// No description provided for @newServicesAvailable224.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable224;

  /// No description provided for @nowYouCanTrackOrdersInRealTime224.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime224;

  /// No description provided for @newServicesAvailable225.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable225;

  /// No description provided for @nowYouCanTrackOrdersInRealTime225.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime225;

  /// No description provided for @newServicesAvailable226.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable226;

  /// No description provided for @nowYouCanTrackOrdersInRealTime226.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime226;

  /// No description provided for @newServicesAvailable227.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable227;

  /// No description provided for @nowYouCanTrackOrdersInRealTime227.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime227;

  /// No description provided for @newServicesAvailable228.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable228;

  /// No description provided for @nowYouCanTrackOrdersInRealTime228.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime228;

  /// No description provided for @december22202438.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202438;

  /// No description provided for @creditCardConnected223.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected223;

  /// No description provided for @creditCardHasBeenLinked223.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked223;

  /// No description provided for @creditCardConnected224.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected224;

  /// No description provided for @creditCardHasBeenLinked224.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked224;

  /// No description provided for @creditCardConnected225.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected225;

  /// No description provided for @creditCardHasBeenLinked225.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked225;

  /// No description provided for @creditCardConnected226.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected226;

  /// No description provided for @creditCardHasBeenLinked226.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked226;

  /// No description provided for @creditCardConnected227.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected227;

  /// No description provided for @creditCardHasBeenLinked227.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked227;

  /// No description provided for @creditCardConnected228.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected228;

  /// No description provided for @creditCardHasBeenLinked228.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked228;

  /// No description provided for @accountSetupSuccessful223.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful223;

  /// No description provided for @yourAccountHasBeenCreated223.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated223;

  /// No description provided for @accountSetupSuccessful224.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful224;

  /// No description provided for @yourAccountHasBeenCreated224.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated224;

  /// No description provided for @accountSetupSuccessful225.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful225;

  /// No description provided for @yourAccountHasBeenCreated225.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated225;

  /// No description provided for @accountSetupSuccessful226.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful226;

  /// No description provided for @yourAccountHasBeenCreated226.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated226;

  /// No description provided for @accountSetupSuccessful227.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful227;

  /// No description provided for @yourAccountHasBeenCreated227.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated227;

  /// No description provided for @accountSetupSuccessful228.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful228;

  /// No description provided for @yourAccountHasBeenCreated228.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated228;

  /// No description provided for @notification39.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification39;

  /// No description provided for @notification40.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification40;

  /// No description provided for @today39.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today39;

  /// No description provided for @s30SpecialDiscount229.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount229;

  /// No description provided for @specialPromotionOnlyValidToday229.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday229;

  /// No description provided for @s30SpecialDiscount230.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount230;

  /// No description provided for @specialPromotionOnlyValidToday230.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday230;

  /// No description provided for @s30SpecialDiscount231.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount231;

  /// No description provided for @specialPromotionOnlyValidToday231.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday231;

  /// No description provided for @s30SpecialDiscount232.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount232;

  /// No description provided for @specialPromotionOnlyValidToday232.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday232;

  /// No description provided for @s30SpecialDiscount233.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount233;

  /// No description provided for @specialPromotionOnlyValidToday233.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday233;

  /// No description provided for @s30SpecialDiscount234.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount234;

  /// No description provided for @specialPromotionOnlyValidToday234.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday234;

  /// No description provided for @yesterday39.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday39;

  /// No description provided for @topUpEwalletSuccessful229.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful229;

  /// No description provided for @youHaveToTopUpYourEwallet229.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet229;

  /// No description provided for @topUpEwalletSuccessful230.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful230;

  /// No description provided for @youHaveToTopUpYourEwallet230.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet230;

  /// No description provided for @topUpEwalletSuccessful231.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful231;

  /// No description provided for @youHaveToTopUpYourEwallet231.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet231;

  /// No description provided for @topUpEwalletSuccessful232.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful232;

  /// No description provided for @youHaveToTopUpYourEwallet232.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet232;

  /// No description provided for @topUpEwalletSuccessful233.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful233;

  /// No description provided for @youHaveToTopUpYourEwallet233.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet233;

  /// No description provided for @topUpEwalletSuccessful234.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful234;

  /// No description provided for @youHaveToTopUpYourEwallet234.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet234;

  /// No description provided for @newServicesAvailable229.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable229;

  /// No description provided for @nowYouCanTrackOrdersInRealTime229.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime229;

  /// No description provided for @newServicesAvailable230.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable230;

  /// No description provided for @nowYouCanTrackOrdersInRealTime230.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime230;

  /// No description provided for @newServicesAvailable231.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable231;

  /// No description provided for @nowYouCanTrackOrdersInRealTime231.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime231;

  /// No description provided for @newServicesAvailable232.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable232;

  /// No description provided for @nowYouCanTrackOrdersInRealTime232.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime232;

  /// No description provided for @newServicesAvailable233.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable233;

  /// No description provided for @nowYouCanTrackOrdersInRealTime233.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime233;

  /// No description provided for @newServicesAvailable234.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable234;

  /// No description provided for @nowYouCanTrackOrdersInRealTime234.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime234;

  /// No description provided for @december22202439.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202439;

  /// No description provided for @creditCardConnected229.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected229;

  /// No description provided for @creditCardHasBeenLinked229.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked229;

  /// No description provided for @creditCardConnected230.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected230;

  /// No description provided for @creditCardHasBeenLinked230.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked230;

  /// No description provided for @creditCardConnected231.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected231;

  /// No description provided for @creditCardHasBeenLinked231.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked231;

  /// No description provided for @creditCardConnected232.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected232;

  /// No description provided for @creditCardHasBeenLinked232.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked232;

  /// No description provided for @creditCardConnected233.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected233;

  /// No description provided for @creditCardHasBeenLinked233.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked233;

  /// No description provided for @creditCardConnected234.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected234;

  /// No description provided for @creditCardHasBeenLinked234.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked234;

  /// No description provided for @accountSetupSuccessful229.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful229;

  /// No description provided for @yourAccountHasBeenCreated229.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated229;

  /// No description provided for @accountSetupSuccessful230.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful230;

  /// No description provided for @yourAccountHasBeenCreated230.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated230;

  /// No description provided for @accountSetupSuccessful231.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful231;

  /// No description provided for @yourAccountHasBeenCreated231.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated231;

  /// No description provided for @accountSetupSuccessful232.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful232;

  /// No description provided for @yourAccountHasBeenCreated232.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated232;

  /// No description provided for @accountSetupSuccessful233.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful233;

  /// No description provided for @yourAccountHasBeenCreated233.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated233;

  /// No description provided for @accountSetupSuccessful234.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful234;

  /// No description provided for @yourAccountHasBeenCreated234.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated234;

  /// No description provided for @today40.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today40;

  /// No description provided for @s30SpecialDiscount235.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount235;

  /// No description provided for @specialPromotionOnlyValidToday235.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday235;

  /// No description provided for @s30SpecialDiscount236.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount236;

  /// No description provided for @specialPromotionOnlyValidToday236.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday236;

  /// No description provided for @s30SpecialDiscount237.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount237;

  /// No description provided for @specialPromotionOnlyValidToday237.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday237;

  /// No description provided for @s30SpecialDiscount238.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount238;

  /// No description provided for @specialPromotionOnlyValidToday238.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday238;

  /// No description provided for @s30SpecialDiscount239.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount239;

  /// No description provided for @specialPromotionOnlyValidToday239.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday239;

  /// No description provided for @s30SpecialDiscount240.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount240;

  /// No description provided for @specialPromotionOnlyValidToday240.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday240;

  /// No description provided for @yesterday40.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday40;

  /// No description provided for @topUpEwalletSuccessful235.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful235;

  /// No description provided for @youHaveToTopUpYourEwallet235.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet235;

  /// No description provided for @topUpEwalletSuccessful236.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful236;

  /// No description provided for @youHaveToTopUpYourEwallet236.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet236;

  /// No description provided for @topUpEwalletSuccessful237.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful237;

  /// No description provided for @youHaveToTopUpYourEwallet237.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet237;

  /// No description provided for @topUpEwalletSuccessful238.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful238;

  /// No description provided for @youHaveToTopUpYourEwallet238.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet238;

  /// No description provided for @topUpEwalletSuccessful239.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful239;

  /// No description provided for @youHaveToTopUpYourEwallet239.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet239;

  /// No description provided for @topUpEwalletSuccessful240.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful240;

  /// No description provided for @youHaveToTopUpYourEwallet240.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet240;

  /// No description provided for @newServicesAvailable235.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable235;

  /// No description provided for @nowYouCanTrackOrdersInRealTime235.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime235;

  /// No description provided for @newServicesAvailable236.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable236;

  /// No description provided for @nowYouCanTrackOrdersInRealTime236.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime236;

  /// No description provided for @newServicesAvailable237.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable237;

  /// No description provided for @nowYouCanTrackOrdersInRealTime237.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime237;

  /// No description provided for @newServicesAvailable238.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable238;

  /// No description provided for @nowYouCanTrackOrdersInRealTime238.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime238;

  /// No description provided for @newServicesAvailable239.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable239;

  /// No description provided for @nowYouCanTrackOrdersInRealTime239.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime239;

  /// No description provided for @newServicesAvailable240.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable240;

  /// No description provided for @nowYouCanTrackOrdersInRealTime240.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime240;

  /// No description provided for @december22202440.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202440;

  /// No description provided for @creditCardConnected235.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected235;

  /// No description provided for @creditCardHasBeenLinked235.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked235;

  /// No description provided for @creditCardConnected236.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected236;

  /// No description provided for @creditCardHasBeenLinked236.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked236;

  /// No description provided for @creditCardConnected237.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected237;

  /// No description provided for @creditCardHasBeenLinked237.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked237;

  /// No description provided for @creditCardConnected238.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected238;

  /// No description provided for @creditCardHasBeenLinked238.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked238;

  /// No description provided for @creditCardConnected239.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected239;

  /// No description provided for @creditCardHasBeenLinked239.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked239;

  /// No description provided for @creditCardConnected240.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected240;

  /// No description provided for @creditCardHasBeenLinked240.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked240;

  /// No description provided for @accountSetupSuccessful235.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful235;

  /// No description provided for @yourAccountHasBeenCreated235.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated235;

  /// No description provided for @accountSetupSuccessful236.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful236;

  /// No description provided for @yourAccountHasBeenCreated236.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated236;

  /// No description provided for @accountSetupSuccessful237.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful237;

  /// No description provided for @yourAccountHasBeenCreated237.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated237;

  /// No description provided for @accountSetupSuccessful238.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful238;

  /// No description provided for @yourAccountHasBeenCreated238.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated238;

  /// No description provided for @accountSetupSuccessful239.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful239;

  /// No description provided for @yourAccountHasBeenCreated239.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated239;

  /// No description provided for @accountSetupSuccessful240.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful240;

  /// No description provided for @yourAccountHasBeenCreated240.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated240;

  /// No description provided for @notification41.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification41;

  /// No description provided for @notification42.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification42;

  /// No description provided for @today41.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today41;

  /// No description provided for @s30SpecialDiscount241.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount241;

  /// No description provided for @specialPromotionOnlyValidToday241.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday241;

  /// No description provided for @s30SpecialDiscount242.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount242;

  /// No description provided for @specialPromotionOnlyValidToday242.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday242;

  /// No description provided for @s30SpecialDiscount243.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount243;

  /// No description provided for @specialPromotionOnlyValidToday243.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday243;

  /// No description provided for @s30SpecialDiscount244.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount244;

  /// No description provided for @specialPromotionOnlyValidToday244.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday244;

  /// No description provided for @s30SpecialDiscount245.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount245;

  /// No description provided for @specialPromotionOnlyValidToday245.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday245;

  /// No description provided for @s30SpecialDiscount246.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount246;

  /// No description provided for @specialPromotionOnlyValidToday246.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday246;

  /// No description provided for @yesterday41.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday41;

  /// No description provided for @topUpEwalletSuccessful241.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful241;

  /// No description provided for @youHaveToTopUpYourEwallet241.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet241;

  /// No description provided for @topUpEwalletSuccessful242.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful242;

  /// No description provided for @youHaveToTopUpYourEwallet242.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet242;

  /// No description provided for @topUpEwalletSuccessful243.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful243;

  /// No description provided for @youHaveToTopUpYourEwallet243.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet243;

  /// No description provided for @topUpEwalletSuccessful244.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful244;

  /// No description provided for @youHaveToTopUpYourEwallet244.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet244;

  /// No description provided for @topUpEwalletSuccessful245.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful245;

  /// No description provided for @youHaveToTopUpYourEwallet245.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet245;

  /// No description provided for @topUpEwalletSuccessful246.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful246;

  /// No description provided for @youHaveToTopUpYourEwallet246.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet246;

  /// No description provided for @newServicesAvailable241.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable241;

  /// No description provided for @nowYouCanTrackOrdersInRealTime241.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime241;

  /// No description provided for @newServicesAvailable242.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable242;

  /// No description provided for @nowYouCanTrackOrdersInRealTime242.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime242;

  /// No description provided for @newServicesAvailable243.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable243;

  /// No description provided for @nowYouCanTrackOrdersInRealTime243.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime243;

  /// No description provided for @newServicesAvailable244.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable244;

  /// No description provided for @nowYouCanTrackOrdersInRealTime244.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime244;

  /// No description provided for @newServicesAvailable245.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable245;

  /// No description provided for @nowYouCanTrackOrdersInRealTime245.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime245;

  /// No description provided for @newServicesAvailable246.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable246;

  /// No description provided for @nowYouCanTrackOrdersInRealTime246.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime246;

  /// No description provided for @december22202441.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202441;

  /// No description provided for @creditCardConnected241.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected241;

  /// No description provided for @creditCardHasBeenLinked241.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked241;

  /// No description provided for @creditCardConnected242.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected242;

  /// No description provided for @creditCardHasBeenLinked242.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked242;

  /// No description provided for @creditCardConnected243.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected243;

  /// No description provided for @creditCardHasBeenLinked243.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked243;

  /// No description provided for @creditCardConnected244.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected244;

  /// No description provided for @creditCardHasBeenLinked244.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked244;

  /// No description provided for @creditCardConnected245.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected245;

  /// No description provided for @creditCardHasBeenLinked245.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked245;

  /// No description provided for @creditCardConnected246.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected246;

  /// No description provided for @creditCardHasBeenLinked246.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked246;

  /// No description provided for @accountSetupSuccessful241.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful241;

  /// No description provided for @yourAccountHasBeenCreated241.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated241;

  /// No description provided for @accountSetupSuccessful242.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful242;

  /// No description provided for @yourAccountHasBeenCreated242.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated242;

  /// No description provided for @accountSetupSuccessful243.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful243;

  /// No description provided for @yourAccountHasBeenCreated243.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated243;

  /// No description provided for @accountSetupSuccessful244.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful244;

  /// No description provided for @yourAccountHasBeenCreated244.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated244;

  /// No description provided for @accountSetupSuccessful245.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful245;

  /// No description provided for @yourAccountHasBeenCreated245.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated245;

  /// No description provided for @accountSetupSuccessful246.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful246;

  /// No description provided for @yourAccountHasBeenCreated246.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated246;

  /// No description provided for @today42.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today42;

  /// No description provided for @s30SpecialDiscount247.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount247;

  /// No description provided for @specialPromotionOnlyValidToday247.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday247;

  /// No description provided for @s30SpecialDiscount248.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount248;

  /// No description provided for @specialPromotionOnlyValidToday248.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday248;

  /// No description provided for @s30SpecialDiscount249.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount249;

  /// No description provided for @specialPromotionOnlyValidToday249.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday249;

  /// No description provided for @s30SpecialDiscount250.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount250;

  /// No description provided for @specialPromotionOnlyValidToday250.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday250;

  /// No description provided for @s30SpecialDiscount251.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount251;

  /// No description provided for @specialPromotionOnlyValidToday251.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday251;

  /// No description provided for @s30SpecialDiscount252.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount252;

  /// No description provided for @specialPromotionOnlyValidToday252.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday252;

  /// No description provided for @yesterday42.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday42;

  /// No description provided for @topUpEwalletSuccessful247.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful247;

  /// No description provided for @youHaveToTopUpYourEwallet247.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet247;

  /// No description provided for @topUpEwalletSuccessful248.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful248;

  /// No description provided for @youHaveToTopUpYourEwallet248.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet248;

  /// No description provided for @topUpEwalletSuccessful249.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful249;

  /// No description provided for @youHaveToTopUpYourEwallet249.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet249;

  /// No description provided for @topUpEwalletSuccessful250.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful250;

  /// No description provided for @youHaveToTopUpYourEwallet250.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet250;

  /// No description provided for @topUpEwalletSuccessful251.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful251;

  /// No description provided for @youHaveToTopUpYourEwallet251.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet251;

  /// No description provided for @topUpEwalletSuccessful252.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful252;

  /// No description provided for @youHaveToTopUpYourEwallet252.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet252;

  /// No description provided for @newServicesAvailable247.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable247;

  /// No description provided for @nowYouCanTrackOrdersInRealTime247.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime247;

  /// No description provided for @newServicesAvailable248.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable248;

  /// No description provided for @nowYouCanTrackOrdersInRealTime248.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime248;

  /// No description provided for @newServicesAvailable249.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable249;

  /// No description provided for @nowYouCanTrackOrdersInRealTime249.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime249;

  /// No description provided for @newServicesAvailable250.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable250;

  /// No description provided for @nowYouCanTrackOrdersInRealTime250.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime250;

  /// No description provided for @newServicesAvailable251.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable251;

  /// No description provided for @nowYouCanTrackOrdersInRealTime251.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime251;

  /// No description provided for @newServicesAvailable252.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable252;

  /// No description provided for @nowYouCanTrackOrdersInRealTime252.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime252;

  /// No description provided for @december22202442.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202442;

  /// No description provided for @creditCardConnected247.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected247;

  /// No description provided for @creditCardHasBeenLinked247.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked247;

  /// No description provided for @creditCardConnected248.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected248;

  /// No description provided for @creditCardHasBeenLinked248.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked248;

  /// No description provided for @creditCardConnected249.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected249;

  /// No description provided for @creditCardHasBeenLinked249.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked249;

  /// No description provided for @creditCardConnected250.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected250;

  /// No description provided for @creditCardHasBeenLinked250.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked250;

  /// No description provided for @creditCardConnected251.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected251;

  /// No description provided for @creditCardHasBeenLinked251.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked251;

  /// No description provided for @creditCardConnected252.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected252;

  /// No description provided for @creditCardHasBeenLinked252.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked252;

  /// No description provided for @accountSetupSuccessful247.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful247;

  /// No description provided for @yourAccountHasBeenCreated247.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated247;

  /// No description provided for @accountSetupSuccessful248.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful248;

  /// No description provided for @yourAccountHasBeenCreated248.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated248;

  /// No description provided for @accountSetupSuccessful249.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful249;

  /// No description provided for @yourAccountHasBeenCreated249.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated249;

  /// No description provided for @accountSetupSuccessful250.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful250;

  /// No description provided for @yourAccountHasBeenCreated250.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated250;

  /// No description provided for @accountSetupSuccessful251.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful251;

  /// No description provided for @yourAccountHasBeenCreated251.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated251;

  /// No description provided for @accountSetupSuccessful252.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful252;

  /// No description provided for @yourAccountHasBeenCreated252.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated252;

  /// No description provided for @notification43.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification43;

  /// No description provided for @notification44.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification44;

  /// No description provided for @today43.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today43;

  /// No description provided for @s30SpecialDiscount253.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount253;

  /// No description provided for @specialPromotionOnlyValidToday253.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday253;

  /// No description provided for @s30SpecialDiscount254.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount254;

  /// No description provided for @specialPromotionOnlyValidToday254.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday254;

  /// No description provided for @s30SpecialDiscount255.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount255;

  /// No description provided for @specialPromotionOnlyValidToday255.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday255;

  /// No description provided for @s30SpecialDiscount256.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount256;

  /// No description provided for @specialPromotionOnlyValidToday256.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday256;

  /// No description provided for @s30SpecialDiscount257.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount257;

  /// No description provided for @specialPromotionOnlyValidToday257.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday257;

  /// No description provided for @s30SpecialDiscount258.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount258;

  /// No description provided for @specialPromotionOnlyValidToday258.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday258;

  /// No description provided for @yesterday43.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday43;

  /// No description provided for @topUpEwalletSuccessful253.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful253;

  /// No description provided for @youHaveToTopUpYourEwallet253.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet253;

  /// No description provided for @topUpEwalletSuccessful254.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful254;

  /// No description provided for @youHaveToTopUpYourEwallet254.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet254;

  /// No description provided for @topUpEwalletSuccessful255.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful255;

  /// No description provided for @youHaveToTopUpYourEwallet255.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet255;

  /// No description provided for @topUpEwalletSuccessful256.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful256;

  /// No description provided for @youHaveToTopUpYourEwallet256.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet256;

  /// No description provided for @topUpEwalletSuccessful257.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful257;

  /// No description provided for @youHaveToTopUpYourEwallet257.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet257;

  /// No description provided for @topUpEwalletSuccessful258.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful258;

  /// No description provided for @youHaveToTopUpYourEwallet258.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet258;

  /// No description provided for @newServicesAvailable253.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable253;

  /// No description provided for @nowYouCanTrackOrdersInRealTime253.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime253;

  /// No description provided for @newServicesAvailable254.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable254;

  /// No description provided for @nowYouCanTrackOrdersInRealTime254.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime254;

  /// No description provided for @newServicesAvailable255.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable255;

  /// No description provided for @nowYouCanTrackOrdersInRealTime255.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime255;

  /// No description provided for @newServicesAvailable256.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable256;

  /// No description provided for @nowYouCanTrackOrdersInRealTime256.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime256;

  /// No description provided for @newServicesAvailable257.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable257;

  /// No description provided for @nowYouCanTrackOrdersInRealTime257.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime257;

  /// No description provided for @newServicesAvailable258.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable258;

  /// No description provided for @nowYouCanTrackOrdersInRealTime258.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime258;

  /// No description provided for @december22202443.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202443;

  /// No description provided for @creditCardConnected253.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected253;

  /// No description provided for @creditCardHasBeenLinked253.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked253;

  /// No description provided for @creditCardConnected254.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected254;

  /// No description provided for @creditCardHasBeenLinked254.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked254;

  /// No description provided for @creditCardConnected255.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected255;

  /// No description provided for @creditCardHasBeenLinked255.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked255;

  /// No description provided for @creditCardConnected256.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected256;

  /// No description provided for @creditCardHasBeenLinked256.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked256;

  /// No description provided for @creditCardConnected257.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected257;

  /// No description provided for @creditCardHasBeenLinked257.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked257;

  /// No description provided for @creditCardConnected258.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected258;

  /// No description provided for @creditCardHasBeenLinked258.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked258;

  /// No description provided for @accountSetupSuccessful253.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful253;

  /// No description provided for @yourAccountHasBeenCreated253.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated253;

  /// No description provided for @accountSetupSuccessful254.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful254;

  /// No description provided for @yourAccountHasBeenCreated254.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated254;

  /// No description provided for @accountSetupSuccessful255.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful255;

  /// No description provided for @yourAccountHasBeenCreated255.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated255;

  /// No description provided for @accountSetupSuccessful256.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful256;

  /// No description provided for @yourAccountHasBeenCreated256.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated256;

  /// No description provided for @accountSetupSuccessful257.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful257;

  /// No description provided for @yourAccountHasBeenCreated257.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated257;

  /// No description provided for @accountSetupSuccessful258.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful258;

  /// No description provided for @yourAccountHasBeenCreated258.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated258;

  /// No description provided for @today44.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today44;

  /// No description provided for @s30SpecialDiscount259.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount259;

  /// No description provided for @specialPromotionOnlyValidToday259.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday259;

  /// No description provided for @s30SpecialDiscount260.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount260;

  /// No description provided for @specialPromotionOnlyValidToday260.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday260;

  /// No description provided for @s30SpecialDiscount261.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount261;

  /// No description provided for @specialPromotionOnlyValidToday261.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday261;

  /// No description provided for @s30SpecialDiscount262.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount262;

  /// No description provided for @specialPromotionOnlyValidToday262.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday262;

  /// No description provided for @s30SpecialDiscount263.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount263;

  /// No description provided for @specialPromotionOnlyValidToday263.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday263;

  /// No description provided for @s30SpecialDiscount264.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount264;

  /// No description provided for @specialPromotionOnlyValidToday264.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday264;

  /// No description provided for @yesterday44.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday44;

  /// No description provided for @topUpEwalletSuccessful259.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful259;

  /// No description provided for @youHaveToTopUpYourEwallet259.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet259;

  /// No description provided for @topUpEwalletSuccessful260.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful260;

  /// No description provided for @youHaveToTopUpYourEwallet260.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet260;

  /// No description provided for @topUpEwalletSuccessful261.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful261;

  /// No description provided for @youHaveToTopUpYourEwallet261.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet261;

  /// No description provided for @topUpEwalletSuccessful262.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful262;

  /// No description provided for @youHaveToTopUpYourEwallet262.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet262;

  /// No description provided for @topUpEwalletSuccessful263.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful263;

  /// No description provided for @youHaveToTopUpYourEwallet263.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet263;

  /// No description provided for @topUpEwalletSuccessful264.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful264;

  /// No description provided for @youHaveToTopUpYourEwallet264.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet264;

  /// No description provided for @newServicesAvailable259.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable259;

  /// No description provided for @nowYouCanTrackOrdersInRealTime259.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime259;

  /// No description provided for @newServicesAvailable260.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable260;

  /// No description provided for @nowYouCanTrackOrdersInRealTime260.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime260;

  /// No description provided for @newServicesAvailable261.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable261;

  /// No description provided for @nowYouCanTrackOrdersInRealTime261.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime261;

  /// No description provided for @newServicesAvailable262.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable262;

  /// No description provided for @nowYouCanTrackOrdersInRealTime262.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime262;

  /// No description provided for @newServicesAvailable263.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable263;

  /// No description provided for @nowYouCanTrackOrdersInRealTime263.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime263;

  /// No description provided for @newServicesAvailable264.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable264;

  /// No description provided for @nowYouCanTrackOrdersInRealTime264.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime264;

  /// No description provided for @december22202444.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202444;

  /// No description provided for @creditCardConnected259.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected259;

  /// No description provided for @creditCardHasBeenLinked259.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked259;

  /// No description provided for @creditCardConnected260.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected260;

  /// No description provided for @creditCardHasBeenLinked260.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked260;

  /// No description provided for @creditCardConnected261.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected261;

  /// No description provided for @creditCardHasBeenLinked261.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked261;

  /// No description provided for @creditCardConnected262.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected262;

  /// No description provided for @creditCardHasBeenLinked262.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked262;

  /// No description provided for @creditCardConnected263.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected263;

  /// No description provided for @creditCardHasBeenLinked263.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked263;

  /// No description provided for @creditCardConnected264.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected264;

  /// No description provided for @creditCardHasBeenLinked264.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked264;

  /// No description provided for @accountSetupSuccessful259.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful259;

  /// No description provided for @yourAccountHasBeenCreated259.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated259;

  /// No description provided for @accountSetupSuccessful260.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful260;

  /// No description provided for @yourAccountHasBeenCreated260.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated260;

  /// No description provided for @accountSetupSuccessful261.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful261;

  /// No description provided for @yourAccountHasBeenCreated261.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated261;

  /// No description provided for @accountSetupSuccessful262.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful262;

  /// No description provided for @yourAccountHasBeenCreated262.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated262;

  /// No description provided for @accountSetupSuccessful263.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful263;

  /// No description provided for @yourAccountHasBeenCreated263.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated263;

  /// No description provided for @accountSetupSuccessful264.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful264;

  /// No description provided for @yourAccountHasBeenCreated264.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated264;

  /// No description provided for @notification45.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification45;

  /// No description provided for @notification46.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification46;

  /// No description provided for @today45.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today45;

  /// No description provided for @s30SpecialDiscount265.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount265;

  /// No description provided for @specialPromotionOnlyValidToday265.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday265;

  /// No description provided for @s30SpecialDiscount266.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount266;

  /// No description provided for @specialPromotionOnlyValidToday266.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday266;

  /// No description provided for @s30SpecialDiscount267.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount267;

  /// No description provided for @specialPromotionOnlyValidToday267.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday267;

  /// No description provided for @s30SpecialDiscount268.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount268;

  /// No description provided for @specialPromotionOnlyValidToday268.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday268;

  /// No description provided for @s30SpecialDiscount269.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount269;

  /// No description provided for @specialPromotionOnlyValidToday269.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday269;

  /// No description provided for @s30SpecialDiscount270.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount270;

  /// No description provided for @specialPromotionOnlyValidToday270.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday270;

  /// No description provided for @yesterday45.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday45;

  /// No description provided for @topUpEwalletSuccessful265.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful265;

  /// No description provided for @youHaveToTopUpYourEwallet265.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet265;

  /// No description provided for @topUpEwalletSuccessful266.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful266;

  /// No description provided for @youHaveToTopUpYourEwallet266.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet266;

  /// No description provided for @topUpEwalletSuccessful267.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful267;

  /// No description provided for @youHaveToTopUpYourEwallet267.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet267;

  /// No description provided for @topUpEwalletSuccessful268.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful268;

  /// No description provided for @youHaveToTopUpYourEwallet268.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet268;

  /// No description provided for @topUpEwalletSuccessful269.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful269;

  /// No description provided for @youHaveToTopUpYourEwallet269.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet269;

  /// No description provided for @topUpEwalletSuccessful270.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful270;

  /// No description provided for @youHaveToTopUpYourEwallet270.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet270;

  /// No description provided for @newServicesAvailable265.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable265;

  /// No description provided for @nowYouCanTrackOrdersInRealTime265.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime265;

  /// No description provided for @newServicesAvailable266.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable266;

  /// No description provided for @nowYouCanTrackOrdersInRealTime266.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime266;

  /// No description provided for @newServicesAvailable267.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable267;

  /// No description provided for @nowYouCanTrackOrdersInRealTime267.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime267;

  /// No description provided for @newServicesAvailable268.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable268;

  /// No description provided for @nowYouCanTrackOrdersInRealTime268.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime268;

  /// No description provided for @newServicesAvailable269.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable269;

  /// No description provided for @nowYouCanTrackOrdersInRealTime269.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime269;

  /// No description provided for @newServicesAvailable270.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable270;

  /// No description provided for @nowYouCanTrackOrdersInRealTime270.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime270;

  /// No description provided for @december22202445.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202445;

  /// No description provided for @creditCardConnected265.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected265;

  /// No description provided for @creditCardHasBeenLinked265.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked265;

  /// No description provided for @creditCardConnected266.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected266;

  /// No description provided for @creditCardHasBeenLinked266.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked266;

  /// No description provided for @creditCardConnected267.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected267;

  /// No description provided for @creditCardHasBeenLinked267.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked267;

  /// No description provided for @creditCardConnected268.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected268;

  /// No description provided for @creditCardHasBeenLinked268.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked268;

  /// No description provided for @creditCardConnected269.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected269;

  /// No description provided for @creditCardHasBeenLinked269.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked269;

  /// No description provided for @creditCardConnected270.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected270;

  /// No description provided for @creditCardHasBeenLinked270.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked270;

  /// No description provided for @accountSetupSuccessful265.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful265;

  /// No description provided for @yourAccountHasBeenCreated265.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated265;

  /// No description provided for @accountSetupSuccessful266.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful266;

  /// No description provided for @yourAccountHasBeenCreated266.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated266;

  /// No description provided for @accountSetupSuccessful267.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful267;

  /// No description provided for @yourAccountHasBeenCreated267.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated267;

  /// No description provided for @accountSetupSuccessful268.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful268;

  /// No description provided for @yourAccountHasBeenCreated268.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated268;

  /// No description provided for @accountSetupSuccessful269.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful269;

  /// No description provided for @yourAccountHasBeenCreated269.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated269;

  /// No description provided for @accountSetupSuccessful270.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful270;

  /// No description provided for @yourAccountHasBeenCreated270.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated270;

  /// No description provided for @today46.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today46;

  /// No description provided for @s30SpecialDiscount271.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount271;

  /// No description provided for @specialPromotionOnlyValidToday271.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday271;

  /// No description provided for @s30SpecialDiscount272.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount272;

  /// No description provided for @specialPromotionOnlyValidToday272.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday272;

  /// No description provided for @s30SpecialDiscount273.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount273;

  /// No description provided for @specialPromotionOnlyValidToday273.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday273;

  /// No description provided for @s30SpecialDiscount274.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount274;

  /// No description provided for @specialPromotionOnlyValidToday274.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday274;

  /// No description provided for @s30SpecialDiscount275.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount275;

  /// No description provided for @specialPromotionOnlyValidToday275.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday275;

  /// No description provided for @s30SpecialDiscount276.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount276;

  /// No description provided for @specialPromotionOnlyValidToday276.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday276;

  /// No description provided for @yesterday46.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday46;

  /// No description provided for @topUpEwalletSuccessful271.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful271;

  /// No description provided for @youHaveToTopUpYourEwallet271.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet271;

  /// No description provided for @topUpEwalletSuccessful272.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful272;

  /// No description provided for @youHaveToTopUpYourEwallet272.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet272;

  /// No description provided for @topUpEwalletSuccessful273.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful273;

  /// No description provided for @youHaveToTopUpYourEwallet273.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet273;

  /// No description provided for @topUpEwalletSuccessful274.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful274;

  /// No description provided for @youHaveToTopUpYourEwallet274.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet274;

  /// No description provided for @topUpEwalletSuccessful275.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful275;

  /// No description provided for @youHaveToTopUpYourEwallet275.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet275;

  /// No description provided for @topUpEwalletSuccessful276.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful276;

  /// No description provided for @youHaveToTopUpYourEwallet276.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet276;

  /// No description provided for @newServicesAvailable271.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable271;

  /// No description provided for @nowYouCanTrackOrdersInRealTime271.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime271;

  /// No description provided for @newServicesAvailable272.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable272;

  /// No description provided for @nowYouCanTrackOrdersInRealTime272.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime272;

  /// No description provided for @newServicesAvailable273.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable273;

  /// No description provided for @nowYouCanTrackOrdersInRealTime273.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime273;

  /// No description provided for @newServicesAvailable274.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable274;

  /// No description provided for @nowYouCanTrackOrdersInRealTime274.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime274;

  /// No description provided for @newServicesAvailable275.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable275;

  /// No description provided for @nowYouCanTrackOrdersInRealTime275.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime275;

  /// No description provided for @newServicesAvailable276.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable276;

  /// No description provided for @nowYouCanTrackOrdersInRealTime276.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime276;

  /// No description provided for @december22202446.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202446;

  /// No description provided for @creditCardConnected271.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected271;

  /// No description provided for @creditCardHasBeenLinked271.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked271;

  /// No description provided for @creditCardConnected272.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected272;

  /// No description provided for @creditCardHasBeenLinked272.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked272;

  /// No description provided for @creditCardConnected273.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected273;

  /// No description provided for @creditCardHasBeenLinked273.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked273;

  /// No description provided for @creditCardConnected274.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected274;

  /// No description provided for @creditCardHasBeenLinked274.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked274;

  /// No description provided for @creditCardConnected275.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected275;

  /// No description provided for @creditCardHasBeenLinked275.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked275;

  /// No description provided for @creditCardConnected276.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected276;

  /// No description provided for @creditCardHasBeenLinked276.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked276;

  /// No description provided for @accountSetupSuccessful271.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful271;

  /// No description provided for @yourAccountHasBeenCreated271.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated271;

  /// No description provided for @accountSetupSuccessful272.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful272;

  /// No description provided for @yourAccountHasBeenCreated272.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated272;

  /// No description provided for @accountSetupSuccessful273.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful273;

  /// No description provided for @yourAccountHasBeenCreated273.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated273;

  /// No description provided for @accountSetupSuccessful274.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful274;

  /// No description provided for @yourAccountHasBeenCreated274.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated274;

  /// No description provided for @accountSetupSuccessful275.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful275;

  /// No description provided for @yourAccountHasBeenCreated275.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated275;

  /// No description provided for @accountSetupSuccessful276.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful276;

  /// No description provided for @yourAccountHasBeenCreated276.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated276;

  /// No description provided for @notification47.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification47;

  /// No description provided for @notification48.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification48;

  /// No description provided for @today47.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today47;

  /// No description provided for @s30SpecialDiscount277.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount277;

  /// No description provided for @specialPromotionOnlyValidToday277.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday277;

  /// No description provided for @s30SpecialDiscount278.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount278;

  /// No description provided for @specialPromotionOnlyValidToday278.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday278;

  /// No description provided for @s30SpecialDiscount279.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount279;

  /// No description provided for @specialPromotionOnlyValidToday279.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday279;

  /// No description provided for @s30SpecialDiscount280.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount280;

  /// No description provided for @specialPromotionOnlyValidToday280.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday280;

  /// No description provided for @s30SpecialDiscount281.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount281;

  /// No description provided for @specialPromotionOnlyValidToday281.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday281;

  /// No description provided for @s30SpecialDiscount282.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount282;

  /// No description provided for @specialPromotionOnlyValidToday282.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday282;

  /// No description provided for @yesterday47.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday47;

  /// No description provided for @topUpEwalletSuccessful277.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful277;

  /// No description provided for @youHaveToTopUpYourEwallet277.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet277;

  /// No description provided for @topUpEwalletSuccessful278.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful278;

  /// No description provided for @youHaveToTopUpYourEwallet278.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet278;

  /// No description provided for @topUpEwalletSuccessful279.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful279;

  /// No description provided for @youHaveToTopUpYourEwallet279.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet279;

  /// No description provided for @topUpEwalletSuccessful280.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful280;

  /// No description provided for @youHaveToTopUpYourEwallet280.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet280;

  /// No description provided for @topUpEwalletSuccessful281.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful281;

  /// No description provided for @youHaveToTopUpYourEwallet281.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet281;

  /// No description provided for @topUpEwalletSuccessful282.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful282;

  /// No description provided for @youHaveToTopUpYourEwallet282.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet282;

  /// No description provided for @newServicesAvailable277.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable277;

  /// No description provided for @nowYouCanTrackOrdersInRealTime277.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime277;

  /// No description provided for @newServicesAvailable278.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable278;

  /// No description provided for @nowYouCanTrackOrdersInRealTime278.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime278;

  /// No description provided for @newServicesAvailable279.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable279;

  /// No description provided for @nowYouCanTrackOrdersInRealTime279.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime279;

  /// No description provided for @newServicesAvailable280.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable280;

  /// No description provided for @nowYouCanTrackOrdersInRealTime280.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime280;

  /// No description provided for @newServicesAvailable281.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable281;

  /// No description provided for @nowYouCanTrackOrdersInRealTime281.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime281;

  /// No description provided for @newServicesAvailable282.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable282;

  /// No description provided for @nowYouCanTrackOrdersInRealTime282.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime282;

  /// No description provided for @december22202447.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202447;

  /// No description provided for @creditCardConnected277.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected277;

  /// No description provided for @creditCardHasBeenLinked277.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked277;

  /// No description provided for @creditCardConnected278.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected278;

  /// No description provided for @creditCardHasBeenLinked278.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked278;

  /// No description provided for @creditCardConnected279.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected279;

  /// No description provided for @creditCardHasBeenLinked279.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked279;

  /// No description provided for @creditCardConnected280.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected280;

  /// No description provided for @creditCardHasBeenLinked280.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked280;

  /// No description provided for @creditCardConnected281.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected281;

  /// No description provided for @creditCardHasBeenLinked281.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked281;

  /// No description provided for @creditCardConnected282.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected282;

  /// No description provided for @creditCardHasBeenLinked282.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked282;

  /// No description provided for @accountSetupSuccessful277.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful277;

  /// No description provided for @yourAccountHasBeenCreated277.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated277;

  /// No description provided for @accountSetupSuccessful278.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful278;

  /// No description provided for @yourAccountHasBeenCreated278.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated278;

  /// No description provided for @accountSetupSuccessful279.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful279;

  /// No description provided for @yourAccountHasBeenCreated279.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated279;

  /// No description provided for @accountSetupSuccessful280.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful280;

  /// No description provided for @yourAccountHasBeenCreated280.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated280;

  /// No description provided for @accountSetupSuccessful281.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful281;

  /// No description provided for @yourAccountHasBeenCreated281.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated281;

  /// No description provided for @accountSetupSuccessful282.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful282;

  /// No description provided for @yourAccountHasBeenCreated282.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated282;

  /// No description provided for @today48.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today48;

  /// No description provided for @s30SpecialDiscount283.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount283;

  /// No description provided for @specialPromotionOnlyValidToday283.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday283;

  /// No description provided for @s30SpecialDiscount284.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount284;

  /// No description provided for @specialPromotionOnlyValidToday284.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday284;

  /// No description provided for @s30SpecialDiscount285.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount285;

  /// No description provided for @specialPromotionOnlyValidToday285.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday285;

  /// No description provided for @s30SpecialDiscount286.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount286;

  /// No description provided for @specialPromotionOnlyValidToday286.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday286;

  /// No description provided for @s30SpecialDiscount287.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount287;

  /// No description provided for @specialPromotionOnlyValidToday287.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday287;

  /// No description provided for @s30SpecialDiscount288.
  ///
  /// In en, this message translates to:
  /// **'30% Special Discount!'**
  String get s30SpecialDiscount288;

  /// No description provided for @specialPromotionOnlyValidToday288.
  ///
  /// In en, this message translates to:
  /// **'Special promotion only valid today'**
  String get specialPromotionOnlyValidToday288;

  /// No description provided for @yesterday48.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday48;

  /// No description provided for @topUpEwalletSuccessful283.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful283;

  /// No description provided for @youHaveToTopUpYourEwallet283.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet283;

  /// No description provided for @topUpEwalletSuccessful284.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful284;

  /// No description provided for @youHaveToTopUpYourEwallet284.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet284;

  /// No description provided for @topUpEwalletSuccessful285.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful285;

  /// No description provided for @youHaveToTopUpYourEwallet285.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet285;

  /// No description provided for @topUpEwalletSuccessful286.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful286;

  /// No description provided for @youHaveToTopUpYourEwallet286.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet286;

  /// No description provided for @topUpEwalletSuccessful287.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful287;

  /// No description provided for @youHaveToTopUpYourEwallet287.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet287;

  /// No description provided for @topUpEwalletSuccessful288.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet Successful!'**
  String get topUpEwalletSuccessful288;

  /// No description provided for @youHaveToTopUpYourEwallet288.
  ///
  /// In en, this message translates to:
  /// **'You have to top up your e-wallet'**
  String get youHaveToTopUpYourEwallet288;

  /// No description provided for @newServicesAvailable283.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable283;

  /// No description provided for @nowYouCanTrackOrdersInRealTime283.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime283;

  /// No description provided for @newServicesAvailable284.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable284;

  /// No description provided for @nowYouCanTrackOrdersInRealTime284.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime284;

  /// No description provided for @newServicesAvailable285.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable285;

  /// No description provided for @nowYouCanTrackOrdersInRealTime285.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime285;

  /// No description provided for @newServicesAvailable286.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable286;

  /// No description provided for @nowYouCanTrackOrdersInRealTime286.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime286;

  /// No description provided for @newServicesAvailable287.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable287;

  /// No description provided for @nowYouCanTrackOrdersInRealTime287.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime287;

  /// No description provided for @newServicesAvailable288.
  ///
  /// In en, this message translates to:
  /// **'New Services Available!'**
  String get newServicesAvailable288;

  /// No description provided for @nowYouCanTrackOrdersInRealTime288.
  ///
  /// In en, this message translates to:
  /// **'Now you can track orders in real time'**
  String get nowYouCanTrackOrdersInRealTime288;

  /// No description provided for @december22202448.
  ///
  /// In en, this message translates to:
  /// **'December 22, 2024'**
  String get december22202448;

  /// No description provided for @creditCardConnected283.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected283;

  /// No description provided for @creditCardHasBeenLinked283.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked283;

  /// No description provided for @creditCardConnected284.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected284;

  /// No description provided for @creditCardHasBeenLinked284.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked284;

  /// No description provided for @creditCardConnected285.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected285;

  /// No description provided for @creditCardHasBeenLinked285.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked285;

  /// No description provided for @creditCardConnected286.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected286;

  /// No description provided for @creditCardHasBeenLinked286.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked286;

  /// No description provided for @creditCardConnected287.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected287;

  /// No description provided for @creditCardHasBeenLinked287.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked287;

  /// No description provided for @creditCardConnected288.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Connected!'**
  String get creditCardConnected288;

  /// No description provided for @creditCardHasBeenLinked288.
  ///
  /// In en, this message translates to:
  /// **'Credit Card has been linked!'**
  String get creditCardHasBeenLinked288;

  /// No description provided for @accountSetupSuccessful283.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful283;

  /// No description provided for @yourAccountHasBeenCreated283.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated283;

  /// No description provided for @accountSetupSuccessful284.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful284;

  /// No description provided for @yourAccountHasBeenCreated284.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated284;

  /// No description provided for @accountSetupSuccessful285.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful285;

  /// No description provided for @yourAccountHasBeenCreated285.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated285;

  /// No description provided for @accountSetupSuccessful286.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful286;

  /// No description provided for @yourAccountHasBeenCreated286.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated286;

  /// No description provided for @accountSetupSuccessful287.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful287;

  /// No description provided for @yourAccountHasBeenCreated287.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated287;

  /// No description provided for @accountSetupSuccessful288.
  ///
  /// In en, this message translates to:
  /// **'Account Setup Successful!'**
  String get accountSetupSuccessful288;

  /// No description provided for @yourAccountHasBeenCreated288.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created!'**
  String get yourAccountHasBeenCreated288;

  /// No description provided for @helpCenter.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter;

  /// No description provided for @helpCenter2.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter2;

  /// No description provided for @faq.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq;

  /// No description provided for @faq2.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq2;

  /// No description provided for @faq3.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq3;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs;

  /// No description provided for @contactUs2.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs2;

  /// No description provided for @contactUs3.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs3;

  /// No description provided for @faq4.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq4;

  /// No description provided for @faq5.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq5;

  /// No description provided for @faq6.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq6;

  /// No description provided for @contactUs4.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs4;

  /// No description provided for @contactUs5.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs5;

  /// No description provided for @contactUs6.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs6;

  /// No description provided for @customerService.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService;

  /// No description provided for @customerService2.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService2;

  /// No description provided for @whatsapp.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp;

  /// No description provided for @whatsapp2.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp2;

  /// No description provided for @whatsapp3.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp3;

  /// No description provided for @whatsapp4.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp4;

  /// No description provided for @website.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website;

  /// No description provided for @website2.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website2;

  /// No description provided for @website3.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website3;

  /// No description provided for @website4.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website4;

  /// No description provided for @facebook.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook;

  /// No description provided for @facebook2.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook2;

  /// No description provided for @facebook3.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook3;

  /// No description provided for @facebook4.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook4;

  /// No description provided for @twitter.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter;

  /// No description provided for @twitter2.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter2;

  /// No description provided for @twitter3.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter3;

  /// No description provided for @twitter4.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter4;

  /// No description provided for @instagram.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram;

  /// No description provided for @instagram2.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram2;

  /// No description provided for @instagram3.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram3;

  /// No description provided for @instagram4.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram4;

  /// No description provided for @customerService3.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService3;

  /// No description provided for @customerService4.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService4;

  /// No description provided for @whatsapp5.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp5;

  /// No description provided for @whatsapp6.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp6;

  /// No description provided for @whatsapp7.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp7;

  /// No description provided for @whatsapp8.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp8;

  /// No description provided for @website5.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website5;

  /// No description provided for @website6.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website6;

  /// No description provided for @website7.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website7;

  /// No description provided for @website8.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website8;

  /// No description provided for @facebook5.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook5;

  /// No description provided for @facebook6.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook6;

  /// No description provided for @facebook7.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook7;

  /// No description provided for @facebook8.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook8;

  /// No description provided for @twitter5.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter5;

  /// No description provided for @twitter6.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter6;

  /// No description provided for @twitter7.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter7;

  /// No description provided for @twitter8.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter8;

  /// No description provided for @instagram5.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram5;

  /// No description provided for @instagram6.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram6;

  /// No description provided for @instagram7.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram7;

  /// No description provided for @instagram8.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram8;

  /// No description provided for @helpCenter3.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter3;

  /// No description provided for @helpCenter4.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter4;

  /// No description provided for @faq7.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq7;

  /// No description provided for @faq8.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq8;

  /// No description provided for @faq9.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq9;

  /// No description provided for @contactUs7.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs7;

  /// No description provided for @contactUs8.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs8;

  /// No description provided for @contactUs9.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs9;

  /// No description provided for @faq10.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq10;

  /// No description provided for @faq11.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq11;

  /// No description provided for @faq12.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq12;

  /// No description provided for @contactUs10.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs10;

  /// No description provided for @contactUs11.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs11;

  /// No description provided for @contactUs12.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs12;

  /// No description provided for @customerService5.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService5;

  /// No description provided for @customerService6.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService6;

  /// No description provided for @whatsapp9.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp9;

  /// No description provided for @whatsapp10.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp10;

  /// No description provided for @whatsapp11.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp11;

  /// No description provided for @whatsapp12.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp12;

  /// No description provided for @website9.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website9;

  /// No description provided for @website10.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website10;

  /// No description provided for @website11.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website11;

  /// No description provided for @website12.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website12;

  /// No description provided for @facebook9.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook9;

  /// No description provided for @facebook10.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook10;

  /// No description provided for @facebook11.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook11;

  /// No description provided for @facebook12.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook12;

  /// No description provided for @twitter9.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter9;

  /// No description provided for @twitter10.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter10;

  /// No description provided for @twitter11.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter11;

  /// No description provided for @twitter12.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter12;

  /// No description provided for @instagram9.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram9;

  /// No description provided for @instagram10.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram10;

  /// No description provided for @instagram11.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram11;

  /// No description provided for @instagram12.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram12;

  /// No description provided for @customerService7.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService7;

  /// No description provided for @customerService8.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService8;

  /// No description provided for @whatsapp13.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp13;

  /// No description provided for @whatsapp14.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp14;

  /// No description provided for @whatsapp15.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp15;

  /// No description provided for @whatsapp16.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp16;

  /// No description provided for @website13.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website13;

  /// No description provided for @website14.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website14;

  /// No description provided for @website15.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website15;

  /// No description provided for @website16.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website16;

  /// No description provided for @facebook13.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook13;

  /// No description provided for @facebook14.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook14;

  /// No description provided for @facebook15.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook15;

  /// No description provided for @facebook16.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook16;

  /// No description provided for @twitter13.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter13;

  /// No description provided for @twitter14.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter14;

  /// No description provided for @twitter15.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter15;

  /// No description provided for @twitter16.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter16;

  /// No description provided for @instagram13.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram13;

  /// No description provided for @instagram14.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram14;

  /// No description provided for @instagram15.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram15;

  /// No description provided for @instagram16.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram16;

  /// No description provided for @helpCenter5.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter5;

  /// No description provided for @helpCenter6.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter6;

  /// No description provided for @faq13.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq13;

  /// No description provided for @faq14.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq14;

  /// No description provided for @faq15.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq15;

  /// No description provided for @contactUs13.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs13;

  /// No description provided for @contactUs14.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs14;

  /// No description provided for @contactUs15.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs15;

  /// No description provided for @faq16.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq16;

  /// No description provided for @faq17.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq17;

  /// No description provided for @faq18.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq18;

  /// No description provided for @contactUs16.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs16;

  /// No description provided for @contactUs17.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs17;

  /// No description provided for @contactUs18.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs18;

  /// No description provided for @customerService9.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService9;

  /// No description provided for @customerService10.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService10;

  /// No description provided for @whatsapp17.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp17;

  /// No description provided for @whatsapp18.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp18;

  /// No description provided for @whatsapp19.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp19;

  /// No description provided for @whatsapp20.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp20;

  /// No description provided for @website17.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website17;

  /// No description provided for @website18.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website18;

  /// No description provided for @website19.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website19;

  /// No description provided for @website20.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website20;

  /// No description provided for @facebook17.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook17;

  /// No description provided for @facebook18.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook18;

  /// No description provided for @facebook19.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook19;

  /// No description provided for @facebook20.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook20;

  /// No description provided for @twitter17.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter17;

  /// No description provided for @twitter18.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter18;

  /// No description provided for @twitter19.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter19;

  /// No description provided for @twitter20.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter20;

  /// No description provided for @instagram17.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram17;

  /// No description provided for @instagram18.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram18;

  /// No description provided for @instagram19.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram19;

  /// No description provided for @instagram20.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram20;

  /// No description provided for @customerService11.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService11;

  /// No description provided for @customerService12.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService12;

  /// No description provided for @whatsapp21.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp21;

  /// No description provided for @whatsapp22.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp22;

  /// No description provided for @whatsapp23.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp23;

  /// No description provided for @whatsapp24.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp24;

  /// No description provided for @website21.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website21;

  /// No description provided for @website22.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website22;

  /// No description provided for @website23.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website23;

  /// No description provided for @website24.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website24;

  /// No description provided for @facebook21.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook21;

  /// No description provided for @facebook22.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook22;

  /// No description provided for @facebook23.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook23;

  /// No description provided for @facebook24.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook24;

  /// No description provided for @twitter21.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter21;

  /// No description provided for @twitter22.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter22;

  /// No description provided for @twitter23.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter23;

  /// No description provided for @twitter24.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter24;

  /// No description provided for @instagram21.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram21;

  /// No description provided for @instagram22.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram22;

  /// No description provided for @instagram23.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram23;

  /// No description provided for @instagram24.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram24;

  /// No description provided for @helpCenter7.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter7;

  /// No description provided for @helpCenter8.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter8;

  /// No description provided for @faq19.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq19;

  /// No description provided for @faq20.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq20;

  /// No description provided for @faq21.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq21;

  /// No description provided for @contactUs19.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs19;

  /// No description provided for @contactUs20.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs20;

  /// No description provided for @contactUs21.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs21;

  /// No description provided for @faq22.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq22;

  /// No description provided for @faq23.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq23;

  /// No description provided for @faq24.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq24;

  /// No description provided for @contactUs22.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs22;

  /// No description provided for @contactUs23.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs23;

  /// No description provided for @contactUs24.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs24;

  /// No description provided for @customerService13.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService13;

  /// No description provided for @customerService14.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService14;

  /// No description provided for @whatsapp25.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp25;

  /// No description provided for @whatsapp26.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp26;

  /// No description provided for @whatsapp27.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp27;

  /// No description provided for @whatsapp28.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp28;

  /// No description provided for @website25.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website25;

  /// No description provided for @website26.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website26;

  /// No description provided for @website27.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website27;

  /// No description provided for @website28.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website28;

  /// No description provided for @facebook25.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook25;

  /// No description provided for @facebook26.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook26;

  /// No description provided for @facebook27.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook27;

  /// No description provided for @facebook28.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook28;

  /// No description provided for @twitter25.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter25;

  /// No description provided for @twitter26.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter26;

  /// No description provided for @twitter27.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter27;

  /// No description provided for @twitter28.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter28;

  /// No description provided for @instagram25.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram25;

  /// No description provided for @instagram26.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram26;

  /// No description provided for @instagram27.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram27;

  /// No description provided for @instagram28.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram28;

  /// No description provided for @customerService15.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService15;

  /// No description provided for @customerService16.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService16;

  /// No description provided for @whatsapp29.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp29;

  /// No description provided for @whatsapp30.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp30;

  /// No description provided for @whatsapp31.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp31;

  /// No description provided for @whatsapp32.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp32;

  /// No description provided for @website29.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website29;

  /// No description provided for @website30.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website30;

  /// No description provided for @website31.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website31;

  /// No description provided for @website32.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website32;

  /// No description provided for @facebook29.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook29;

  /// No description provided for @facebook30.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook30;

  /// No description provided for @facebook31.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook31;

  /// No description provided for @facebook32.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook32;

  /// No description provided for @twitter29.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter29;

  /// No description provided for @twitter30.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter30;

  /// No description provided for @twitter31.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter31;

  /// No description provided for @twitter32.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter32;

  /// No description provided for @instagram29.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram29;

  /// No description provided for @instagram30.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram30;

  /// No description provided for @instagram31.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram31;

  /// No description provided for @instagram32.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram32;

  /// No description provided for @helpCenter9.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter9;

  /// No description provided for @helpCenter10.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter10;

  /// No description provided for @faq25.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq25;

  /// No description provided for @faq26.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq26;

  /// No description provided for @faq27.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq27;

  /// No description provided for @contactUs25.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs25;

  /// No description provided for @contactUs26.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs26;

  /// No description provided for @contactUs27.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs27;

  /// No description provided for @faq28.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq28;

  /// No description provided for @faq29.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq29;

  /// No description provided for @faq30.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq30;

  /// No description provided for @contactUs28.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs28;

  /// No description provided for @contactUs29.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs29;

  /// No description provided for @contactUs30.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs30;

  /// No description provided for @customerService17.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService17;

  /// No description provided for @customerService18.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService18;

  /// No description provided for @whatsapp33.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp33;

  /// No description provided for @whatsapp34.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp34;

  /// No description provided for @whatsapp35.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp35;

  /// No description provided for @whatsapp36.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp36;

  /// No description provided for @website33.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website33;

  /// No description provided for @website34.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website34;

  /// No description provided for @website35.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website35;

  /// No description provided for @website36.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website36;

  /// No description provided for @facebook33.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook33;

  /// No description provided for @facebook34.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook34;

  /// No description provided for @facebook35.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook35;

  /// No description provided for @facebook36.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook36;

  /// No description provided for @twitter33.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter33;

  /// No description provided for @twitter34.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter34;

  /// No description provided for @twitter35.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter35;

  /// No description provided for @twitter36.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter36;

  /// No description provided for @instagram33.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram33;

  /// No description provided for @instagram34.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram34;

  /// No description provided for @instagram35.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram35;

  /// No description provided for @instagram36.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram36;

  /// No description provided for @customerService19.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService19;

  /// No description provided for @customerService20.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService20;

  /// No description provided for @whatsapp37.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp37;

  /// No description provided for @whatsapp38.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp38;

  /// No description provided for @whatsapp39.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp39;

  /// No description provided for @whatsapp40.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp40;

  /// No description provided for @website37.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website37;

  /// No description provided for @website38.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website38;

  /// No description provided for @website39.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website39;

  /// No description provided for @website40.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website40;

  /// No description provided for @facebook37.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook37;

  /// No description provided for @facebook38.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook38;

  /// No description provided for @facebook39.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook39;

  /// No description provided for @facebook40.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook40;

  /// No description provided for @twitter37.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter37;

  /// No description provided for @twitter38.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter38;

  /// No description provided for @twitter39.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter39;

  /// No description provided for @twitter40.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter40;

  /// No description provided for @instagram37.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram37;

  /// No description provided for @instagram38.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram38;

  /// No description provided for @instagram39.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram39;

  /// No description provided for @instagram40.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram40;

  /// No description provided for @helpCenter11.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter11;

  /// No description provided for @helpCenter12.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter12;

  /// No description provided for @faq31.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq31;

  /// No description provided for @faq32.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq32;

  /// No description provided for @faq33.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq33;

  /// No description provided for @contactUs31.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs31;

  /// No description provided for @contactUs32.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs32;

  /// No description provided for @contactUs33.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs33;

  /// No description provided for @faq34.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq34;

  /// No description provided for @faq35.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq35;

  /// No description provided for @faq36.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq36;

  /// No description provided for @contactUs34.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs34;

  /// No description provided for @contactUs35.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs35;

  /// No description provided for @contactUs36.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs36;

  /// No description provided for @customerService21.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService21;

  /// No description provided for @customerService22.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService22;

  /// No description provided for @whatsapp41.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp41;

  /// No description provided for @whatsapp42.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp42;

  /// No description provided for @whatsapp43.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp43;

  /// No description provided for @whatsapp44.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp44;

  /// No description provided for @website41.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website41;

  /// No description provided for @website42.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website42;

  /// No description provided for @website43.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website43;

  /// No description provided for @website44.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website44;

  /// No description provided for @facebook41.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook41;

  /// No description provided for @facebook42.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook42;

  /// No description provided for @facebook43.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook43;

  /// No description provided for @facebook44.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook44;

  /// No description provided for @twitter41.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter41;

  /// No description provided for @twitter42.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter42;

  /// No description provided for @twitter43.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter43;

  /// No description provided for @twitter44.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter44;

  /// No description provided for @instagram41.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram41;

  /// No description provided for @instagram42.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram42;

  /// No description provided for @instagram43.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram43;

  /// No description provided for @instagram44.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram44;

  /// No description provided for @customerService23.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService23;

  /// No description provided for @customerService24.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService24;

  /// No description provided for @whatsapp45.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp45;

  /// No description provided for @whatsapp46.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp46;

  /// No description provided for @whatsapp47.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp47;

  /// No description provided for @whatsapp48.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp48;

  /// No description provided for @website45.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website45;

  /// No description provided for @website46.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website46;

  /// No description provided for @website47.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website47;

  /// No description provided for @website48.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website48;

  /// No description provided for @facebook45.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook45;

  /// No description provided for @facebook46.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook46;

  /// No description provided for @facebook47.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook47;

  /// No description provided for @facebook48.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook48;

  /// No description provided for @twitter45.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter45;

  /// No description provided for @twitter46.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter46;

  /// No description provided for @twitter47.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter47;

  /// No description provided for @twitter48.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter48;

  /// No description provided for @instagram45.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram45;

  /// No description provided for @instagram46.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram46;

  /// No description provided for @instagram47.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram47;

  /// No description provided for @instagram48.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram48;

  /// No description provided for @helpCenter13.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter13;

  /// No description provided for @helpCenter14.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter14;

  /// No description provided for @faq37.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq37;

  /// No description provided for @faq38.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq38;

  /// No description provided for @faq39.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq39;

  /// No description provided for @contactUs37.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs37;

  /// No description provided for @contactUs38.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs38;

  /// No description provided for @contactUs39.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs39;

  /// No description provided for @faq40.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq40;

  /// No description provided for @faq41.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq41;

  /// No description provided for @faq42.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq42;

  /// No description provided for @contactUs40.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs40;

  /// No description provided for @contactUs41.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs41;

  /// No description provided for @contactUs42.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs42;

  /// No description provided for @customerService25.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService25;

  /// No description provided for @customerService26.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService26;

  /// No description provided for @whatsapp49.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp49;

  /// No description provided for @whatsapp50.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp50;

  /// No description provided for @whatsapp51.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp51;

  /// No description provided for @whatsapp52.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp52;

  /// No description provided for @website49.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website49;

  /// No description provided for @website50.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website50;

  /// No description provided for @website51.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website51;

  /// No description provided for @website52.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website52;

  /// No description provided for @facebook49.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook49;

  /// No description provided for @facebook50.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook50;

  /// No description provided for @facebook51.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook51;

  /// No description provided for @facebook52.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook52;

  /// No description provided for @twitter49.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter49;

  /// No description provided for @twitter50.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter50;

  /// No description provided for @twitter51.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter51;

  /// No description provided for @twitter52.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter52;

  /// No description provided for @instagram49.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram49;

  /// No description provided for @instagram50.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram50;

  /// No description provided for @instagram51.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram51;

  /// No description provided for @instagram52.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram52;

  /// No description provided for @customerService27.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService27;

  /// No description provided for @customerService28.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService28;

  /// No description provided for @whatsapp53.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp53;

  /// No description provided for @whatsapp54.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp54;

  /// No description provided for @whatsapp55.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp55;

  /// No description provided for @whatsapp56.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp56;

  /// No description provided for @website53.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website53;

  /// No description provided for @website54.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website54;

  /// No description provided for @website55.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website55;

  /// No description provided for @website56.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website56;

  /// No description provided for @facebook53.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook53;

  /// No description provided for @facebook54.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook54;

  /// No description provided for @facebook55.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook55;

  /// No description provided for @facebook56.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook56;

  /// No description provided for @twitter53.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter53;

  /// No description provided for @twitter54.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter54;

  /// No description provided for @twitter55.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter55;

  /// No description provided for @twitter56.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter56;

  /// No description provided for @instagram53.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram53;

  /// No description provided for @instagram54.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram54;

  /// No description provided for @instagram55.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram55;

  /// No description provided for @instagram56.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram56;

  /// No description provided for @helpCenter15.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter15;

  /// No description provided for @helpCenter16.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter16;

  /// No description provided for @faq43.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq43;

  /// No description provided for @faq44.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq44;

  /// No description provided for @faq45.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq45;

  /// No description provided for @contactUs43.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs43;

  /// No description provided for @contactUs44.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs44;

  /// No description provided for @contactUs45.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs45;

  /// No description provided for @faq46.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq46;

  /// No description provided for @faq47.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq47;

  /// No description provided for @faq48.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq48;

  /// No description provided for @contactUs46.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs46;

  /// No description provided for @contactUs47.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs47;

  /// No description provided for @contactUs48.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs48;

  /// No description provided for @customerService29.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService29;

  /// No description provided for @customerService30.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService30;

  /// No description provided for @whatsapp57.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp57;

  /// No description provided for @whatsapp58.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp58;

  /// No description provided for @whatsapp59.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp59;

  /// No description provided for @whatsapp60.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp60;

  /// No description provided for @website57.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website57;

  /// No description provided for @website58.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website58;

  /// No description provided for @website59.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website59;

  /// No description provided for @website60.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website60;

  /// No description provided for @facebook57.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook57;

  /// No description provided for @facebook58.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook58;

  /// No description provided for @facebook59.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook59;

  /// No description provided for @facebook60.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook60;

  /// No description provided for @twitter57.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter57;

  /// No description provided for @twitter58.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter58;

  /// No description provided for @twitter59.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter59;

  /// No description provided for @twitter60.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter60;

  /// No description provided for @instagram57.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram57;

  /// No description provided for @instagram58.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram58;

  /// No description provided for @instagram59.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram59;

  /// No description provided for @instagram60.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram60;

  /// No description provided for @customerService31.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService31;

  /// No description provided for @customerService32.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService32;

  /// No description provided for @whatsapp61.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp61;

  /// No description provided for @whatsapp62.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp62;

  /// No description provided for @whatsapp63.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp63;

  /// No description provided for @whatsapp64.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp64;

  /// No description provided for @website61.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website61;

  /// No description provided for @website62.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website62;

  /// No description provided for @website63.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website63;

  /// No description provided for @website64.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website64;

  /// No description provided for @facebook61.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook61;

  /// No description provided for @facebook62.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook62;

  /// No description provided for @facebook63.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook63;

  /// No description provided for @facebook64.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook64;

  /// No description provided for @twitter61.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter61;

  /// No description provided for @twitter62.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter62;

  /// No description provided for @twitter63.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter63;

  /// No description provided for @twitter64.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter64;

  /// No description provided for @instagram61.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram61;

  /// No description provided for @instagram62.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram62;

  /// No description provided for @instagram63.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram63;

  /// No description provided for @instagram64.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram64;

  /// No description provided for @helpCenter17.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter17;

  /// No description provided for @helpCenter18.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter18;

  /// No description provided for @faq49.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq49;

  /// No description provided for @faq50.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq50;

  /// No description provided for @faq51.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq51;

  /// No description provided for @contactUs49.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs49;

  /// No description provided for @contactUs50.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs50;

  /// No description provided for @contactUs51.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs51;

  /// No description provided for @faq52.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq52;

  /// No description provided for @faq53.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq53;

  /// No description provided for @faq54.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq54;

  /// No description provided for @contactUs52.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs52;

  /// No description provided for @contactUs53.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs53;

  /// No description provided for @contactUs54.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs54;

  /// No description provided for @customerService33.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService33;

  /// No description provided for @customerService34.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService34;

  /// No description provided for @whatsapp65.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp65;

  /// No description provided for @whatsapp66.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp66;

  /// No description provided for @whatsapp67.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp67;

  /// No description provided for @whatsapp68.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp68;

  /// No description provided for @website65.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website65;

  /// No description provided for @website66.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website66;

  /// No description provided for @website67.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website67;

  /// No description provided for @website68.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website68;

  /// No description provided for @facebook65.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook65;

  /// No description provided for @facebook66.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook66;

  /// No description provided for @facebook67.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook67;

  /// No description provided for @facebook68.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook68;

  /// No description provided for @twitter65.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter65;

  /// No description provided for @twitter66.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter66;

  /// No description provided for @twitter67.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter67;

  /// No description provided for @twitter68.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter68;

  /// No description provided for @instagram65.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram65;

  /// No description provided for @instagram66.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram66;

  /// No description provided for @instagram67.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram67;

  /// No description provided for @instagram68.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram68;

  /// No description provided for @customerService35.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService35;

  /// No description provided for @customerService36.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService36;

  /// No description provided for @whatsapp69.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp69;

  /// No description provided for @whatsapp70.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp70;

  /// No description provided for @whatsapp71.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp71;

  /// No description provided for @whatsapp72.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp72;

  /// No description provided for @website69.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website69;

  /// No description provided for @website70.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website70;

  /// No description provided for @website71.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website71;

  /// No description provided for @website72.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website72;

  /// No description provided for @facebook69.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook69;

  /// No description provided for @facebook70.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook70;

  /// No description provided for @facebook71.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook71;

  /// No description provided for @facebook72.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook72;

  /// No description provided for @twitter69.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter69;

  /// No description provided for @twitter70.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter70;

  /// No description provided for @twitter71.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter71;

  /// No description provided for @twitter72.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter72;

  /// No description provided for @instagram69.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram69;

  /// No description provided for @instagram70.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram70;

  /// No description provided for @instagram71.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram71;

  /// No description provided for @instagram72.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram72;

  /// No description provided for @helpCenter19.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter19;

  /// No description provided for @helpCenter20.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter20;

  /// No description provided for @faq55.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq55;

  /// No description provided for @faq56.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq56;

  /// No description provided for @faq57.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq57;

  /// No description provided for @contactUs55.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs55;

  /// No description provided for @contactUs56.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs56;

  /// No description provided for @contactUs57.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs57;

  /// No description provided for @faq58.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq58;

  /// No description provided for @faq59.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq59;

  /// No description provided for @faq60.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq60;

  /// No description provided for @contactUs58.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs58;

  /// No description provided for @contactUs59.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs59;

  /// No description provided for @contactUs60.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs60;

  /// No description provided for @customerService37.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService37;

  /// No description provided for @customerService38.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService38;

  /// No description provided for @whatsapp73.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp73;

  /// No description provided for @whatsapp74.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp74;

  /// No description provided for @whatsapp75.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp75;

  /// No description provided for @whatsapp76.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp76;

  /// No description provided for @website73.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website73;

  /// No description provided for @website74.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website74;

  /// No description provided for @website75.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website75;

  /// No description provided for @website76.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website76;

  /// No description provided for @facebook73.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook73;

  /// No description provided for @facebook74.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook74;

  /// No description provided for @facebook75.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook75;

  /// No description provided for @facebook76.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook76;

  /// No description provided for @twitter73.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter73;

  /// No description provided for @twitter74.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter74;

  /// No description provided for @twitter75.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter75;

  /// No description provided for @twitter76.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter76;

  /// No description provided for @instagram73.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram73;

  /// No description provided for @instagram74.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram74;

  /// No description provided for @instagram75.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram75;

  /// No description provided for @instagram76.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram76;

  /// No description provided for @customerService39.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService39;

  /// No description provided for @customerService40.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService40;

  /// No description provided for @whatsapp77.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp77;

  /// No description provided for @whatsapp78.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp78;

  /// No description provided for @whatsapp79.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp79;

  /// No description provided for @whatsapp80.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp80;

  /// No description provided for @website77.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website77;

  /// No description provided for @website78.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website78;

  /// No description provided for @website79.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website79;

  /// No description provided for @website80.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website80;

  /// No description provided for @facebook77.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook77;

  /// No description provided for @facebook78.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook78;

  /// No description provided for @facebook79.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook79;

  /// No description provided for @facebook80.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook80;

  /// No description provided for @twitter77.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter77;

  /// No description provided for @twitter78.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter78;

  /// No description provided for @twitter79.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter79;

  /// No description provided for @twitter80.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter80;

  /// No description provided for @instagram77.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram77;

  /// No description provided for @instagram78.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram78;

  /// No description provided for @instagram79.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram79;

  /// No description provided for @instagram80.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram80;

  /// No description provided for @helpCenter21.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter21;

  /// No description provided for @helpCenter22.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter22;

  /// No description provided for @faq61.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq61;

  /// No description provided for @faq62.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq62;

  /// No description provided for @faq63.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq63;

  /// No description provided for @contactUs61.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs61;

  /// No description provided for @contactUs62.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs62;

  /// No description provided for @contactUs63.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs63;

  /// No description provided for @faq64.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq64;

  /// No description provided for @faq65.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq65;

  /// No description provided for @faq66.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq66;

  /// No description provided for @contactUs64.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs64;

  /// No description provided for @contactUs65.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs65;

  /// No description provided for @contactUs66.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs66;

  /// No description provided for @customerService41.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService41;

  /// No description provided for @customerService42.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService42;

  /// No description provided for @whatsapp81.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp81;

  /// No description provided for @whatsapp82.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp82;

  /// No description provided for @whatsapp83.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp83;

  /// No description provided for @whatsapp84.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp84;

  /// No description provided for @website81.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website81;

  /// No description provided for @website82.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website82;

  /// No description provided for @website83.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website83;

  /// No description provided for @website84.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website84;

  /// No description provided for @facebook81.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook81;

  /// No description provided for @facebook82.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook82;

  /// No description provided for @facebook83.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook83;

  /// No description provided for @facebook84.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook84;

  /// No description provided for @twitter81.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter81;

  /// No description provided for @twitter82.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter82;

  /// No description provided for @twitter83.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter83;

  /// No description provided for @twitter84.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter84;

  /// No description provided for @instagram81.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram81;

  /// No description provided for @instagram82.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram82;

  /// No description provided for @instagram83.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram83;

  /// No description provided for @instagram84.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram84;

  /// No description provided for @customerService43.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService43;

  /// No description provided for @customerService44.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService44;

  /// No description provided for @whatsapp85.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp85;

  /// No description provided for @whatsapp86.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp86;

  /// No description provided for @whatsapp87.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp87;

  /// No description provided for @whatsapp88.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp88;

  /// No description provided for @website85.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website85;

  /// No description provided for @website86.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website86;

  /// No description provided for @website87.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website87;

  /// No description provided for @website88.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website88;

  /// No description provided for @facebook85.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook85;

  /// No description provided for @facebook86.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook86;

  /// No description provided for @facebook87.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook87;

  /// No description provided for @facebook88.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook88;

  /// No description provided for @twitter85.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter85;

  /// No description provided for @twitter86.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter86;

  /// No description provided for @twitter87.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter87;

  /// No description provided for @twitter88.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter88;

  /// No description provided for @instagram85.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram85;

  /// No description provided for @instagram86.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram86;

  /// No description provided for @instagram87.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram87;

  /// No description provided for @instagram88.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram88;

  /// No description provided for @helpCenter23.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter23;

  /// No description provided for @helpCenter24.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter24;

  /// No description provided for @faq67.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq67;

  /// No description provided for @faq68.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq68;

  /// No description provided for @faq69.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq69;

  /// No description provided for @contactUs67.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs67;

  /// No description provided for @contactUs68.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs68;

  /// No description provided for @contactUs69.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs69;

  /// No description provided for @faq70.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq70;

  /// No description provided for @faq71.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq71;

  /// No description provided for @faq72.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq72;

  /// No description provided for @contactUs70.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs70;

  /// No description provided for @contactUs71.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs71;

  /// No description provided for @contactUs72.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs72;

  /// No description provided for @customerService45.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService45;

  /// No description provided for @customerService46.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService46;

  /// No description provided for @whatsapp89.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp89;

  /// No description provided for @whatsapp90.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp90;

  /// No description provided for @whatsapp91.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp91;

  /// No description provided for @whatsapp92.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp92;

  /// No description provided for @website89.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website89;

  /// No description provided for @website90.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website90;

  /// No description provided for @website91.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website91;

  /// No description provided for @website92.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website92;

  /// No description provided for @facebook89.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook89;

  /// No description provided for @facebook90.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook90;

  /// No description provided for @facebook91.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook91;

  /// No description provided for @facebook92.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook92;

  /// No description provided for @twitter89.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter89;

  /// No description provided for @twitter90.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter90;

  /// No description provided for @twitter91.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter91;

  /// No description provided for @twitter92.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter92;

  /// No description provided for @instagram89.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram89;

  /// No description provided for @instagram90.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram90;

  /// No description provided for @instagram91.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram91;

  /// No description provided for @instagram92.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram92;

  /// No description provided for @customerService47.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService47;

  /// No description provided for @customerService48.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService48;

  /// No description provided for @whatsapp93.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp93;

  /// No description provided for @whatsapp94.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp94;

  /// No description provided for @whatsapp95.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp95;

  /// No description provided for @whatsapp96.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp96;

  /// No description provided for @website93.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website93;

  /// No description provided for @website94.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website94;

  /// No description provided for @website95.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website95;

  /// No description provided for @website96.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website96;

  /// No description provided for @facebook93.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook93;

  /// No description provided for @facebook94.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook94;

  /// No description provided for @facebook95.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook95;

  /// No description provided for @facebook96.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook96;

  /// No description provided for @twitter93.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter93;

  /// No description provided for @twitter94.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter94;

  /// No description provided for @twitter95.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter95;

  /// No description provided for @twitter96.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter96;

  /// No description provided for @instagram93.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram93;

  /// No description provided for @instagram94.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram94;

  /// No description provided for @instagram95.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram95;

  /// No description provided for @instagram96.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram96;

  /// No description provided for @helpCenter25.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter25;

  /// No description provided for @helpCenter26.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter26;

  /// No description provided for @faq73.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq73;

  /// No description provided for @faq74.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq74;

  /// No description provided for @faq75.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq75;

  /// No description provided for @contactUs73.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs73;

  /// No description provided for @contactUs74.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs74;

  /// No description provided for @contactUs75.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs75;

  /// No description provided for @faq76.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq76;

  /// No description provided for @faq77.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq77;

  /// No description provided for @faq78.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq78;

  /// No description provided for @contactUs76.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs76;

  /// No description provided for @contactUs77.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs77;

  /// No description provided for @contactUs78.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs78;

  /// No description provided for @customerService49.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService49;

  /// No description provided for @customerService50.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService50;

  /// No description provided for @whatsapp97.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp97;

  /// No description provided for @whatsapp98.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp98;

  /// No description provided for @whatsapp99.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp99;

  /// No description provided for @whatsapp100.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp100;

  /// No description provided for @website97.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website97;

  /// No description provided for @website98.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website98;

  /// No description provided for @website99.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website99;

  /// No description provided for @website100.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website100;

  /// No description provided for @facebook97.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook97;

  /// No description provided for @facebook98.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook98;

  /// No description provided for @facebook99.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook99;

  /// No description provided for @facebook100.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook100;

  /// No description provided for @twitter97.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter97;

  /// No description provided for @twitter98.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter98;

  /// No description provided for @twitter99.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter99;

  /// No description provided for @twitter100.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter100;

  /// No description provided for @instagram97.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram97;

  /// No description provided for @instagram98.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram98;

  /// No description provided for @instagram99.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram99;

  /// No description provided for @instagram100.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram100;

  /// No description provided for @customerService51.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService51;

  /// No description provided for @customerService52.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService52;

  /// No description provided for @whatsapp101.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp101;

  /// No description provided for @whatsapp102.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp102;

  /// No description provided for @whatsapp103.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp103;

  /// No description provided for @whatsapp104.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp104;

  /// No description provided for @website101.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website101;

  /// No description provided for @website102.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website102;

  /// No description provided for @website103.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website103;

  /// No description provided for @website104.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website104;

  /// No description provided for @facebook101.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook101;

  /// No description provided for @facebook102.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook102;

  /// No description provided for @facebook103.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook103;

  /// No description provided for @facebook104.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook104;

  /// No description provided for @twitter101.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter101;

  /// No description provided for @twitter102.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter102;

  /// No description provided for @twitter103.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter103;

  /// No description provided for @twitter104.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter104;

  /// No description provided for @instagram101.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram101;

  /// No description provided for @instagram102.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram102;

  /// No description provided for @instagram103.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram103;

  /// No description provided for @instagram104.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram104;

  /// No description provided for @helpCenter27.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter27;

  /// No description provided for @helpCenter28.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter28;

  /// No description provided for @faq79.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq79;

  /// No description provided for @faq80.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq80;

  /// No description provided for @faq81.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq81;

  /// No description provided for @contactUs79.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs79;

  /// No description provided for @contactUs80.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs80;

  /// No description provided for @contactUs81.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs81;

  /// No description provided for @faq82.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq82;

  /// No description provided for @faq83.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq83;

  /// No description provided for @faq84.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq84;

  /// No description provided for @contactUs82.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs82;

  /// No description provided for @contactUs83.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs83;

  /// No description provided for @contactUs84.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs84;

  /// No description provided for @customerService53.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService53;

  /// No description provided for @customerService54.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService54;

  /// No description provided for @whatsapp105.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp105;

  /// No description provided for @whatsapp106.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp106;

  /// No description provided for @whatsapp107.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp107;

  /// No description provided for @whatsapp108.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp108;

  /// No description provided for @website105.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website105;

  /// No description provided for @website106.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website106;

  /// No description provided for @website107.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website107;

  /// No description provided for @website108.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website108;

  /// No description provided for @facebook105.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook105;

  /// No description provided for @facebook106.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook106;

  /// No description provided for @facebook107.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook107;

  /// No description provided for @facebook108.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook108;

  /// No description provided for @twitter105.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter105;

  /// No description provided for @twitter106.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter106;

  /// No description provided for @twitter107.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter107;

  /// No description provided for @twitter108.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter108;

  /// No description provided for @instagram105.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram105;

  /// No description provided for @instagram106.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram106;

  /// No description provided for @instagram107.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram107;

  /// No description provided for @instagram108.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram108;

  /// No description provided for @customerService55.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService55;

  /// No description provided for @customerService56.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService56;

  /// No description provided for @whatsapp109.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp109;

  /// No description provided for @whatsapp110.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp110;

  /// No description provided for @whatsapp111.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp111;

  /// No description provided for @whatsapp112.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp112;

  /// No description provided for @website109.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website109;

  /// No description provided for @website110.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website110;

  /// No description provided for @website111.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website111;

  /// No description provided for @website112.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website112;

  /// No description provided for @facebook109.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook109;

  /// No description provided for @facebook110.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook110;

  /// No description provided for @facebook111.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook111;

  /// No description provided for @facebook112.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook112;

  /// No description provided for @twitter109.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter109;

  /// No description provided for @twitter110.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter110;

  /// No description provided for @twitter111.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter111;

  /// No description provided for @twitter112.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter112;

  /// No description provided for @instagram109.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram109;

  /// No description provided for @instagram110.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram110;

  /// No description provided for @instagram111.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram111;

  /// No description provided for @instagram112.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram112;

  /// No description provided for @helpCenter29.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter29;

  /// No description provided for @helpCenter30.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter30;

  /// No description provided for @faq85.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq85;

  /// No description provided for @faq86.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq86;

  /// No description provided for @faq87.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq87;

  /// No description provided for @contactUs85.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs85;

  /// No description provided for @contactUs86.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs86;

  /// No description provided for @contactUs87.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs87;

  /// No description provided for @faq88.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq88;

  /// No description provided for @faq89.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq89;

  /// No description provided for @faq90.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq90;

  /// No description provided for @contactUs88.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs88;

  /// No description provided for @contactUs89.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs89;

  /// No description provided for @contactUs90.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs90;

  /// No description provided for @customerService57.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService57;

  /// No description provided for @customerService58.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService58;

  /// No description provided for @whatsapp113.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp113;

  /// No description provided for @whatsapp114.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp114;

  /// No description provided for @whatsapp115.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp115;

  /// No description provided for @whatsapp116.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp116;

  /// No description provided for @website113.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website113;

  /// No description provided for @website114.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website114;

  /// No description provided for @website115.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website115;

  /// No description provided for @website116.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website116;

  /// No description provided for @facebook113.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook113;

  /// No description provided for @facebook114.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook114;

  /// No description provided for @facebook115.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook115;

  /// No description provided for @facebook116.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook116;

  /// No description provided for @twitter113.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter113;

  /// No description provided for @twitter114.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter114;

  /// No description provided for @twitter115.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter115;

  /// No description provided for @twitter116.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter116;

  /// No description provided for @instagram113.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram113;

  /// No description provided for @instagram114.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram114;

  /// No description provided for @instagram115.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram115;

  /// No description provided for @instagram116.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram116;

  /// No description provided for @customerService59.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService59;

  /// No description provided for @customerService60.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService60;

  /// No description provided for @whatsapp117.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp117;

  /// No description provided for @whatsapp118.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp118;

  /// No description provided for @whatsapp119.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp119;

  /// No description provided for @whatsapp120.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp120;

  /// No description provided for @website117.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website117;

  /// No description provided for @website118.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website118;

  /// No description provided for @website119.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website119;

  /// No description provided for @website120.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website120;

  /// No description provided for @facebook117.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook117;

  /// No description provided for @facebook118.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook118;

  /// No description provided for @facebook119.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook119;

  /// No description provided for @facebook120.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook120;

  /// No description provided for @twitter117.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter117;

  /// No description provided for @twitter118.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter118;

  /// No description provided for @twitter119.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter119;

  /// No description provided for @twitter120.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter120;

  /// No description provided for @instagram117.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram117;

  /// No description provided for @instagram118.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram118;

  /// No description provided for @instagram119.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram119;

  /// No description provided for @instagram120.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram120;

  /// No description provided for @helpCenter31.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter31;

  /// No description provided for @helpCenter32.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter32;

  /// No description provided for @faq91.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq91;

  /// No description provided for @faq92.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq92;

  /// No description provided for @faq93.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq93;

  /// No description provided for @contactUs91.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs91;

  /// No description provided for @contactUs92.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs92;

  /// No description provided for @contactUs93.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs93;

  /// No description provided for @faq94.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq94;

  /// No description provided for @faq95.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq95;

  /// No description provided for @faq96.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq96;

  /// No description provided for @contactUs94.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs94;

  /// No description provided for @contactUs95.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs95;

  /// No description provided for @contactUs96.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs96;

  /// No description provided for @customerService61.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService61;

  /// No description provided for @customerService62.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService62;

  /// No description provided for @whatsapp121.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp121;

  /// No description provided for @whatsapp122.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp122;

  /// No description provided for @whatsapp123.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp123;

  /// No description provided for @whatsapp124.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp124;

  /// No description provided for @website121.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website121;

  /// No description provided for @website122.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website122;

  /// No description provided for @website123.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website123;

  /// No description provided for @website124.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website124;

  /// No description provided for @facebook121.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook121;

  /// No description provided for @facebook122.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook122;

  /// No description provided for @facebook123.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook123;

  /// No description provided for @facebook124.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook124;

  /// No description provided for @twitter121.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter121;

  /// No description provided for @twitter122.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter122;

  /// No description provided for @twitter123.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter123;

  /// No description provided for @twitter124.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter124;

  /// No description provided for @instagram121.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram121;

  /// No description provided for @instagram122.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram122;

  /// No description provided for @instagram123.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram123;

  /// No description provided for @instagram124.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram124;

  /// No description provided for @customerService63.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService63;

  /// No description provided for @customerService64.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService64;

  /// No description provided for @whatsapp125.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp125;

  /// No description provided for @whatsapp126.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp126;

  /// No description provided for @whatsapp127.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp127;

  /// No description provided for @whatsapp128.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp128;

  /// No description provided for @website125.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website125;

  /// No description provided for @website126.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website126;

  /// No description provided for @website127.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website127;

  /// No description provided for @website128.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website128;

  /// No description provided for @facebook125.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook125;

  /// No description provided for @facebook126.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook126;

  /// No description provided for @facebook127.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook127;

  /// No description provided for @facebook128.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook128;

  /// No description provided for @twitter125.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter125;

  /// No description provided for @twitter126.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter126;

  /// No description provided for @twitter127.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter127;

  /// No description provided for @twitter128.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter128;

  /// No description provided for @instagram125.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram125;

  /// No description provided for @instagram126.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram126;

  /// No description provided for @instagram127.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram127;

  /// No description provided for @instagram128.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram128;

  /// No description provided for @helpCenter33.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter33;

  /// No description provided for @helpCenter34.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter34;

  /// No description provided for @faq97.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq97;

  /// No description provided for @faq98.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq98;

  /// No description provided for @faq99.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq99;

  /// No description provided for @contactUs97.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs97;

  /// No description provided for @contactUs98.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs98;

  /// No description provided for @contactUs99.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs99;

  /// No description provided for @faq100.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq100;

  /// No description provided for @faq101.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq101;

  /// No description provided for @faq102.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq102;

  /// No description provided for @contactUs100.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs100;

  /// No description provided for @contactUs101.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs101;

  /// No description provided for @contactUs102.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs102;

  /// No description provided for @customerService65.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService65;

  /// No description provided for @customerService66.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService66;

  /// No description provided for @whatsapp129.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp129;

  /// No description provided for @whatsapp130.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp130;

  /// No description provided for @whatsapp131.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp131;

  /// No description provided for @whatsapp132.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp132;

  /// No description provided for @website129.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website129;

  /// No description provided for @website130.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website130;

  /// No description provided for @website131.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website131;

  /// No description provided for @website132.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website132;

  /// No description provided for @facebook129.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook129;

  /// No description provided for @facebook130.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook130;

  /// No description provided for @facebook131.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook131;

  /// No description provided for @facebook132.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook132;

  /// No description provided for @twitter129.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter129;

  /// No description provided for @twitter130.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter130;

  /// No description provided for @twitter131.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter131;

  /// No description provided for @twitter132.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter132;

  /// No description provided for @instagram129.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram129;

  /// No description provided for @instagram130.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram130;

  /// No description provided for @instagram131.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram131;

  /// No description provided for @instagram132.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram132;

  /// No description provided for @customerService67.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService67;

  /// No description provided for @customerService68.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService68;

  /// No description provided for @whatsapp133.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp133;

  /// No description provided for @whatsapp134.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp134;

  /// No description provided for @whatsapp135.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp135;

  /// No description provided for @whatsapp136.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp136;

  /// No description provided for @website133.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website133;

  /// No description provided for @website134.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website134;

  /// No description provided for @website135.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website135;

  /// No description provided for @website136.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website136;

  /// No description provided for @facebook133.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook133;

  /// No description provided for @facebook134.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook134;

  /// No description provided for @facebook135.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook135;

  /// No description provided for @facebook136.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook136;

  /// No description provided for @twitter133.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter133;

  /// No description provided for @twitter134.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter134;

  /// No description provided for @twitter135.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter135;

  /// No description provided for @twitter136.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter136;

  /// No description provided for @instagram133.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram133;

  /// No description provided for @instagram134.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram134;

  /// No description provided for @instagram135.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram135;

  /// No description provided for @instagram136.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram136;

  /// No description provided for @helpCenter35.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter35;

  /// No description provided for @helpCenter36.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter36;

  /// No description provided for @faq103.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq103;

  /// No description provided for @faq104.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq104;

  /// No description provided for @faq105.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq105;

  /// No description provided for @contactUs103.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs103;

  /// No description provided for @contactUs104.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs104;

  /// No description provided for @contactUs105.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs105;

  /// No description provided for @faq106.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq106;

  /// No description provided for @faq107.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq107;

  /// No description provided for @faq108.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq108;

  /// No description provided for @contactUs106.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs106;

  /// No description provided for @contactUs107.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs107;

  /// No description provided for @contactUs108.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs108;

  /// No description provided for @customerService69.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService69;

  /// No description provided for @customerService70.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService70;

  /// No description provided for @whatsapp137.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp137;

  /// No description provided for @whatsapp138.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp138;

  /// No description provided for @whatsapp139.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp139;

  /// No description provided for @whatsapp140.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp140;

  /// No description provided for @website137.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website137;

  /// No description provided for @website138.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website138;

  /// No description provided for @website139.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website139;

  /// No description provided for @website140.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website140;

  /// No description provided for @facebook137.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook137;

  /// No description provided for @facebook138.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook138;

  /// No description provided for @facebook139.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook139;

  /// No description provided for @facebook140.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook140;

  /// No description provided for @twitter137.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter137;

  /// No description provided for @twitter138.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter138;

  /// No description provided for @twitter139.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter139;

  /// No description provided for @twitter140.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter140;

  /// No description provided for @instagram137.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram137;

  /// No description provided for @instagram138.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram138;

  /// No description provided for @instagram139.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram139;

  /// No description provided for @instagram140.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram140;

  /// No description provided for @customerService71.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService71;

  /// No description provided for @customerService72.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService72;

  /// No description provided for @whatsapp141.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp141;

  /// No description provided for @whatsapp142.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp142;

  /// No description provided for @whatsapp143.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp143;

  /// No description provided for @whatsapp144.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp144;

  /// No description provided for @website141.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website141;

  /// No description provided for @website142.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website142;

  /// No description provided for @website143.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website143;

  /// No description provided for @website144.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website144;

  /// No description provided for @facebook141.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook141;

  /// No description provided for @facebook142.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook142;

  /// No description provided for @facebook143.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook143;

  /// No description provided for @facebook144.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook144;

  /// No description provided for @twitter141.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter141;

  /// No description provided for @twitter142.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter142;

  /// No description provided for @twitter143.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter143;

  /// No description provided for @twitter144.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter144;

  /// No description provided for @instagram141.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram141;

  /// No description provided for @instagram142.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram142;

  /// No description provided for @instagram143.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram143;

  /// No description provided for @instagram144.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram144;

  /// No description provided for @helpCenter37.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter37;

  /// No description provided for @helpCenter38.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter38;

  /// No description provided for @faq109.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq109;

  /// No description provided for @faq110.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq110;

  /// No description provided for @faq111.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq111;

  /// No description provided for @contactUs109.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs109;

  /// No description provided for @contactUs110.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs110;

  /// No description provided for @contactUs111.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs111;

  /// No description provided for @faq112.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq112;

  /// No description provided for @faq113.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq113;

  /// No description provided for @faq114.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq114;

  /// No description provided for @contactUs112.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs112;

  /// No description provided for @contactUs113.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs113;

  /// No description provided for @contactUs114.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs114;

  /// No description provided for @customerService73.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService73;

  /// No description provided for @customerService74.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService74;

  /// No description provided for @whatsapp145.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp145;

  /// No description provided for @whatsapp146.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp146;

  /// No description provided for @whatsapp147.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp147;

  /// No description provided for @whatsapp148.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp148;

  /// No description provided for @website145.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website145;

  /// No description provided for @website146.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website146;

  /// No description provided for @website147.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website147;

  /// No description provided for @website148.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website148;

  /// No description provided for @facebook145.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook145;

  /// No description provided for @facebook146.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook146;

  /// No description provided for @facebook147.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook147;

  /// No description provided for @facebook148.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook148;

  /// No description provided for @twitter145.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter145;

  /// No description provided for @twitter146.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter146;

  /// No description provided for @twitter147.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter147;

  /// No description provided for @twitter148.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter148;

  /// No description provided for @instagram145.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram145;

  /// No description provided for @instagram146.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram146;

  /// No description provided for @instagram147.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram147;

  /// No description provided for @instagram148.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram148;

  /// No description provided for @customerService75.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService75;

  /// No description provided for @customerService76.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService76;

  /// No description provided for @whatsapp149.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp149;

  /// No description provided for @whatsapp150.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp150;

  /// No description provided for @whatsapp151.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp151;

  /// No description provided for @whatsapp152.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp152;

  /// No description provided for @website149.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website149;

  /// No description provided for @website150.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website150;

  /// No description provided for @website151.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website151;

  /// No description provided for @website152.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website152;

  /// No description provided for @facebook149.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook149;

  /// No description provided for @facebook150.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook150;

  /// No description provided for @facebook151.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook151;

  /// No description provided for @facebook152.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook152;

  /// No description provided for @twitter149.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter149;

  /// No description provided for @twitter150.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter150;

  /// No description provided for @twitter151.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter151;

  /// No description provided for @twitter152.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter152;

  /// No description provided for @instagram149.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram149;

  /// No description provided for @instagram150.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram150;

  /// No description provided for @instagram151.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram151;

  /// No description provided for @instagram152.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram152;

  /// No description provided for @helpCenter39.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter39;

  /// No description provided for @helpCenter40.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter40;

  /// No description provided for @faq115.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq115;

  /// No description provided for @faq116.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq116;

  /// No description provided for @faq117.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq117;

  /// No description provided for @contactUs115.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs115;

  /// No description provided for @contactUs116.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs116;

  /// No description provided for @contactUs117.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs117;

  /// No description provided for @faq118.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq118;

  /// No description provided for @faq119.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq119;

  /// No description provided for @faq120.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq120;

  /// No description provided for @contactUs118.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs118;

  /// No description provided for @contactUs119.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs119;

  /// No description provided for @contactUs120.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs120;

  /// No description provided for @customerService77.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService77;

  /// No description provided for @customerService78.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService78;

  /// No description provided for @whatsapp153.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp153;

  /// No description provided for @whatsapp154.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp154;

  /// No description provided for @whatsapp155.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp155;

  /// No description provided for @whatsapp156.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp156;

  /// No description provided for @website153.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website153;

  /// No description provided for @website154.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website154;

  /// No description provided for @website155.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website155;

  /// No description provided for @website156.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website156;

  /// No description provided for @facebook153.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook153;

  /// No description provided for @facebook154.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook154;

  /// No description provided for @facebook155.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook155;

  /// No description provided for @facebook156.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook156;

  /// No description provided for @twitter153.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter153;

  /// No description provided for @twitter154.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter154;

  /// No description provided for @twitter155.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter155;

  /// No description provided for @twitter156.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter156;

  /// No description provided for @instagram153.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram153;

  /// No description provided for @instagram154.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram154;

  /// No description provided for @instagram155.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram155;

  /// No description provided for @instagram156.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram156;

  /// No description provided for @customerService79.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService79;

  /// No description provided for @customerService80.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService80;

  /// No description provided for @whatsapp157.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp157;

  /// No description provided for @whatsapp158.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp158;

  /// No description provided for @whatsapp159.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp159;

  /// No description provided for @whatsapp160.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp160;

  /// No description provided for @website157.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website157;

  /// No description provided for @website158.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website158;

  /// No description provided for @website159.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website159;

  /// No description provided for @website160.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website160;

  /// No description provided for @facebook157.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook157;

  /// No description provided for @facebook158.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook158;

  /// No description provided for @facebook159.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook159;

  /// No description provided for @facebook160.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook160;

  /// No description provided for @twitter157.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter157;

  /// No description provided for @twitter158.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter158;

  /// No description provided for @twitter159.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter159;

  /// No description provided for @twitter160.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter160;

  /// No description provided for @instagram157.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram157;

  /// No description provided for @instagram158.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram158;

  /// No description provided for @instagram159.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram159;

  /// No description provided for @instagram160.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram160;

  /// No description provided for @helpCenter41.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter41;

  /// No description provided for @helpCenter42.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter42;

  /// No description provided for @faq121.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq121;

  /// No description provided for @faq122.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq122;

  /// No description provided for @faq123.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq123;

  /// No description provided for @contactUs121.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs121;

  /// No description provided for @contactUs122.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs122;

  /// No description provided for @contactUs123.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs123;

  /// No description provided for @faq124.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq124;

  /// No description provided for @faq125.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq125;

  /// No description provided for @faq126.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq126;

  /// No description provided for @contactUs124.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs124;

  /// No description provided for @contactUs125.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs125;

  /// No description provided for @contactUs126.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs126;

  /// No description provided for @customerService81.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService81;

  /// No description provided for @customerService82.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService82;

  /// No description provided for @whatsapp161.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp161;

  /// No description provided for @whatsapp162.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp162;

  /// No description provided for @whatsapp163.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp163;

  /// No description provided for @whatsapp164.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp164;

  /// No description provided for @website161.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website161;

  /// No description provided for @website162.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website162;

  /// No description provided for @website163.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website163;

  /// No description provided for @website164.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website164;

  /// No description provided for @facebook161.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook161;

  /// No description provided for @facebook162.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook162;

  /// No description provided for @facebook163.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook163;

  /// No description provided for @facebook164.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook164;

  /// No description provided for @twitter161.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter161;

  /// No description provided for @twitter162.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter162;

  /// No description provided for @twitter163.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter163;

  /// No description provided for @twitter164.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter164;

  /// No description provided for @instagram161.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram161;

  /// No description provided for @instagram162.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram162;

  /// No description provided for @instagram163.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram163;

  /// No description provided for @instagram164.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram164;

  /// No description provided for @customerService83.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService83;

  /// No description provided for @customerService84.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService84;

  /// No description provided for @whatsapp165.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp165;

  /// No description provided for @whatsapp166.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp166;

  /// No description provided for @whatsapp167.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp167;

  /// No description provided for @whatsapp168.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp168;

  /// No description provided for @website165.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website165;

  /// No description provided for @website166.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website166;

  /// No description provided for @website167.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website167;

  /// No description provided for @website168.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website168;

  /// No description provided for @facebook165.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook165;

  /// No description provided for @facebook166.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook166;

  /// No description provided for @facebook167.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook167;

  /// No description provided for @facebook168.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook168;

  /// No description provided for @twitter165.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter165;

  /// No description provided for @twitter166.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter166;

  /// No description provided for @twitter167.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter167;

  /// No description provided for @twitter168.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter168;

  /// No description provided for @instagram165.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram165;

  /// No description provided for @instagram166.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram166;

  /// No description provided for @instagram167.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram167;

  /// No description provided for @instagram168.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram168;

  /// No description provided for @helpCenter43.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter43;

  /// No description provided for @helpCenter44.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter44;

  /// No description provided for @faq127.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq127;

  /// No description provided for @faq128.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq128;

  /// No description provided for @faq129.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq129;

  /// No description provided for @contactUs127.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs127;

  /// No description provided for @contactUs128.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs128;

  /// No description provided for @contactUs129.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs129;

  /// No description provided for @faq130.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq130;

  /// No description provided for @faq131.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq131;

  /// No description provided for @faq132.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq132;

  /// No description provided for @contactUs130.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs130;

  /// No description provided for @contactUs131.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs131;

  /// No description provided for @contactUs132.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs132;

  /// No description provided for @customerService85.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService85;

  /// No description provided for @customerService86.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService86;

  /// No description provided for @whatsapp169.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp169;

  /// No description provided for @whatsapp170.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp170;

  /// No description provided for @whatsapp171.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp171;

  /// No description provided for @whatsapp172.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp172;

  /// No description provided for @website169.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website169;

  /// No description provided for @website170.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website170;

  /// No description provided for @website171.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website171;

  /// No description provided for @website172.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website172;

  /// No description provided for @facebook169.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook169;

  /// No description provided for @facebook170.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook170;

  /// No description provided for @facebook171.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook171;

  /// No description provided for @facebook172.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook172;

  /// No description provided for @twitter169.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter169;

  /// No description provided for @twitter170.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter170;

  /// No description provided for @twitter171.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter171;

  /// No description provided for @twitter172.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter172;

  /// No description provided for @instagram169.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram169;

  /// No description provided for @instagram170.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram170;

  /// No description provided for @instagram171.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram171;

  /// No description provided for @instagram172.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram172;

  /// No description provided for @customerService87.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService87;

  /// No description provided for @customerService88.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService88;

  /// No description provided for @whatsapp173.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp173;

  /// No description provided for @whatsapp174.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp174;

  /// No description provided for @whatsapp175.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp175;

  /// No description provided for @whatsapp176.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp176;

  /// No description provided for @website173.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website173;

  /// No description provided for @website174.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website174;

  /// No description provided for @website175.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website175;

  /// No description provided for @website176.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website176;

  /// No description provided for @facebook173.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook173;

  /// No description provided for @facebook174.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook174;

  /// No description provided for @facebook175.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook175;

  /// No description provided for @facebook176.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook176;

  /// No description provided for @twitter173.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter173;

  /// No description provided for @twitter174.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter174;

  /// No description provided for @twitter175.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter175;

  /// No description provided for @twitter176.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter176;

  /// No description provided for @instagram173.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram173;

  /// No description provided for @instagram174.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram174;

  /// No description provided for @instagram175.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram175;

  /// No description provided for @instagram176.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram176;

  /// No description provided for @helpCenter45.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter45;

  /// No description provided for @helpCenter46.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter46;

  /// No description provided for @faq133.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq133;

  /// No description provided for @faq134.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq134;

  /// No description provided for @faq135.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq135;

  /// No description provided for @contactUs133.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs133;

  /// No description provided for @contactUs134.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs134;

  /// No description provided for @contactUs135.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs135;

  /// No description provided for @faq136.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq136;

  /// No description provided for @faq137.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq137;

  /// No description provided for @faq138.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq138;

  /// No description provided for @contactUs136.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs136;

  /// No description provided for @contactUs137.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs137;

  /// No description provided for @contactUs138.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs138;

  /// No description provided for @customerService89.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService89;

  /// No description provided for @customerService90.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService90;

  /// No description provided for @whatsapp177.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp177;

  /// No description provided for @whatsapp178.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp178;

  /// No description provided for @whatsapp179.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp179;

  /// No description provided for @whatsapp180.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp180;

  /// No description provided for @website177.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website177;

  /// No description provided for @website178.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website178;

  /// No description provided for @website179.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website179;

  /// No description provided for @website180.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website180;

  /// No description provided for @facebook177.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook177;

  /// No description provided for @facebook178.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook178;

  /// No description provided for @facebook179.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook179;

  /// No description provided for @facebook180.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook180;

  /// No description provided for @twitter177.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter177;

  /// No description provided for @twitter178.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter178;

  /// No description provided for @twitter179.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter179;

  /// No description provided for @twitter180.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter180;

  /// No description provided for @instagram177.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram177;

  /// No description provided for @instagram178.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram178;

  /// No description provided for @instagram179.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram179;

  /// No description provided for @instagram180.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram180;

  /// No description provided for @customerService91.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService91;

  /// No description provided for @customerService92.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService92;

  /// No description provided for @whatsapp181.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp181;

  /// No description provided for @whatsapp182.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp182;

  /// No description provided for @whatsapp183.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp183;

  /// No description provided for @whatsapp184.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp184;

  /// No description provided for @website181.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website181;

  /// No description provided for @website182.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website182;

  /// No description provided for @website183.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website183;

  /// No description provided for @website184.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website184;

  /// No description provided for @facebook181.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook181;

  /// No description provided for @facebook182.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook182;

  /// No description provided for @facebook183.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook183;

  /// No description provided for @facebook184.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook184;

  /// No description provided for @twitter181.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter181;

  /// No description provided for @twitter182.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter182;

  /// No description provided for @twitter183.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter183;

  /// No description provided for @twitter184.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter184;

  /// No description provided for @instagram181.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram181;

  /// No description provided for @instagram182.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram182;

  /// No description provided for @instagram183.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram183;

  /// No description provided for @instagram184.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram184;

  /// No description provided for @helpCenter47.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter47;

  /// No description provided for @helpCenter48.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter48;

  /// No description provided for @faq139.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq139;

  /// No description provided for @faq140.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq140;

  /// No description provided for @faq141.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq141;

  /// No description provided for @contactUs139.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs139;

  /// No description provided for @contactUs140.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs140;

  /// No description provided for @contactUs141.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs141;

  /// No description provided for @faq142.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq142;

  /// No description provided for @faq143.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq143;

  /// No description provided for @faq144.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq144;

  /// No description provided for @contactUs142.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs142;

  /// No description provided for @contactUs143.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs143;

  /// No description provided for @contactUs144.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs144;

  /// No description provided for @customerService93.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService93;

  /// No description provided for @customerService94.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService94;

  /// No description provided for @whatsapp185.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp185;

  /// No description provided for @whatsapp186.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp186;

  /// No description provided for @whatsapp187.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp187;

  /// No description provided for @whatsapp188.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp188;

  /// No description provided for @website185.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website185;

  /// No description provided for @website186.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website186;

  /// No description provided for @website187.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website187;

  /// No description provided for @website188.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website188;

  /// No description provided for @facebook185.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook185;

  /// No description provided for @facebook186.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook186;

  /// No description provided for @facebook187.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook187;

  /// No description provided for @facebook188.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook188;

  /// No description provided for @twitter185.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter185;

  /// No description provided for @twitter186.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter186;

  /// No description provided for @twitter187.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter187;

  /// No description provided for @twitter188.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter188;

  /// No description provided for @instagram185.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram185;

  /// No description provided for @instagram186.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram186;

  /// No description provided for @instagram187.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram187;

  /// No description provided for @instagram188.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram188;

  /// No description provided for @customerService95.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService95;

  /// No description provided for @customerService96.
  ///
  /// In en, this message translates to:
  /// **'Customer Service'**
  String get customerService96;

  /// No description provided for @whatsapp189.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp189;

  /// No description provided for @whatsapp190.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp190;

  /// No description provided for @whatsapp191.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp191;

  /// No description provided for @whatsapp192.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp192;

  /// No description provided for @website189.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website189;

  /// No description provided for @website190.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website190;

  /// No description provided for @website191.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website191;

  /// No description provided for @website192.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website192;

  /// No description provided for @facebook189.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook189;

  /// No description provided for @facebook190.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook190;

  /// No description provided for @facebook191.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook191;

  /// No description provided for @facebook192.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook192;

  /// No description provided for @twitter189.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter189;

  /// No description provided for @twitter190.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter190;

  /// No description provided for @twitter191.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter191;

  /// No description provided for @twitter192.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get twitter192;

  /// No description provided for @instagram189.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram189;

  /// No description provided for @instagram190.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram190;

  /// No description provided for @instagram191.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram191;

  /// No description provided for @instagram192.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram192;

  /// No description provided for @applicationsWillBeMarkedForEasy.
  ///
  /// In en, this message translates to:
  /// **'Applications will be marked for easy navigation'**
  String get applicationsWillBeMarkedForEasy;

  /// No description provided for @s00.
  ///
  /// In en, this message translates to:
  /// **'00'**
  String get s00;

  /// No description provided for @s002.
  ///
  /// In en, this message translates to:
  /// **'00'**
  String get s002;

  /// No description provided for @section.
  ///
  /// In en, this message translates to:
  /// **'Section'**
  String get section;

  /// No description provided for @section2.
  ///
  /// In en, this message translates to:
  /// **'Section'**
  String get section2;

  /// No description provided for @s003.
  ///
  /// In en, this message translates to:
  /// **'00'**
  String get s003;

  /// No description provided for @s004.
  ///
  /// In en, this message translates to:
  /// **'00'**
  String get s004;

  /// No description provided for @section3.
  ///
  /// In en, this message translates to:
  /// **'Section'**
  String get section3;

  /// No description provided for @section4.
  ///
  /// In en, this message translates to:
  /// **'Section'**
  String get section4;

  /// No description provided for @applicationsWillBeMarkedForEasy2.
  ///
  /// In en, this message translates to:
  /// **'Applications will be marked for easy navigation'**
  String get applicationsWillBeMarkedForEasy2;

  /// No description provided for @s005.
  ///
  /// In en, this message translates to:
  /// **'00'**
  String get s005;

  /// No description provided for @s006.
  ///
  /// In en, this message translates to:
  /// **'00'**
  String get s006;

  /// No description provided for @section5.
  ///
  /// In en, this message translates to:
  /// **'Section'**
  String get section5;

  /// No description provided for @section6.
  ///
  /// In en, this message translates to:
  /// **'Section'**
  String get section6;

  /// No description provided for @s007.
  ///
  /// In en, this message translates to:
  /// **'00'**
  String get s007;

  /// No description provided for @s008.
  ///
  /// In en, this message translates to:
  /// **'00'**
  String get s008;

  /// No description provided for @section7.
  ///
  /// In en, this message translates to:
  /// **'Section'**
  String get section7;

  /// No description provided for @section8.
  ///
  /// In en, this message translates to:
  /// **'Section'**
  String get section8;

  /// No description provided for @screenPreview.
  ///
  /// In en, this message translates to:
  /// **'SCREEN PREVIEW'**
  String get screenPreview;

  /// No description provided for @lightMode.
  ///
  /// In en, this message translates to:
  /// **'LIGHT MODE'**
  String get lightMode;

  /// No description provided for @lightMode2.
  ///
  /// In en, this message translates to:
  /// **'LIGHT MODE'**
  String get lightMode2;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'DARK MODE'**
  String get darkMode;

  /// No description provided for @darkMode2.
  ///
  /// In en, this message translates to:
  /// **'DARK MODE'**
  String get darkMode2;

  /// No description provided for @lightMode3.
  ///
  /// In en, this message translates to:
  /// **'LIGHT MODE'**
  String get lightMode3;

  /// No description provided for @lightMode4.
  ///
  /// In en, this message translates to:
  /// **'LIGHT MODE'**
  String get lightMode4;

  /// No description provided for @darkMode3.
  ///
  /// In en, this message translates to:
  /// **'DARK MODE'**
  String get darkMode3;

  /// No description provided for @darkMode4.
  ///
  /// In en, this message translates to:
  /// **'DARK MODE'**
  String get darkMode4;

  /// No description provided for @screenPreview2.
  ///
  /// In en, this message translates to:
  /// **'SCREEN PREVIEW'**
  String get screenPreview2;

  /// No description provided for @lightMode5.
  ///
  /// In en, this message translates to:
  /// **'LIGHT MODE'**
  String get lightMode5;

  /// No description provided for @lightMode6.
  ///
  /// In en, this message translates to:
  /// **'LIGHT MODE'**
  String get lightMode6;

  /// No description provided for @darkMode5.
  ///
  /// In en, this message translates to:
  /// **'DARK MODE'**
  String get darkMode5;

  /// No description provided for @darkMode6.
  ///
  /// In en, this message translates to:
  /// **'DARK MODE'**
  String get darkMode6;

  /// No description provided for @lightMode7.
  ///
  /// In en, this message translates to:
  /// **'LIGHT MODE'**
  String get lightMode7;

  /// No description provided for @lightMode8.
  ///
  /// In en, this message translates to:
  /// **'LIGHT MODE'**
  String get lightMode8;

  /// No description provided for @darkMode7.
  ///
  /// In en, this message translates to:
  /// **'DARK MODE'**
  String get darkMode7;

  /// No description provided for @darkMode8.
  ///
  /// In en, this message translates to:
  /// **'DARK MODE'**
  String get darkMode8;

  /// No description provided for @s01.
  ///
  /// In en, this message translates to:
  /// **'01'**
  String get s01;

  /// No description provided for @s012.
  ///
  /// In en, this message translates to:
  /// **'01'**
  String get s012;

  /// No description provided for @onboarding.
  ///
  /// In en, this message translates to:
  /// **'Onboarding'**
  String get onboarding;

  /// No description provided for @onboarding2.
  ///
  /// In en, this message translates to:
  /// **'Onboarding'**
  String get onboarding2;

  /// No description provided for @s013.
  ///
  /// In en, this message translates to:
  /// **'01'**
  String get s013;

  /// No description provided for @s014.
  ///
  /// In en, this message translates to:
  /// **'01'**
  String get s014;

  /// No description provided for @onboarding3.
  ///
  /// In en, this message translates to:
  /// **'Onboarding'**
  String get onboarding3;

  /// No description provided for @onboarding4.
  ///
  /// In en, this message translates to:
  /// **'Onboarding'**
  String get onboarding4;

  /// No description provided for @s02.
  ///
  /// In en, this message translates to:
  /// **'02'**
  String get s02;

  /// No description provided for @s022.
  ///
  /// In en, this message translates to:
  /// **'02'**
  String get s022;

  /// No description provided for @letsInSignUpSignIn.
  ///
  /// In en, this message translates to:
  /// **'Let’s in (Sign up, Sign in)'**
  String get letsInSignUpSignIn;

  /// No description provided for @letsInSignUpSignIn2.
  ///
  /// In en, this message translates to:
  /// **'Let’s in (Sign up, Sign in)'**
  String get letsInSignUpSignIn2;

  /// No description provided for @s023.
  ///
  /// In en, this message translates to:
  /// **'02'**
  String get s023;

  /// No description provided for @s024.
  ///
  /// In en, this message translates to:
  /// **'02'**
  String get s024;

  /// No description provided for @letsInSignUpSignIn3.
  ///
  /// In en, this message translates to:
  /// **'Let’s in (Sign up, Sign in)'**
  String get letsInSignUpSignIn3;

  /// No description provided for @letsInSignUpSignIn4.
  ///
  /// In en, this message translates to:
  /// **'Let’s in (Sign up, Sign in)'**
  String get letsInSignUpSignIn4;

  /// No description provided for @s03.
  ///
  /// In en, this message translates to:
  /// **'03'**
  String get s03;

  /// No description provided for @s032.
  ///
  /// In en, this message translates to:
  /// **'03'**
  String get s032;

  /// No description provided for @accountSetup.
  ///
  /// In en, this message translates to:
  /// **'Account Setup'**
  String get accountSetup;

  /// No description provided for @accountSetup2.
  ///
  /// In en, this message translates to:
  /// **'Account Setup'**
  String get accountSetup2;

  /// No description provided for @s033.
  ///
  /// In en, this message translates to:
  /// **'03'**
  String get s033;

  /// No description provided for @s034.
  ///
  /// In en, this message translates to:
  /// **'03'**
  String get s034;

  /// No description provided for @accountSetup3.
  ///
  /// In en, this message translates to:
  /// **'Account Setup'**
  String get accountSetup3;

  /// No description provided for @accountSetup4.
  ///
  /// In en, this message translates to:
  /// **'Account Setup'**
  String get accountSetup4;

  /// No description provided for @s04.
  ///
  /// In en, this message translates to:
  /// **'04'**
  String get s04;

  /// No description provided for @s042.
  ///
  /// In en, this message translates to:
  /// **'04'**
  String get s042;

  /// No description provided for @forgotResetPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot & Reset Password'**
  String get forgotResetPassword;

  /// No description provided for @forgotResetPassword2.
  ///
  /// In en, this message translates to:
  /// **'Forgot & Reset Password'**
  String get forgotResetPassword2;

  /// No description provided for @s043.
  ///
  /// In en, this message translates to:
  /// **'04'**
  String get s043;

  /// No description provided for @s044.
  ///
  /// In en, this message translates to:
  /// **'04'**
  String get s044;

  /// No description provided for @forgotResetPassword3.
  ///
  /// In en, this message translates to:
  /// **'Forgot & Reset Password'**
  String get forgotResetPassword3;

  /// No description provided for @forgotResetPassword4.
  ///
  /// In en, this message translates to:
  /// **'Forgot & Reset Password'**
  String get forgotResetPassword4;

  /// No description provided for @s05.
  ///
  /// In en, this message translates to:
  /// **'05'**
  String get s05;

  /// No description provided for @s052.
  ///
  /// In en, this message translates to:
  /// **'05'**
  String get s052;

  /// No description provided for @homeActionMenu.
  ///
  /// In en, this message translates to:
  /// **'Home & Action Menu'**
  String get homeActionMenu;

  /// No description provided for @homeActionMenu2.
  ///
  /// In en, this message translates to:
  /// **'Home & Action Menu'**
  String get homeActionMenu2;

  /// No description provided for @s053.
  ///
  /// In en, this message translates to:
  /// **'05'**
  String get s053;

  /// No description provided for @s054.
  ///
  /// In en, this message translates to:
  /// **'05'**
  String get s054;

  /// No description provided for @homeActionMenu3.
  ///
  /// In en, this message translates to:
  /// **'Home & Action Menu'**
  String get homeActionMenu3;

  /// No description provided for @homeActionMenu4.
  ///
  /// In en, this message translates to:
  /// **'Home & Action Menu'**
  String get homeActionMenu4;

  /// No description provided for @actionMenu.
  ///
  /// In en, this message translates to:
  /// **'Action Menu'**
  String get actionMenu;

  /// No description provided for @searchFilter.
  ///
  /// In en, this message translates to:
  /// **'Search & Filter'**
  String get searchFilter;

  /// No description provided for @categoriesProductDetails.
  ///
  /// In en, this message translates to:
  /// **'Categories & Product Details'**
  String get categoriesProductDetails;

  /// No description provided for @actionMenu2.
  ///
  /// In en, this message translates to:
  /// **'Action Menu'**
  String get actionMenu2;

  /// No description provided for @searchFilter2.
  ///
  /// In en, this message translates to:
  /// **'Search & Filter'**
  String get searchFilter2;

  /// No description provided for @categoriesProductDetails2.
  ///
  /// In en, this message translates to:
  /// **'Categories & Product Details'**
  String get categoriesProductDetails2;

  /// No description provided for @s06.
  ///
  /// In en, this message translates to:
  /// **'06'**
  String get s06;

  /// No description provided for @s062.
  ///
  /// In en, this message translates to:
  /// **'06'**
  String get s062;

  /// No description provided for @cartOrdercheckout.
  ///
  /// In en, this message translates to:
  /// **'Cart & Order/Checkout'**
  String get cartOrdercheckout;

  /// No description provided for @cartOrdercheckout2.
  ///
  /// In en, this message translates to:
  /// **'Cart & Order/Checkout'**
  String get cartOrdercheckout2;

  /// No description provided for @s063.
  ///
  /// In en, this message translates to:
  /// **'06'**
  String get s063;

  /// No description provided for @s064.
  ///
  /// In en, this message translates to:
  /// **'06'**
  String get s064;

  /// No description provided for @cartOrdercheckout3.
  ///
  /// In en, this message translates to:
  /// **'Cart & Order/Checkout'**
  String get cartOrdercheckout3;

  /// No description provided for @cartOrdercheckout4.
  ///
  /// In en, this message translates to:
  /// **'Cart & Order/Checkout'**
  String get cartOrdercheckout4;

  /// No description provided for @s07.
  ///
  /// In en, this message translates to:
  /// **'07'**
  String get s07;

  /// No description provided for @s072.
  ///
  /// In en, this message translates to:
  /// **'07'**
  String get s072;

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// No description provided for @orders2.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders2;

  /// No description provided for @s073.
  ///
  /// In en, this message translates to:
  /// **'07'**
  String get s073;

  /// No description provided for @s074.
  ///
  /// In en, this message translates to:
  /// **'07'**
  String get s074;

  /// No description provided for @orders3.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders3;

  /// No description provided for @orders4.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders4;

  /// No description provided for @s08.
  ///
  /// In en, this message translates to:
  /// **'08'**
  String get s08;

  /// No description provided for @s082.
  ///
  /// In en, this message translates to:
  /// **'08'**
  String get s082;

  /// No description provided for @myEwallet.
  ///
  /// In en, this message translates to:
  /// **'My E-Wallet'**
  String get myEwallet;

  /// No description provided for @myEwallet2.
  ///
  /// In en, this message translates to:
  /// **'My E-Wallet'**
  String get myEwallet2;

  /// No description provided for @s083.
  ///
  /// In en, this message translates to:
  /// **'08'**
  String get s083;

  /// No description provided for @s084.
  ///
  /// In en, this message translates to:
  /// **'08'**
  String get s084;

  /// No description provided for @myEwallet3.
  ///
  /// In en, this message translates to:
  /// **'My E-Wallet'**
  String get myEwallet3;

  /// No description provided for @myEwallet4.
  ///
  /// In en, this message translates to:
  /// **'My E-Wallet'**
  String get myEwallet4;

  /// No description provided for @topUpEwallet.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet'**
  String get topUpEwallet;

  /// No description provided for @transactionHistory.
  ///
  /// In en, this message translates to:
  /// **'Transaction History'**
  String get transactionHistory;

  /// No description provided for @topUpEwallet2.
  ///
  /// In en, this message translates to:
  /// **'Top Up E-Wallet'**
  String get topUpEwallet2;

  /// No description provided for @transactionHistory2.
  ///
  /// In en, this message translates to:
  /// **'Transaction History'**
  String get transactionHistory2;

  /// No description provided for @s09.
  ///
  /// In en, this message translates to:
  /// **'09'**
  String get s09;

  /// No description provided for @s092.
  ///
  /// In en, this message translates to:
  /// **'09'**
  String get s092;

  /// No description provided for @profileSettings.
  ///
  /// In en, this message translates to:
  /// **'Profile & Settings'**
  String get profileSettings;

  /// No description provided for @profileSettings2.
  ///
  /// In en, this message translates to:
  /// **'Profile & Settings'**
  String get profileSettings2;

  /// No description provided for @s093.
  ///
  /// In en, this message translates to:
  /// **'09'**
  String get s093;

  /// No description provided for @s094.
  ///
  /// In en, this message translates to:
  /// **'09'**
  String get s094;

  /// No description provided for @profileSettings3.
  ///
  /// In en, this message translates to:
  /// **'Profile & Settings'**
  String get profileSettings3;

  /// No description provided for @profileSettings4.
  ///
  /// In en, this message translates to:
  /// **'Profile & Settings'**
  String get profileSettings4;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
