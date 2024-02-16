import 'package:flutter/material.dart';

@immutable
class FeaturedOffer {
  final String name;
  final String description;
  final int points;
  final String imageUrl;

  const FeaturedOffer({
    required this.name,
    required this.description,
    required this.points,
    required this.imageUrl,
  });
}

const dummyFeaturedOffers = [
  FeaturedOffer(
    name: 'Spag',
    description: 'Lorem ipsum dolor sit amet,\nconsectetur adipi',
    points: 45,
    imageUrl: 'assets/images/spag.png',
  ),
  FeaturedOffer(
    name: 'Shoes',
    description: 'Lorem ipsum dolor sit amet,\nconsectetur adipi',
    points: 30,
    imageUrl: 'assets/images/shoes.png',
  ),
  FeaturedOffer(
    name: 'KFC',
    description: 'Lorem ipsum dolor sit amet,\nconsectetur adipi',
    points: 50,
    imageUrl: 'assets/images/kfc.png',
  ),
  FeaturedOffer(
    name: 'Head Phone',
    description:
        'Introducing the Echo Harmony Wireless Headphones - where unparalleled audio meets cutting-edge technology. Immerse yourself in a world of exceptional sound quality, meticulously engineered for music enthusiasts and audiophiles alike. Our headphones boast precision-tuned drivers delivering a rich and immersive audio experience. With advanced noise-canceling technology, ambient distractions fade away, allowing you to savor every note and beat. Designed for comfort, the plush ear cushions and adjustable headband ensure a perfect fit for extended listening sessions. Elevate your auditory senses with Echo Harmony - where superior craftsmanship meets the symphony of sound. Rediscover your favorite tunes with a new dimension of clarity and depth. Welcome to a world of sonic excellence.',
    points: 40,
    imageUrl: 'assets/images/headphone.png',
  ),
];
