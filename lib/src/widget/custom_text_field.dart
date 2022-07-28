import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSecret;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final String? initialValue;
  final bool readOnly;
  final String? Function(String?)? validator;
  ValueNotifier<bool> isObscure = ValueNotifier(true);
  CustomTextField({
    super.key,
    required this.icon,
    this.label = "",
    this.isSecret = false,
    this.inputFormatters,
    this.keyboardType,
    this.initialValue,
    this.readOnly = false,
    this.validator,
  }) {
    isObscure = ValueNotifier<bool>(isSecret);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: ValueListenableBuilder<bool>(
        valueListenable: isObscure,
        builder: (context, obscure, child) {
          return TextFormField(
            validator: validator,
            readOnly: readOnly,
            initialValue: initialValue,
            keyboardType: keyboardType,
            inputFormatters: inputFormatters,
            obscureText: obscure,
            style: const TextStyle(fontSize: 16),
            decoration: InputDecoration(
              isDense: true,
              contentPadding:
                  const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
              prefixIcon: Icon(icon),
              labelText: label,
              suffixIcon: isSecret
                  ? IconButton(
                      icon: Icon(
                          isObscure.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 28),
                      color: Colors.grey,
                      onPressed: () => isObscure.value = !isObscure.value,
                    )
                  : null,
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(20),
              // ),
            ),
          );
        },
      ),
    );
  }
}
