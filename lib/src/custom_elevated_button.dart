import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// class CustomElevatedButton extends StatelessWidget {
//   final double? width;
//   final double? pa;
//   final void Function()? onPressed;
//   final String? label;
//   final Widget? child;
//   final String? imagePath;
//   final Widget? icon;
//   final Color? backgroundColor;
//   final Color? textColor;
//   final Color? disableColor;
//   final bool isLoading;
//   final double? opacity;
//   final bool showShadow;
//   final Color borderColor;
//   final bool smallSize;
//   final bool isDisable;
//
//   const CustomElevatedButton({
//     super.key,
//     this.label,
//     this.child,
//     this.width,
//     this.icon,
//     this.onPressed,
//     this.imagePath,
//     this.backgroundColor,
//     this.textColor,
//     this.disableColor,
//     this.isLoading = false,
//     this.showShadow = true,
//     this.isDisable = false,
//     this.opacity = 0.5,
//     this.borderColor = Colors.transparent,
//     this.smallSize = false,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return DecoratedBox(
//       decoration: ShapeDecoration(
//         color: Colors.transparent,
//         shape: RoundedRectangleBorder(
//           borderRadius: AppRadius.button,
//         ),
//         // shadows: !showShadow
//         //     ? null
//         //     : const [
//         //         BoxShadow(
//         //           color: AppColors.shadow,
//         //           blurRadius: 4,
//         //           offset: Offset(0, 2),
//         //           spreadRadius: 0,
//         //         )
//         //       ],
//       ),
//       child: ElevatedButton(
//         style: ButtonStyle(
//           // shadowColor: MaterialStateProperty.all(Colors.lightBlue),
//           elevation: WidgetStateProperty.all<double?>(0),
//           padding: WidgetStateProperty.all(AppPadding.button),
//           minimumSize: WidgetStateProperty.all<Size>(
//             smallSize
//                 ? Size(
//                     getResponsiveSize(
//                       mobile: width ?? 80.w,
//                       tabletPortrait: 40.w,
//                       tabletLandscape: 50.w,
//                     ),
//                     getResponsiveSize(
//                       mobile: 40.h,
//                       tabletPortrait: 40.h,
//                       tabletLandscape: 50.h,
//                     ),
//                   )
//                 : Size(
//                     getResponsiveSize(
//                       mobile: width ?? 10.w,
//                       tabletPortrait: 375,
//                       tabletLandscape: 375,
//                     ),
//                     getResponsiveSize(
//                       mobile: 56.h,
//                       tabletPortrait: 40.h,
//                       tabletLandscape: 50.h,
//                     ),
//                   ),
//           ),
//           maximumSize: WidgetStateProperty.all<Size>(
//             // smallSize
//             //     ?
//             Size(
//               getResponsiveSize(
//                 mobile: width ?? double.infinity,
//                 tabletPortrait: 375,
//                 tabletLandscape: 375,
//               ),
//               getResponsiveSize(
//                 mobile: 56.h,
//                 tabletPortrait: 40.h,
//                 tabletLandscape: 50.h,
//               ),
//             ),
//
//             // : Size(
//             //     getResponsiveSize(
//             //       mobile: width,
//             //       tabletPortrait: 420,
//             //       tabletLandscape: 370,
//             //     ),
//             //     getResponsiveSize(
//             //       mobile: 44.h,
//             //       tabletPortrait: 50.h,
//             //       tabletLandscape: 55.h,
//             //     ),
//             //   ),
//           ),
//           backgroundColor: WidgetStateProperty.resolveWith<Color>(
//             (Set<WidgetState> states) => states.contains(WidgetState.disabled)
//                 ? context.primaryColor.shade300
//                 : backgroundColor ?? context.primaryColor,
//           ),
//           foregroundColor: WidgetStateProperty.resolveWith<Color>(
//             (Set<WidgetState> states) => states.contains(WidgetState.disabled)
//                 ? context.grey
//                 : textColor ?? context.backgroundColor,
//           ),
//           side: WidgetStateProperty.resolveWith<BorderSide>(
//             (Set<WidgetState> states) => states.contains(WidgetState.disabled)
//                 ? BorderSide(color: borderColor, width: 0.5)
//                 : BorderSide(color: borderColor, width: 0.5),
//           ),
//           shape: WidgetStateProperty.all<RoundedRectangleBorder>(
//             RoundedRectangleBorder(borderRadius: AppRadius.button),
//           ),
//         ),
//         onPressed: isLoading || isDisable ? null : onPressed,
//         child: isLoading
//             ? SizedBox(
//                 width: smallSize ? width ?? 60.w : width,
//                 height: smallSize ? 40.h : 56.h,
//                 child: Center(
//                   child: SizedBox(
//                     width: 15.r,
//                     height: 15.r,
//                     child: CircularProgressIndicator(
//                       color: textColor ?? context.primaryColor,
//                       backgroundColor:
//                           backgroundColor ?? context.backgroundColor,
//                     ),
//                   ),
//                 ),
//               )
//             : imagePath == null && icon == null
//                 ? FittedBox(
//                     fit: BoxFit.scaleDown,
//                     child: child ??
//                         Text(
//                           label == null ? " " : label!.tr(),
//                           maxLines: 1,
//                           style: context.labelMedium?.copyWith(
//                             color: isDisable
//                                 ? Colors.white
//                                 : textColor ?? Colors.white,
//                             fontWeight: FontWeight.w600,
//                             height: 0.0,
//                             // fontSize: getResponsiveSize(
//                             //   mobile: 16.sp,
//                             //   tabletPortrait: 11.sp,
//                             //   tabletLandscape: 7.sp,
//                             // ),
//                           ),
//                         ),
//                   )
//                 : SizedBox(
//                     width: width,
//                     child: FittedBox(
//                       fit: BoxFit.scaleDown,
//                       child: Row(
//                         mainAxisAlignment: icon == null
//                             ? MainAxisAlignment.spaceEvenly
//                             : MainAxisAlignment.center,
//                         children: [
//                           icon == null
//                               ? Opacity(
//                                   opacity: opacity!,
//                                   child: imagePath!.endsWith('svg')
//                                       ? SvgPicture.asset(
//                                           imagePath!,
//                                           width: 25.w,
//                                           height: 25.h,
//                                           colorFilter: ColorFilter.mode(
//                                             textColor ??
//                                                 context.backgroundColor,
//                                             BlendMode.srcIn,
//                                           ),
//                                         )
//                                       : Image.asset(
//                                           imagePath!,
//                                           width: 30.w,
//                                           height: 30.h,
//                                           color: textColor ??
//                                               context.backgroundColor,
//                                         ),
//                                 )
//                               : icon!,
//                           const HorizontalMediumSpacer(),
//                           FittedBox(
//                             fit: BoxFit.scaleDown,
//                             child: Text(
//                               label == null ? "" : label!.tr(),
//                               maxLines: 1,
//                               style: context.labelMedium?.copyWith(
//                                 fontWeight: FontWeight.w600,
//                                 color: isDisable
//                                     ? context.grey
//                                     : textColor ?? Colors.white,
//                                 height: 0.0,
//                                 // fontSize: getResponsiveSize(
//                                 //   mobile: 16.sp,
//                                 //   tabletPortrait: 11.sp,
//                                 //   tabletLandscape: 7.sp,
//                                 // ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//       ),
//     );
//   }
// }

/// A custom icon button widget that provides a variety of styling and functionality options.
///
/// This button supports various states such as loading and disabled, allows customization
/// of its appearance through properties like padding, border radius, and colors, and can display
/// either an image, an icon, or text.
class CustomIconButton extends StatelessWidget {
  /// The width of the button. If `null`, the button will use a default width based on other properties.
  final double? width;

  /// The padding inside the button. This determines the space between the button's content and its border.
  /// Default is `12`.
  final double padding;

  /// The border radius of the button. This defines how rounded the button's corners are.
  /// Default is `8`.
  final double borderRadius;

  /// A callback function that is triggered when the button is pressed. If `null`, the button will not respond to taps.
  final void Function()? onPressed;

  /// The label text displayed on the button. If `null`, no text will be shown.
  final String? label;

  /// A widget that is displayed inside the button. This can be used to customize the button's content.
  final Widget? child;

  /// The path to an image asset to be displayed inside the button. If `null`, no image will be shown.
  final String? imagePath;

  /// A widget that is used as an icon inside the button. If `null`, no icon will be shown.
  final Widget? icon;

  /// The background color of the button. If `null`, a default color will be used.
  final Color? backgroundColor;

  /// The color of the text displayed on the button. If `null`, a default text color will be used.
  final Color? textColor;

  /// The color of the button when it is disabled. If `null`, a default disabled color will be used.
  final Color? disableColor;

  /// Indicates whether the button is in a loading state. If `true`, the button will show a loading indicator.
  final bool isLoading;

  /// The opacity of the button. This controls how transparent the button is. If `null`, a default opacity will be used.
  final double? opacity;

  /// Indicates whether a shadow should be shown behind the button. If `true`, a shadow will be applied.
  final bool showShadow;

  /// The color of the button's border. This is used to outline the button.
  final Color borderColor;

  /// Indicates whether the button is small-sized. If `true`, the button will be rendered smaller.
  final bool smallSize;

  /// Indicates whether the button is disabled. If `true`, the button will be rendered in a disabled state and will not respond to user interaction.
  final bool isDisable;

  /// Creates a new instance of `CustomIconButton`.
  ///
  /// The `onPressed` callback will be invoked when the button is tapped unless `isLoading` or `isDisable` is `true`.
  const CustomIconButton({
    super.key,
    this.width,
    this.padding = 12,
    this.borderRadius = 8,
    this.label,
    this.child,
    this.icon,
    this.onPressed,
    this.imagePath,
    this.backgroundColor,
    this.textColor,
    this.disableColor,
    this.isLoading = false,
    this.showShadow = true,
    this.isDisable = false,
    this.opacity = 0.5,
    this.borderColor = Colors.transparent,
    this.smallSize = false,
  });

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.all(Radius.circular(borderRadius));
    return DecoratedBox(
      decoration: ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: radius,
        ),
        shadows: !showShadow
            ? null
            : const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          // shadowColor: MaterialStateProperty.all(Colors.lightBlue),
          elevation: WidgetStateProperty.all<double?>(0),
          padding: WidgetStateProperty.all(EdgeInsets.all(padding)),
          minimumSize: WidgetStateProperty.all<Size>(
            smallSize
                ? Size(
                    width ?? 80,
                    40,
                  )
                : Size(
                    width ?? 10,
                    56,
                  ),
          ),
          maximumSize: WidgetStateProperty.all<Size>(
            // smallSize
            //     ?
            Size(width ?? double.infinity, 56),
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) => states.contains(WidgetState.disabled)
                ? Theme.of(context).primaryColor.withOpacity(opacity ?? 0.7)
                : backgroundColor ?? Theme.of(context).primaryColor,
          ),
          foregroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) => states.contains(WidgetState.disabled)
                ? Colors.grey
                : textColor ?? Theme.of(context).scaffoldBackgroundColor,
          ),
          side: WidgetStateProperty.resolveWith<BorderSide>(
            (Set<WidgetState> states) => states.contains(WidgetState.disabled)
                ? BorderSide(color: borderColor, width: 0.5)
                : BorderSide(color: borderColor, width: 0.5),
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: radius),
          ),
        ),
        onPressed: isLoading || isDisable ? null : onPressed,
        child: isLoading
            ? SizedBox(
                width: smallSize ? width ?? 60 : width,
                height: smallSize ? 40 : 56,
                child: Center(
                  child: SizedBox(
                    width: 15,
                    height: 15,
                    child: CircularProgressIndicator(
                      color: textColor ?? Theme.of(context).primaryColor,
                      backgroundColor: backgroundColor ??
                          Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                ),
              )
            : imagePath == null && icon == null
                ? FittedBox(
                    fit: BoxFit.scaleDown,
                    child: child ??
                        Text(
                          label == null ? " " : label!,
                          maxLines: 1,
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: isDisable
                                        ? Colors.white
                                        : textColor ?? Colors.white,
                                    fontWeight: FontWeight.w600,
                                    height: 0.0,
                                    // fontSize: getResponsiveSize(
                                    //   mobile: 16.sp,
                                    //   tabletPortrait: 11.sp,
                                    //   tabletLandscape: 7.sp,
                                    // ),
                                  ),
                        ),
                  )
                : SizedBox(
                    width: width,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        mainAxisAlignment: icon == null
                            ? MainAxisAlignment.spaceEvenly
                            : MainAxisAlignment.center,
                        children: [
                          icon == null
                              ? Opacity(
                                  opacity: opacity!,
                                  child: imagePath!.endsWith('svg')
                                      ? SvgPicture.asset(
                                          imagePath!,
                                          width: 25,
                                          height: 25,
                                          colorFilter: ColorFilter.mode(
                                            textColor ??
                                                Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                            BlendMode.srcIn,
                                          ),
                                        )
                                      : Image.asset(
                                          imagePath!,
                                          width: 30,
                                          height: 30,
                                          color: textColor ??
                                              Theme.of(context)
                                                  .scaffoldBackgroundColor,
                                        ),
                                )
                              : icon!,
                          const SizedBox(width: 16),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              label == null ? "" : label!,
                              maxLines: 1,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: isDisable
                                        ? Colors.grey
                                        : textColor ?? Colors.white,
                                    height: 0.0,
                                    // fontSize: getResponsiveSize(
                                    //   mobile: 16.sp,
                                    //   tabletPortrait: 11.sp,
                                    //   tabletLandscape: 7.sp,
                                    // ),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
      ),
    );
  }
}
