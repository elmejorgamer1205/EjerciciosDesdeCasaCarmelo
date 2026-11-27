import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfigScreen extends StatefulWidget {
  const ConfigScreen({super.key});

  @override
  State<ConfigScreen> createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sharing opportunities'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width *
              (MediaQuery.of(context).size.width > 600 ? 0.20 : 0.10),
          vertical: 15,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  String? result = null;
                  if (value == null || value.isEmpty) {
                    result = 'Este campo no puede estar vacío';
                  } else if (value.length <= 2) {
                    result = 'Este campo debe ser mayor de dos caracteres';
                  }
                  return result;
                },
                decoration: const InputDecoration(
                  labelText: "Job Title",
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
