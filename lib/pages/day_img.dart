import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';

class NasaImagePage extends StatefulWidget {
  @override
  _NasaImagePageState createState() => _NasaImagePageState();
}

class _NasaImagePageState extends State<NasaImagePage> {
  String? imageUrl;
  String? title;
  String? description;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchNasaImage();
  }

  Future<void> fetchNasaImage() async {
    const String apiKey = 'ufKpEept8mfPmBg9RDjjZdzhxjJd1OQv3kOoQLUg';
    final Uri url =
        Uri.parse('https://api.nasa.gov/planetary/apod?api_key=$apiKey');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        setState(() {
          imageUrl = data['url'];
          title = data['title'];
          description = data['explanation'];
          isLoading = false;
        });
      } else {
        throw Exception('Erro ao carregar dados da API');
      }
    } catch (e) {
      print(e);
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const SizedBox(width: 8),
            Text(
              'Sua Imagem do Dia!',
              style: GoogleFonts.limelight(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : imageUrl != null
              ? SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 16),
                      Text(
                        title ?? 'Sem título',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16),
                      Image.network(imageUrl!),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          description ?? 'Sem descrição disponível.',
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                )
              : Center(child: Text('Erro ao carregar imagem.')),
    );
  }
}
