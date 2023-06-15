// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:math';

class ShowBPM extends StatefulWidget {
  const ShowBPM({super.key});

  @override
  _ShowBPMState createState() => _ShowBPMState();
}

class _ShowBPMState extends State<ShowBPM> {
  double result = 0;
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    try {
      final response = await http.get(Uri.parse('https://conexionapp20230601010416.azurewebsites.net/api/Function1'));
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        if (jsonData.isEmpty) {
          setState(() {
            errorMessage = 'La API devolvió una lista vacía';
          });
          return;
        }
        final data = jsonData.map((item) => item as Map<String, dynamic>).toList();
        final bpmValues = data.map((item) => int.parse(item['bpm'])).toList();
        if (bpmValues.isEmpty) {
          setState(() {
            errorMessage = 'No se encontraron valores bpm en los datos de la API';
          });
          return;
        }
        final average = bpmValues.reduce((a, b) => a + b) / bpmValues.length;
        setState(() {
          // result = average - (474 + Random().nextInt(4));
          result = (average/10).abs();
        });
      } else {
        setState(() {
          errorMessage = 'Error al obtener datos de la API: ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = 'Error al obtener datos de la API: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: errorMessage.isNotEmpty
         ? Center(child: Text(errorMessage))
         : Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 const Icon(
                   Icons.favorite,
                   color: Colors.red,
                   size: 150,
                 ),
                 const SizedBox(height: 40),
                 const Text(
                   'BPM',
                   style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                 ),
                 const SizedBox(height: 12),
                 Text(
                   '${result.round()}',
                   style: const TextStyle(fontSize: 78, fontWeight: FontWeight.bold),
                 ),
                 const SizedBox(height: 55),
                 ElevatedButton(
                  onPressed: getData,
                   style: ElevatedButton.styleFrom(backgroundColor: Colors.red[900]),
                    child: const Icon(Icons.refresh),
                  ),
                ],
              ),
            ),
  );
  }

}

