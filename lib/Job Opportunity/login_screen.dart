import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sharing opportunities'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
                child: Center(
                  child: FractionallySizedBox(
                    widthFactor: 0.65,
                    heightFactor: 0.45,
                    child: Image.asset("assets/images/jpg/Perro.jpg", fit: BoxFit.contain,),
                  ),
                ),
              ),

              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * (MediaQuery.of(context).size.width > 600 ? 0.20 : 0.10),
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
                            result =  'Este campo no puede estar vacío';
                          }else if (value.length <= 2){
                            result =   'Este campo debe ser mayor de dos caracteres';
                          }
                          return result;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Usuario',
                          border: OutlineInputBorder(),
                        ),
                      ),

                      const SizedBox(height: 24),

                      TextFormField(
                        validator: (value) {
                          String? result = null;
                          if (value == null || value.isEmpty) {
                            result =  'Este campo no puede estar vacío';
                          }else if (value.length <= 2){
                            result =   'Este campo debe ser mayor de dos caracteres';
                          }
                          return result;
                        },
                        decoration: const InputDecoration(
                          labelText: "Contraseña",
                          border: OutlineInputBorder(),
                        ),
                      )
                    ],
                  )
                ),
              )
            ],
          ),
        ),
    );
  }
}
