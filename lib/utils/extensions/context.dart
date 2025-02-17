import 'package:flutter_web_printer/apps/app_exports.dart';

extension BuildContextExtension on BuildContext {
  //Route
  get pop => Navigator.pop(this);

  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
  Size get screenSize => MediaQuery.of(this).size;
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
  double get statusBarHeight => MediaQuery.of(this).padding.top;
  double get bottomBarHeight => MediaQuery.of(this).padding.bottom;
  double get keyboardHeight => MediaQuery.of(this).viewInsets.bottom;
  double get keyboardTopInset => MediaQuery.of(this).viewInsets.top;
  double get keyboardBottomInset => MediaQuery.of(this).viewInsets.bottom;
  //color
  Color get primaryColor => colorScheme.primary;
  Color get secondaryColor => colorScheme.secondary;
  Color get errorColor => colorScheme.error;
  Color get surfaceColor => colorScheme.surface;
  Color get onPrimaryColor => colorScheme.onPrimary;
  Color get onSecondaryColor => colorScheme.onSecondary;
  Color get onErrorColor => colorScheme.onError;
  Color get onSurfaceColor => colorScheme.onSurface;
  Color get textGray => const Color.fromRGBO(71, 84, 103, 1);
  Color get textError => const Color.fromRGBO(126, 66, 51, 1);
  Color get containerBorder => const Color.fromRGBO(249, 250, 251, 1);
  Color get borderContainer => const Color.fromRGBO(234, 236, 240, 1);
  Color get backgroundError => const Color.fromRGBO(255, 214, 214, 1);
  //snackbar
  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).clearSnackBars();
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  void showSnackBarError(String message) {
    ScaffoldMessenger.of(this).clearSnackBars();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: errorColor.withValues(alpha: 0.9),
      ),
    );
  }

  void showSnackBarSuccess(String message) {
    ScaffoldMessenger.of(this).clearSnackBars();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green.shade700.withValues(alpha: 0.9),
      ),
    );
  }

  // void modalBottomSheet(Widget child, {bool showButtom = true,isDismissible = true}) {
  //   globalRef.read(isShowButtomNavigationBar.notifier).state = false;
  //   showModalBottomSheet(
  //     isDismissible: isDismissible,
  //     isScrollControlled: true,
  //     context: this,
  //     builder: (context) => child,
  //     backgroundColor: Colors.transparent,
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(24),
  //         topRight: Radius.circular(24),
  //       ),
  //     ),
  //     barrierColor: const Color.fromRGBO(0, 32, 57, 0.82),
  //     transitionAnimationController: AnimationController(
  //       animationBehavior: AnimationBehavior.preserve,
  //       duration: const Duration(milliseconds: 400),
  //       vsync: Navigator.of(this),
  //     ),
  //   ).then((value) {
  //     if (showButtom) {
  //       globalRef.read(isShowButtomNavigationBar.notifier).state = true;
  //     }
  //     FocusScope.of(this).unfocus();
  //   });
  // }

  //Text
  TextStyle get bodyMediumBold => Theme.of(this).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold);
  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;
  TextStyle get bodySmall => Theme.of(this).textTheme.bodySmall!;
  TextStyle get bodySmallBold => Theme.of(this).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold);
  TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge!;
  TextStyle get bodyLargeBold => Theme.of(this).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold);
  TextStyle get titleMedium => Theme.of(this).textTheme.titleMedium!;
  TextStyle get titleMediumBold => Theme.of(this).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold);
  TextStyle get titleLarge => Theme.of(this).textTheme.titleLarge!;
  TextStyle get titleLargeBold => Theme.of(this).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold);
  TextStyle get titleSmall => Theme.of(this).textTheme.titleSmall!;
  TextStyle get titleSmallBold => Theme.of(this).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold);
  TextStyle get headlineMedium => Theme.of(this).textTheme.headlineMedium!;
  TextStyle get headlineMediumBold => Theme.of(this).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold);
  TextStyle get headlineLarge => Theme.of(this).textTheme.headlineLarge!;
  TextStyle get headlineLargeBold => Theme.of(this).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold);
  TextStyle get headlineSmall => Theme.of(this).textTheme.headlineSmall!;
  TextStyle get headlineSmallBold => Theme.of(this).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold);
  TextStyle get displayLarge => Theme.of(this).textTheme.displayLarge!;
  TextStyle get displayLargeBold => Theme.of(this).textTheme.displayLarge!.copyWith(fontWeight: FontWeight.bold);
  TextStyle get displayMedium => Theme.of(this).textTheme.displayMedium!;
  TextStyle get displayMediumBold => Theme.of(this).textTheme.displayMedium!.copyWith(fontWeight: FontWeight.bold);
  TextStyle get displaySmall => Theme.of(this).textTheme.displaySmall!;
  TextStyle get displaySmallBold => Theme.of(this).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold);
  //dialog
  void showDialogWidget(Widget dialog) {
    showDialog<void>(
      context: this,
      builder: (BuildContext context) {
        return dialog;
      },
    );
  }

  //date picker
  Future<DateTime?> showDatePickerWidget({
    required DateTime initialDate,
    required DateTime firstDate,
    required DateTime lastDate,
  }) async {
    return showDatePicker(
      context: this,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );
  }

  //time picker
  Future<TimeOfDay?> showTimePickerWidget({
    required TimeOfDay initialTime,
  }) async {
    return showTimePicker(
      context: this,
      initialTime: initialTime,
    );
  }

  //bottom sheet
  void showBottomSheetWidget(Widget bottomSheet) {
    showModalBottomSheet<void>(
      context: this,
      builder: (BuildContext context) {
        return bottomSheet;
      },
    );
  }

  //toast
  void showToast(String message) {
    ScaffoldMessenger.of(this).clearSnackBars();
    final snackBar = SnackBar(
      content: Text(message),
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
