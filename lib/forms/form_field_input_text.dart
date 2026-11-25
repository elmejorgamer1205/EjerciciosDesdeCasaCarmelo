import 'package:flutter/material.dart';

class FormFieldInputText extends StatefulWidget {
  const FormFieldInputText({super.key});

  @override
  State<FormFieldInputText> createState() => _FormFieldInputTextState();
}

class _FormFieldInputTextState extends State<FormFieldInputText> {
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  double _currentSliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _globalKey,
      child: Column(
        children: [
          FormField(
            builder: (field) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    onChanged: (value) {
                      field.didChange(value);
                    },
                  ),
                  if(field.hasError) buildErrorMessage(field),
                ],
              );
            },
            validator: (value) {
              print(value);
              return "TEXTO";
            },
          ),
          SizedBox(height: 30),
          FormField<double>(
            builder: (FormFieldState<double> sliderField) {
              return Column(
                children: [
                  Slider(
                    value: _currentSliderValue,
                    min: 0.0,
                    max: 100.0,
                    onChanged: (newValue) {
                      sliderField.didChange(newValue);
                      setState(() {
                        _currentSliderValue = newValue;
                      });
                    },
                  ),
                  if(sliderField.hasError) buildErrorMessage(sliderField),
                ],
              );
            },
            validator: (value) {

              String? result;
              if ((value ?? 0.0) < 80.0) {
                result = "Más de 80, por favor";
              }
              return result;
            },
          ),
          TextButton(
            onPressed: () {
              _globalKey.currentState!.validate();
            },
            child: Text("Validate"),
          ),
        ],
      ),
    );
  }

  Padding buildErrorMessage(FormFieldState<Object?> field) {
    return Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 12.0),
                  child: Text(
                    field.errorText!,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),
                  ),
                );
  }
}
