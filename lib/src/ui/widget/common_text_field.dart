import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonTextField extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSecret;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final String? initialValue;
  final bool readOnly;
  final String? Function(String?)? validator;
  final bool isReadyOnly;

  const CommonTextField({
    super.key,
    required this.icon,
    this.label = "",
    this.isSecret = false,
    this.inputFormatters,
    this.keyboardType,
    this.initialValue,
    this.readOnly = false,
    this.validator,
    this.isReadyOnly = false,
  });

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  bool isObscure = true;
  @override
  void initState() {
    super.initState();
    isObscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        validator: widget.validator,
        readOnly: widget.readOnly,
        initialValue: widget.initialValue,
        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,
        obscureText: isObscure,
        style: const TextStyle(fontSize: 18),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
          prefixIcon: Icon(widget.icon, size: 28),
          labelText: widget.label,
          suffixIcon: widget.isSecret
              ? IconButton(
                  icon: Icon(
                      isObscure ? Icons.visibility : Icons.visibility_off,
                      size: 24),
                  color: Colors.grey,
                  onPressed: () => setState(() => isObscure = !isObscure),
                )
              : null,
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20),
          // ),
        ),
      ),
    );
  }
}
