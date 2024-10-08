import 'package:flutter/material.dart';

class CrushMensajesBurbuja extends StatelessWidget {
  const CrushMensajesBurbuja({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
              padding: 
                EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('Mensaje Crush',style: TextStyle(color: Colors.white),)
              ),
        ),
        const SizedBox(height: 5, ),
       _ImagenBurbuja(),
       SizedBox(height: 10,)
      ],
    );
  }
}

class _ImagenBurbuja extends StatelessWidget {
  const _ImagenBurbuja({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width*0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: const Text('Mi Crush está enviando una imágen'),
          );
        },
        width: size.width*0.7,
        height: 150,
        fit: BoxFit.cover,
        'https://yesno.wtf/assets/no/28-e19b6f658f621f7c5980a33f8249a65d.gif'),
      );
  }
}

