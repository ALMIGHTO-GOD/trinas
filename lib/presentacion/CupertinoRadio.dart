import 'package:flutter/material.dart';


//Licea Langarica
//Alma Angelina Mercado Ramos
//Jorge Adan Soria Chavarin
class CupertinoRadio extends StatefulWidget {
  const CupertinoRadio({super.key});

  @override
  State<CupertinoRadio> createState() => _CupertinoRadioState();
}

class _CupertinoRadioState extends State<CupertinoRadio> {
  int _selectedValue = 0;

  Color _getColor(int value) {
    switch (value) {
      case 1:
        return Colors.blueAccent;
      case 2:
        return Colors.redAccent;
      case 3:
        return Colors.purpleAccent;
      default:
        return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cupertino Radio ejemplo')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              _selectedValue == 0
                  ? 'Selecciona una opción'
                  : 'Opción ${_selectedValue} seleccionada',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: _getColor(_selectedValue),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Opcion 1',
              style: TextStyle(
                color: _selectedValue == 1 ? Colors.blueAccent : Colors.black,
                fontWeight: _selectedValue == 1
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
            leading: Radio<int>(
              value: 1,
              groupValue: _selectedValue,
              activeColor: Colors.blueAccent,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              'Opcion 2',
              style: TextStyle(
                color: _selectedValue == 2 ? Colors.redAccent : Colors.black,
                fontWeight: _selectedValue == 2
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
            leading: Radio<int>(
              value: 2,
              groupValue: _selectedValue,
              activeColor: Colors.redAccent,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              'Opcion 3',
              style: TextStyle(
                color: _selectedValue == 3 ? Colors.purpleAccent : Colors.black,
                fontWeight: _selectedValue == 3
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
            leading: Radio<int>(
              value: 3,
              groupValue: _selectedValue,
              activeColor: Colors.purpleAccent,
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
