import 'package:flutter/cupertino.dart';

class ImageModal {
  final int id;
  final String name;
  final String imgUrl;

  ImageModal({
    this.id,
    this.name,
    this.imgUrl,
  });
}

final gondola = ImageModal(
  id: 0,
  name: "gondola",
  imgUrl: "images/gondola.jpg",
);

final hotel0 = ImageModal(
  id: 1,
  name: "Tunceli",
  imgUrl: "images/hotel0.jpg",
);

final hotel1 = ImageModal(
  id: 2,
  name: "Istanbul",
  imgUrl: "images/hotel1.jpg",
);

final hotel2 = ImageModal(
  id: 3,
  name: "Turkey",
  imgUrl: "images/hotel2.jpg",
);

final mountain = ImageModal(
  id: 4,
  name: "Mountain",
  imgUrl: "images/mountain.jpg",
);

final murano = ImageModal(
  id: 5,
  name: "Murano",
  imgUrl: "images/murano.jpg",
);
final newdelhi = ImageModal(
  id: 6,
  name: "Newdelhi",
  imgUrl: "images/newdelhi.jpg",
);

final newyork = ImageModal(
  id: 7,
  name: "Newyork",
  imgUrl: "images/newyork.jpg",
);

final paris = ImageModal(
  id: 8,
  name: "Paris",
  imgUrl: "images/paris.jpg",
);

final santorini = ImageModal(
  id: 9,
  name: "santorini",
  imgUrl: "images/santorini.jpg",
);

final saopaulo = ImageModal(
  id: 10,
  name: "Saopaulo",
  imgUrl: "images/saopaulo.jpg",
);

final stmarksbasilica = ImageModal(
  id: 11,
  name: "Stmarksbasilica",
  imgUrl: "images/stmarksbasilica.jpg",
);

final venice = ImageModal(
  id: 12,
  name: "Venice",
  imgUrl: "images/venice.jpg",
);

final imageList = <ImageModal>[
  gondola,
  hotel0,
  hotel1,
  hotel2,
  mountain,
  murano,
  newdelhi,
  newyork,
  paris,
  santorini,
  saopaulo,
  stmarksbasilica,
  venice,
];
