class OnboardContent {
  String image;
  String text;
  String descripcion;

  OnboardContent(
      {required this.image, required this.text, required this.descripcion});
}

List<OnboardContent> contents = [
  OnboardContent(
    image: "assets/makeup.png",
    text: "Moon prism power",
    descripcion:
        "make up!",
  ),
  OnboardContent(
    image: "assets/sailor.jpg",
    text: "Sailor moon",
    descripcion:
        "La Bella Guardiana del Amor y Justicia en traje de marinera.",
  ),
  OnboardContent(
    image: "assets/sailor_moon.webp",
    text: "¡Soy Sailor Moon,",
    descripcion:
        "campeona de la justicia! En nombre de la luna, corregiré los errores y triunfaré sobre el mal.",
  ),
];