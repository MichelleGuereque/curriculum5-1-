import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Center(
          child: Text(
            'CURRICULUM',
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(5.0),
                  alignment: Alignment.topCenter,
                  child: const Image(
                    image: AssetImage('images/foto1.jpeg'),
                    width: 130,
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(' Alexa Guereque ', style: TextStyle(fontSize: 30)),
                    Text('28 - Diciembre - 1999',
                        style: TextStyle(fontSize: 20)),
                    Text('(639)-115-1031', style: TextStyle(fontSize: 20)),
                    Text(
                      'Ing. Sistemas Computacionales',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
            // Agregar un nuevo Row aquí
            const Padding(
              padding: EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '   HABILIDADES',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '> Compromiso con la',
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            'innovación tecnológica y',
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            'la seguridad de equipos.',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            '> Hago reír.',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            '> Resolución de problemas',
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            'de software.',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            '> Preparada para aportar',
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            'conocimiento y m*mada 1/2.',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '    EXPERIENCIA ACADEMICA',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '              Y PROFESIONAL',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '   > Escuela Primaria "AQUILES SERDAN".',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '   > Escuela Secundaria Leyes de Reforma.',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '   > Centro de Estudios Tecnológico',
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            '      industrial y de servicios N° 87.',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '   > Instituto Tecnológico de Delicias',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Column(
              children: [
                SizedBox(height: 30.0),
                Text(
                  'CARRUCEL DE FOTOS',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
              ],
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (_, int index) => const _Carrucel(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Carrucel extends StatelessWidget {
  const _Carrucel({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 210,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const FadeInImage(
                placeholder: AssetImage('images/loading.gif'),
                image: AssetImage('images/foto2.jpeg'),
                width: 200,
                height: 150,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Tragando',
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
