import 'package:myschoolapp/src/features/home/models/cours_model.dart';

final List<CoursModel> courses = [
    CoursModel(
      title: 'Cours de Math',
      name: 'M. Dupont',
      contentImage: 'assets/images/math.png',
      profilImage: 'assets/images/profile1.png',
      btnText: 'Voir',
      prise: '30€/h',
    ),
    CoursModel(
      title: 'Cours de Sport',
      name: 'Mme Martin',
      contentImage: 'assets/images/sport.png',
      profilImage: 'assets/images/profile2.png',
      btnText: 'Contacter',
      prise: '25€/h',
    ),
    CoursModel(
      title: 'Cours d’Anglais',
      name: 'Mlle Smith',
      contentImage: 'assets/images/anglais.png',
      profilImage: 'assets/images/profile3.png',
      btnText: 'Réserver',
      prise: '28€/h',
    ),
    CoursModel(
      title: 'Cours de Sciences',
      name: 'M. Albert',
      contentImage: 'assets/images/science.png',
      profilImage: null,
      btnText: 'Voir',
      prise: '32€/h',
    ),
    CoursModel(
      title: 'Cours de Piano',
      name: 'Mme Lemoine',
      contentImage: 'assets/images/piano.png',
      profilImage: 'assets/images/profile4.png',
      btnText: 'Cours',
      prise: '35€/h',
    ),
  ]; 