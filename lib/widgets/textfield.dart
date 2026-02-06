import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templates/utils/app_dimensions.dart';
import 'package:templates/utils/colors.dart';
import 'package:templates/utils/style.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;

  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color? prefixIconColor;
  final Color? suffixIconColor;

  final Widget? prefixWidget;
  final Widget? suffixWidget;

  final bool obscureText;
  final int? maxLines;
  final int? minLines;
  final bool readOnly;
  final bool hideFocusBorder;

  final VoidCallback? onSuffixIconTap;
  final EdgeInsetsGeometry? padding;

  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final void Function(String)? onSubmitted;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final void Function()? onTap;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextField({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixIconColor,
    this.suffixIconColor,
    this.prefixWidget,
    this.suffixWidget,
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.readOnly = false,
    this.hideFocusBorder = false,
    this.onSuffixIconTap,
    this.padding,
    this.validator,
    this.onChanged,
    this.onSaved,
    this.onSubmitted,
    this.keyboardType,
    this.textInputAction,
    this.onTap,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ??
          EdgeInsetsDirectional.only(
            top: labelText != null ? AppDimensions.paddingMedium : 0,
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (labelText != null) ...[
            Text(
              labelText!,
              style: bodyMedium(context).copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: AppDimensions.paddingMedium),
          ],
          TextFormField(
            controller: controller,
            obscureText: obscureText,
            readOnly: readOnly,
            validator: validator,
            onChanged: onChanged,
            onSaved: onSaved,
            onFieldSubmitted: onSubmitted,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            onTap: onTap,
            maxLines: maxLines,
            minLines: minLines,
            inputFormatters: inputFormatters,
            onTapOutside: (_) => FocusScope.of(context).unfocus(),
            style: bodyMedium(context),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: bodyMedium(
                context,
              ).copyWith(color: Theme.of(context).hintColor),

              prefixIcon:
                  prefixWidget ??
                  (prefixIcon != null
                      ? Icon(
                          prefixIcon,
                          size: 20.sp,
                          color: prefixIconColor ?? Theme.of(context).hintColor,
                        )
                      : null),

              suffixIcon:
                  suffixWidget ??
                  (suffixIcon != null
                      ? GestureDetector(
                          onTap: onSuffixIconTap,
                          child: Icon(
                            suffixIcon,
                            size: 20.sp,
                            color:
                                suffixIconColor ?? Theme.of(context).hintColor,
                          ),
                        )
                      : null),

              enabledBorder: hideFocusBorder
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: onPrimary),
                    ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: disabledColorDark, width: 1),
              ),

              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
