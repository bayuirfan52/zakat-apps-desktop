import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:zakat_apps/app/theme/color.dart';

import 'ex_textfield.dart';

///   created               : Aditya Pratama
///   originalFilename      : ex_text_field_normal
///   date                  : 24 Jun 2021
///   —————————————————————————————————————————————————————————————————————————————
///   <img width="339" alt="image" src="https://user-images.githubusercontent.com/36602270/169626802-e1cd3866-814d-4b27-87ff-488d80c2fd0a.png">

class ExTextFieldNormal extends StatelessWidget {
  const ExTextFieldNormal({
    super.key,
    this.borderColor = const Color(0xFFe4e8eb),
    this.hint,
    this.tfController,
    this.isPassword,
    this.obscureText,
    this.onChanged,
    this.onSubmitted,
    this.onEditingComplete,
    this.enabled,
    this.fillColor = Colors.transparent,
    this.textInputType,
    this.textInputAction,
    this.validator,
    this.borderColorFocus,
    this.autoCorrect = true,
    this.autoFocus = false,
    this.clear = true,
    this.initialValue,
    this.labelText,
    this.labelTextColor = colorGrey,
    this.helperText,
    this.helperTextColor = colorGrey,
    this.maxLength,
    this.maxLine = 1,
    this.counterText,
  });

  final Color? borderColor;
  final Color? borderColorFocus;
  final String? hint;
  final TextEditingController? tfController;
  final bool? isPassword;
  final bool? obscureText;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onEditingComplete;
  final bool? enabled;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final String? Function(String?)? validator;
  final bool autoCorrect;
  final bool autoFocus;
  final bool clear;
  final String? initialValue;
  final String? labelText;
  final Color labelTextColor;
  final String? helperText;
  final String? counterText;
  final Color helperTextColor;
  final int? maxLength;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        if (labelText != null) labelText!.text.caption(context).color(labelTextColor).make().pOnly(bottom: 8),
        ExBaseTextField(
          borderType: ExTextFieldBorderType.roundLine,
          borderRadius: 4,
          contentPaddingLeft: 16,
          borderColor: borderColor,
          keyboardType: textInputType,
          textInputAction: textInputAction,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          onEditingComplete: onEditingComplete,
          hint: hint,
          hintStyle: GoogleFonts.openSans(color: colorBorder),
          enabled: enabled ?? true,
          controller: tfController,
          isPassword: isPassword ?? false,
          obscureText: obscureText ?? false,
          fillColor: fillColor,
          autoValidateMode: AutovalidateMode.onUserInteraction,
          validator: validator,
          showCursor: true,
          borderColorFocus: Theme.of(context).primaryColor,
          autocorrect: autoCorrect,
          autofocus: autoFocus,
          clear: clear,
          initialValue: initialValue,
          maxLength: maxLength,
          maxLine: maxLine,
          counterText: counterText,
        ),
        if (helperText != null) helperText!.text.caption(context).color(helperTextColor).make().pOnly(top: 8),
      ],
    );
  }
}
