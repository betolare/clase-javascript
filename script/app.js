/*
var num1=10;
var num2=5;
var res=num1*num2;

console.log(res);


var nombre='betto';
var profesion="  tecnico";
console.log(nombre+profesion);

var tiene_mascota=true;
console.log(tiene_mascota);


var datos=["luis",25,false,26,78,"Desarrollador"];

console.log(datos[0]);

estructura if
var edad=41;


if(edad>=18 && edad<=40){
 console.log("Eres un adulto joven");
}else {
	console.log("No eres un adulto joven");
}

estructura for
var dias=["Lunes", "Martes","Miercoles","Jueves","Viernes","Sabado","Domingo"];

for(var i=0;i<7;i++){
	console.log(dias[i]);
}

funcion 

function suma(num1,num2){
   var resultado=num1+num2;
   return resultado;
}

var res=suma(88,55);

console.log(res);



function iva(precio,iva){

	var iva=precio*19/100;
	return iva;
}

var res=iva(5000);

console.log(res);

var titulos=document.getElementsByTagName('h1');
console.log(titulos);

var clasetexto=document.getElementsByClassName('texto');
console.log(clasetexto);

var sede=document.getElementById(sede);
console.log('sede');*/

function iva(precio_producto,porcentaje_iva){
	var iva_producto=precio_producto*(porcentaje_iva/100);
	return iva_producto;

}

function calcular_iva(){
	var precio=parseInt(document.getElementById('precio').value);
	var porcentaje_iva=parseInt(document.getElementById('iva').value);
    var resultado=iva(precio,porcentaje_iva);
    var salida=document.getElementById('resultado');
    salida.value=resultado;
}