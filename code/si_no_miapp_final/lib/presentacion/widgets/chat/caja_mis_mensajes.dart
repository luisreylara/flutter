import 'package:flutter/material.dart';

class CajaMisMensajes extends StatelessWidget {
  final ValueChanged<String> unValor;
  const CajaMisMensajes({super.key, required this.unValor});

  @override
  Widget build(BuildContext context) {

    final textoControlador = TextEditingController();
    final colors = Theme.of(context).colorScheme;
    final FocusNode focus = FocusNode();
    return TextFormField(
      onTapOutside: (event) {
        focus.unfocus();
      },
      focusNode: focus,
      controller: textoControlador,
      onFieldSubmitted: (value) {
        unValor(value);
        textoControlador.clear();
        focus.requestFocus();
        
      },
      decoration: InputDecoration(
        hintText: "Finalice su mensaje con '?'",
        filled: true,
        suffixIcon: IconButton(
          onPressed: (){
            final textoValor = textoControlador.value.text;
            unValor(textoValor);
            textoControlador.clear();
            
          }, 
          icon: const Icon(Icons.send_outlined)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colors.primary),
          borderRadius: BorderRadius.circular(20)
        )
      ),
    );
  }
}
