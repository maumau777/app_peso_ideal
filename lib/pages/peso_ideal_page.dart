import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PesoIdealPage extends StatefulWidget {
  const PesoIdealPage({super.key});

  @override
  State<PesoIdealPage> createState() => _PesoidealpageState();
}

class _PesoidealpageState extends State<PesoIdealPage> {
  TextEditingController alturaController = TextEditingController();
  TextEditingController sexoController = TextEditingController();
  Float peso = 0 as Float;
  String sexo = '';

  calculaPesoIdeal(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peso Ideal'),
        backgroundColor: Colors.lightBlueAccent,
      ),
    body: Padding(
      padding: const EdgeInsets.all(64.0),
      child: Column(
        children: [
          TextField(
            controller: alturaController,
            decoration: const InputDecoration(
              labelText: 'Informe sua altura',
              prefixIcon: 
              Icon(Icons.height),
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            onSubmitted: (value) => calculaPesoIdeal(),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: sexoController,
            decoration: const InputDecoration(
              labelText: 'Informe seu sexo',
              prefixIcon: 
              Icon(Icons.male),
            ),
            keyboardType: TextInputType.text,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: calculaPesoIdeal, 
            child: const Text(
              'Calcular peso ideal',
              style: TextStyle(fontSize: 16),
            ))
        ],
      ),
    ),
    );
  }
}