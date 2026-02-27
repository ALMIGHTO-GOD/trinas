import 'package:flutter/material.dart';

class CupertinoRadio extends StatefulWidget {
  const CupertinoRadio({super.key});

  @override
  State<CupertinoRadio> createState() => _CupertinoRadioState();
}

class _CupertinoRadioState extends State<CupertinoRadio> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Radio ejemplo'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              _selectedValue == 0
                  ? 'Selecciona una opción'
                  : 'Opción ${_selectedValue} seleccionada',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          ListTile(
            title: const Text('Opcion 1'),
            leading: Radio<int>(
              value: 1,
              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Opcion 2'),
            leading: Radio<int>(
              value: 2,
              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Opcion 3'),
            leading: Radio<int>(
              value: 3,
              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}