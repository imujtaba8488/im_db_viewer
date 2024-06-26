import 'package:flutter/material.dart';

class StyledTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hint;
  final ValueChanged<String> onChanged;
  final TextAlign textAlign;
  final TextInputType inputType;

  const StyledTextField({
    required this.controller,
    required this.onChanged,
    this.hint,
    this.textAlign = TextAlign.start,
    this.inputType = TextInputType.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: theme.scaffoldBackgroundColor,
        hintStyle: theme.textTheme.bodyLarge?.copyWith(
            color: theme.textTheme.bodyLarge?.color?.withOpacity(0.5)),
        hintText: hint ?? '',
      ),
      style: theme.textTheme.bodyLarge,
      keyboardType: inputType,
      textAlign: textAlign,
      onChanged: onChanged,
      controller: controller,
    );
  }
}
