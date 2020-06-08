import 'package:ejercitando/models/slides.dart';
import 'package:flutter/material.dart';

class SlideInfo {
  static List<Slide> slideInfo =[
    Slide(
      name: "Ejercicio Fisico",
      background: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          const Color.fromRGBO(171, 235, 198, 1),
          const Color.fromRGBO(130, 224, 170, 1)]
      ),
      description: "¿Por qué el adulto mayor debe practicar ejercicio físico?",
      image: "assets/svgs/exerciseImage.svg",
      bottomImage: "assets/svgs/exercise.svg",
      nameButton: "Iniciar"
    ),

    Slide(
      name: "Impedimentos",
      background: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          const Color.fromRGBO(130, 224, 170, 1),
          const Color.fromRGBO(46, 204, 113, 1)]
      ),
      description: "¿Cómo detectar los impedimentos para hacer ejercicio?",
      image: "assets/svgs/painImage.svg",
      bottomImage: "assets/svgs/pain.svg",
      nameButton: "Ver"
    ),

    Slide(
      name: "Actitud al ejercicio",
      background: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          const Color.fromRGBO(46, 204, 113, 1),
          const Color.fromRGBO(40, 180, 99, 1)]
      ),
      description: "Contesta brevemente un cuestionario, para comenzar oprima el botón",
      image: "assets/svgs/quizImage.svg",
      bottomImage: "assets/svgs/quiz.svg",
      nameButton: "Iniciar"
    ),

    Slide(
      name: "Las tres C",
      background: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          const Color.fromRGBO(40, 180, 99, 1),
          const Color.fromRGBO(35, 155, 86, 1)]
      ),
      description: "¿Cómo, cuándo y cuánto? ¡Aprendamos a hacer ejercicio!",
      image: "assets/svgs/whenImage.svg",
      bottomImage: "assets/svgs/when.svg",
      nameButton: "Iniciar"
    ),

    Slide(
      name: "Comencemos",
      background: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          const Color.fromRGBO(35, 155, 86, 1),
          const Color.fromRGBO(35, 135, 155, 1)]
      ),
      description: "oprime el botón para inicar tu seguimiento de ejercicios",
      image: "assets/svgs/startImage.svg",
      bottomImage: "assets/svgs/start.svg",
      rute: "login",
      //nameButton: "hola"
    ),
  ];
}