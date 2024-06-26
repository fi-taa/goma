import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

class PhoneNumberField extends StatefulWidget {
  final PhoneController? phoneNumberController;

  const PhoneNumberField({required this.phoneNumberController, super.key});

  @override
  State<PhoneNumberField> createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  Color borderColor = Colors.grey.shade300;

  @override
  void initState() {
    super.initState();
    widget.phoneNumberController?.value = const PhoneNumber(isoCode: IsoCode.ET, nsn: '');
  }

  @override
  Widget build(BuildContext context) {
    return PhoneFormField(
      controller: widget.phoneNumberController,
      decoration: InputDecoration(
        labelText: 'Phone Number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0), // Adjust the value to make it less curved
          borderSide: BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0), // Adjust the value to make it less curved
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0), // Adjust the value to make it less curved
          borderSide: const BorderSide(color: Colors.blue),
        ),
        suffixIcon: IconButton(
          icon: const Icon(Icons.close, color: Colors.grey, size: 18),
          onPressed: () => widget.phoneNumberController?.value = const PhoneNumber(isoCode: IsoCode.ET, nsn: ''),
        ),
      ),
      onChanged: (value) {
        setState(() {
          widget.phoneNumberController?.value = value;
          borderColor = Colors.grey.shade300;
        });
      },
    );
  }
}
