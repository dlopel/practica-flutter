import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgets.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final Map<String, dynamic> _data = {
    'name': 'diego lope',
    'password': '123456',
    'dni': '12345678'
  };

  final List<String> cities = [
    'Ninguna',
    'Ate',
    'Lima',
    'Miraflores',
    'La Molina',
    'Surco',
    'San Borja',
    'Ancon',
    'Ventanilla',
    'Callao',
    'San Luis',
    'Agustino',
    'Villa el Salvador',
    'Villa Maria del Triunfo',
    'Lurin',
    'Pachacamac',
    'Mamacona',
    'Huaskar',
    'Lince'
  ];

  String? city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Screen'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomInput(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo requerido';
                    }
                    if (value.length <= 3) {
                      return 'minimo 4 caracteres';
                    }
                    return null;
                  },
                  object: _data,
                  propertyKey: 'name',
                  prefixIcon: Icons.face_unlock_sharp,
                  hintText: 'Introduce nombre',
                  labelText: 'Nombre',
                  counterText: '250',
                  helperText: 'min 3 caracteres',
                ),
                const SizedBox(height: 20),
                CustomInput(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo requerido';
                    }
                    if (value.length <= 7) {
                      return 'minimo 7 caracteres';
                    }
                    return null;
                  },
                  obscureText: true,
                  object: _data,
                  propertyKey: 'password',
                  prefixIcon: Icons.security,
                  hintText: 'Introduce clave',
                  labelText: 'Clave',
                  counterText: '26',
                  helperText: 'min 3 caracteres',
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  validator: (value) {
                    if (value == 'Ninguna') {
                      return 'Seleccione una ciudad';
                    }
                    return null;
                  },
                  decoration:
                      const InputDecoration(
                        prefixIcon: Icon(Icons.credit_score),
                        border: OutlineInputBorder()),
                  isExpanded: true,
                  value: city ?? cities.first,
                  icon: const Icon(Icons.arrow_drop_down),
                  style: const TextStyle(color: Colors.deepPurple),
                  onChanged: (String? value) {
                    city = value!;
                    print(value);
                    setState(() {});
                  },
                  items: cities.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 20),
                CustomInput(
                  maxLength: 8,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo requerido';
                    }
                    return null;
                  },
                  object: _data,
                  propertyKey: 'dni',
                  prefixIcon: Icons.apple_sharp,
                  hintText: 'Introduce DNI',
                  labelText: 'DNI',
                  counterText: '8',
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (_formKey.currentState!.validate()) {
                        print(_data);
                      }
                    },
                    child: const Text('Enviar'),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
