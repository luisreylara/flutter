

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videos_irt/presentacion/proveedor/video_proveedor.dart';
import 'package:videos_irt/presentacion/widgets/video_scroll.dart';

class VideoPantalla extends StatelessWidget {
  const VideoPantalla({super.key});

  @override
  Widget build(BuildContext context) {

    final videoProveedor =context.watch<VideoProveedor>();
    return   Scaffold(
      body: videoProveedor.iniciandoCarga 
      ? const Center(child: CircularProgressIndicator(strokeWidth: 2,),)
      : VideoScroll(videosLista: videoProveedor.videosLista), 
    );
  }
}