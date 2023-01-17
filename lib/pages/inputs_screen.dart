import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Marcela',
      'last_name' : 'Mon',
      'email'     : 'marce.mon@correo.cl',
      'password'  : '123456',
      'role'      : 'Admin'
      };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Form(
                  key: myFormKey,
                  child: Column(
                    children: [
                      CustomInputField(
                          labelText: 'Nombre', hintText: 'Ingrese nombre', formProperty: 'first_name', formValues: formValues,),
                      const SizedBox(height: 30),
                      CustomInputField(
                          labelText: 'Apellido', hintText: 'Ingrese apellido', formProperty: 'last_name', formValues: formValues),
                      const SizedBox(height: 30),
                      CustomInputField(
                        labelText: 'Email',
                        hintText: 'Ingrese email', formProperty: 'email', formValues: formValues,
                        keyBoard: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 30),
                      CustomInputField(
                        labelText: 'Password', hintText: 'Ingrese password', formProperty: 'password', formValues: formValues,
                        obscureText: true,
                      ),
                      const SizedBox(height: 30),

                      DropdownButtonFormField(
                        items: const[
                          DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                          DropdownMenuItem(value: 'Superuser', child: Text('Superuser')),
                          DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                          DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer')),
                        ], 
                        onChanged: (value){
                          formValues['role'] = value ?? 'Admin';
                        }
                        ),

                      const SizedBox(height: 30),
                      ElevatedButton(
                          onPressed: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                            
                            if(! myFormKey.currentState!.validate())
                            {
                              print('Formulario no válido!');
                              return;
                            }
                            
                            print(formValues);
                          },
                          child: const SizedBox(
                            width: double.infinity,
                            child: Center(child: Text('Guardar')),
                          ))
                    ],
                  ),
                ))));
  }
}
