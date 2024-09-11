void main() {
// dynamic == null

  dynamic errorMensaje = 'Hola';
  errorMensaje = 123;
  errorMensaje = 'Luis';
  errorMensaje = [1, 2, 3];
  errorMensaje = {1, 2, 3};
  errorMensaje = () => true;
  errorMensaje = null;

  errorMensaje += 1;

  print("""

 
""");
}
