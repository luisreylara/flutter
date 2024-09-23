// funciones




void main(){
print (Saludar01());
print('${ Saludar01()}');
print('${ Saludar02()}');
print(sumarNumeros01(3, 4));
print ('Suma: ${sumarNumeros01(1, 2)}');
print(sumarNumeros02(5, 1));
print(sumarNumeros03(3, 4));
print('Nombre Completo ${nombreCompleto('Luis', 'Lara')}');
print(nombreCompleto3(nombre: 'Rey',ap: 'Gonzalez'));
print(nombreCompleto4());
print(nombreCompleto5());
}

String nombreCompleto5( {required String nombre,required String ap})=>nombre+ap;

String nombreCompleto4( {String nombre='',String ap=''})=>nombre+ap;


String nombreCompleto3( {String nombre='',String ap=''}){
return nombre+ap;
}


String nombreCompleto2( String nombre,String ap)=> nombre+ap;

String nombreCompleto( String nombre,String ap){
return nombre+ap;
}

int sumarNumeros03(int a,int b) => a+b;

int sumarNumeros02(a,b) => a+b;


String Saludar01(){
return 'Hola 7B';
}
String Saludar02() => 'Hola Lunesn 23';

int sumarNumeros01(a,b){
return a+b;
}
