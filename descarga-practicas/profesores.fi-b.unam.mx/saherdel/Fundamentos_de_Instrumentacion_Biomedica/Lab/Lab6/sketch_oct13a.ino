// F.I. UNAM
// M.I. Armando Salomón Hernández Delgado
// ultima modificación: 14/10/2015
// conexion de Terminales del Arduino al potenciometro digital

#define UD  4
#define INC 5
#define CS  6
#define clk 1 // duracion del pulso


void setup(){
  Serial.begin(115200);
  pinMode(UD, OUTPUT);
  pinMode(INC,OUTPUT);
  pinMode(CS, OUTPUT);
}

void potUp(int n){ // realiza n incrementos
  digitalWrite(CS,LOW);   // habilita pot
  digitalWrite(UD,HIGH);  // Incrementar wiper 

  for(int i=0; i<n; i++){
    digitalWrite(INC,HIGH); // flanco de bajada
    delay(clk);               // retardo auxiliar
    digitalWrite(INC,LOW);
    delay(clk);
  }
  digitalWrite(CS,HIGH); // deshabilita pot
}

void potDown(int n){      // realiza n incrementos
  digitalWrite(CS,LOW);   // habilita pot
  digitalWrite(UD,LOW);   // Decrementar wiper 

  for(int i=n; i>=1; i--){
    digitalWrite(INC,HIGH); // flanco de bajada
    delay(clk);               // retardo auxiliar
    digitalWrite(INC,LOW);
    delay(clk);
  }
  digitalWrite(CS,HIGH); // deshabilita pot
}


void loop (){ 
  int i, cmd, arg;
  int val,oldp=0;

    if (Serial.available()>0){
      cmd = Serial.parseInt(); // lee valores enteros y separa cuando encuentra coma
      arg = Serial.parseInt();
      if (Serial.read() == '\n') { // si encuentra nueva linea continua
        Serial.println("cmd, arg");  
        Serial.print(cmd,DEC); Serial.print(','); Serial.println(arg,DEC);
        
        switch(cmd){
        case 0 : 
                potDown(100);
                Serial.println("Resistencia min");
                oldp = 0;
                Serial.print("level "); Serial.println(oldp,DEC);
                break;
        case 1:  // incrementa un paso 
                if (oldp < 100){
                  oldp += 1;
                  potUp(1);
                  Serial.println("up");
                }
                Serial.print("level "); Serial.println(oldp,DEC);
                break;
        case 2 : // decrementa un paso                
                if (oldp > 0){
                  oldp -= 1;
                  potDown(1);
                  Serial.println("down");
                }
                Serial.print("level "); Serial.println(oldp,DEC);
                break;
        case 3 : // incrementa n pasos 
                if (oldp < 100){
                  potUp(arg);
                  oldp += arg;
                  Serial.print(arg); Serial.println(" steps up"); 
                }
                Serial.print("level "); Serial.println(oldp,DEC);
                break;
        case 4 : // decrementa n pasos
                if (oldp > 0){
                  potDown(arg);
                  oldp -= arg;
                  Serial.print(arg); Serial.println(" steps down");                 
                }
                Serial.print("level "); Serial.println(oldp,DEC);                
                break;
        case 5 : // un nivel determinado
                val = abs(arg-oldp);
                if(arg>oldp){
                  if ((oldp+val) < 100){
                    potUp(val);
                    oldp += val;
                  }                
                }
                else {
                  if ((oldp-val)>0 ){
                    potDown(val);
                    oldp -= val;
                  }
                }
                Serial.print("nivel "); Serial.println(oldp,DEC);
                break;
        case 6 : // resistencia maxima
                potUp(100);
                Serial.println("Resistencia max");
                break;
        case 7 : // Escribir rutina para fijar ganancia
                  
                break;        
        default: Serial.println("Comando/argumento no reconocido");
                break;
        } //switch
      } // if (Serial.read() == '\n')
    } //if (Serial.available()>0)
} // void loop()

