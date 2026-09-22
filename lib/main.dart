import 'package:flutter/material.dart';

void main() {
  runApp(const MeuPerfilApp());
}

class MeuPerfilApp extends StatelessWidget {
  const MeuPerfilApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perfil Pessoal',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const PerfilScreen(),
    );
  }
}

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do Utilizador'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      // Exercício 4: Fundo com LinearGradient dentro da decoração do Container
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, Colors.purple],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAlignment.center,
            children: [
              const SizedBox(height: 20),

              // Exercício 1: CircleAvatar com imagem real via NetworkImage
              const CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  'https://www.istockphoto.com/br/fotos/avatar',
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Pietro Pereira',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                'Desenvolvedor Flutter',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 24),

              // Exercício 2: Secção "Sobre Mim" e breve biografia
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAlignment.start,
                    children: [
                      Text(
                        'Sobre Mim',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Gosto de codigo',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Exercício 3: Badges de habilidades (skills) com Chip numa Row
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAlignment.start,
                    children: [
                      const Text(
                        'Habilidades',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),
                      const SizedBox(height: 12),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            Chip(
                              avatar: Icon(Icons.code, size: 18, color: Colors.white),
                              label: Text('Flutter'),
                              backgroundColor: Colors.indigo,
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 8),
                            Chip(
                              avatar: Icon(Icons.data_object, size: 18, color: Colors.white),
                              label: Text('Dart'),
                              backgroundColor: Colors.indigo,
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 8),
                            Chip(
                              avatar: Icon(Icons.storage, size: 18, color: Colors.white),
                              label: Text('SQLite'),
                              backgroundColor: Colors.indigo,
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 8),
                            Chip(
                              avatar: Icon(Icons.layers, size: 18, color: Colors.white),
                              label: Text('Provider'),
                              backgroundColor: Colors.indigo,
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}