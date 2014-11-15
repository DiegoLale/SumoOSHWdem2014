#define trig_der 8
#define echo_der 7
#define trig_izq 12
#define echo_izq 9


long  izqUs,derUs ;  // declaración de valores donde se va a almacenar lecturas de sensores ultrasonicos
boolean escapando = 0;//variable donde para usar cuando se detecta línea blanca
boolean foise = 0; // variable para almacenar la última posición del objetivo: 1 para izquierda; 0 para derecha
void setup()
{
  attachInterrupt(0, escapa , FALLING);
  attachInterrupt(1, escapa , FALLING);
  
  pinMode(5,OUTPUT);  //salida motor izquierdo atras cuado bajo
  pinMode(6,OUTPUT);  //salida motor izquierdo adelante cuado bajo
  pinMode(10,OUTPUT);  //salida motor izquierdo atras cuado bajo
  pinMode(11,OUTPUT);  //salida motor izquierdo adelante cuado bajo

  pinMode(trig_der,OUTPUT);  //pin trigger derecha (8) como salida
  pinMode(trig_izq,OUTPUT);  //pin trigger izquierda(12) como salida
  pinMode(echo_der,INPUT);    //pin echo derecha (7) como entrada
  pinMode(echo_izq,INPUT);    //pin echo izquierda (9) como entrada

  digitalWrite(trig_der,LOW); //prepara derecha para lectura
  digitalWrite(trig_izq,LOW);  //prepara izquierda para lectura
  PARA();       //motores parados
  delay(5000);  //retardo para pruebas
  //debe ser cambiado por función de inicio
}

void loop()
{
 
    ulo_der();
    ulo_izq();
    if(escapando == 1)
    {
      escapando = 0;
      ATRAS();
      delay(300);
      busca();
      
    }
    if(derUs > 0 && izqUs == 0 && escapando ==0) 
    {
      GIRA_DER();
      foise = 0;
    }
    if(derUs == 0 && izqUs > 0 && escapando ==0)
    {
      GIRA_IZQ();
      foise = 1;
    }
    if(derUs > 0 && izqUs > 0 && escapando ==0)
    {
      AVANZA();
    }
    if(derUs <=0 && izqUs <=0 && escapando ==0)
    {
    busca();
    }

}

