import 'package:flutter/material.dart';
class VideoGradiente extends StatelessWidget {

final List<Color> colors;
final List<double> stops;

  const VideoGradiente({
    super.key, 
    required this.colors, 
    required this.stops
    
    });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            stops: stops,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
            )
        ))
      
      );
  }
}