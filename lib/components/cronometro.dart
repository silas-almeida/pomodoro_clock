import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro_botao.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.red, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          spreadRadius: 2,
          blurRadius: 3,
          offset: Offset(0,2),
        ),
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hora de trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '25:00',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child:
                    CronometroBotao(texto: 'Iniciar', icone: Icons.play_arrow),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 10.0),
              //   child: CronometroBotao(texto: 'Parar', icone: Icons.stop),
              // ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child:
                    CronometroBotao(texto: 'Reiniciar', icone: Icons.refresh),
              ),
            ],
          )
        ],
      ),
    );
  }
}
