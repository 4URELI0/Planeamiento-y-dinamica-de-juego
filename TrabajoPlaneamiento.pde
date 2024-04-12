/*Declaramos las variables de los vectores del mago y el tesoro*/
PVector posMago;
PVector posTesoro;
public void setup(){

size(500,500);//Tamano de la ventana
posTesoro = new PVector(height/2, width/2);//Posicion del tesoro
}
public void draw(){
background(255);//Evitar que se dibuje varias veces en la pantalla
posMago = new PVector(mouseX, mouseY);//Las posiciones del mago seran igual a la posicion del mouse
/*Llamamos a los metodos*/
Tesoro();
Mago();
ProductoPunto();
}
public void Tesoro(){
strokeWeight(5);
point(posTesoro.x, posTesoro.y);
}
public void Mago(){
stroke(0);
line(posMago.x, posMago.y,posMago.x + 10, posMago.y);
}
public void ProductoPunto(){
/*Calculo donde dara la cercania entre mago y el tesoro */
PVector magoTesoro = PVector.sub(posTesoro,posMago);
println(magoTesoro);
/*Lo normalizamos para tener un mejor resultado*/
magoTesoro.normalize();
/*resultado del Producto punto*/
float productoPunto = posMago.x * magoTesoro.x + posMago.y * magoTesoro.y;
if(productoPunto > 0){
println("Estan apuntando hacia la misma direccion");
}else if(productoPunto == 0){
println("Es perpendicular");
}else{
println("estan en direccion opuesta");
}
}
