/*     diferentes funciones de motores
  AVANZA
  PARA
  ATRAS
  GIRA_IZQ
  GIRA_DER
  AV_DER
  AV_IZQ
  AV_DESP
*/
void AVANZA()
{
 digitalWrite(10,HIGH);
 digitalWrite(5,HIGH);
 digitalWrite(6,LOW);
 digitalWrite(11,LOW); 
}

void PARA()
{
 digitalWrite(10,HIGH);
 digitalWrite(5,HIGH);
 digitalWrite(6,HIGH);
 digitalWrite(11,HIGH);   
}
void ATRAS()
{
 digitalWrite(6,HIGH);
 digitalWrite(11,HIGH);
 digitalWrite(10,LOW);
 digitalWrite(5,LOW); 
}
void GIRA_IZQ()
{
 digitalWrite(6,HIGH);
 digitalWrite(10,HIGH);
 digitalWrite(11,LOW);
 digitalWrite(5,LOW); 
}
void GIRA_DER()
{
 digitalWrite(5,HIGH);
 digitalWrite(11,HIGH);
 digitalWrite(10,LOW);
 digitalWrite(6,LOW); 
}
void AV_DESP()
{
 digitalWrite(10,HIGH);
 digitalWrite(5,HIGH);
 analogWrite(6,150);
 analogWrite(11,150); 
}
void AV_DER()
{
 digitalWrite(10,HIGH);
 digitalWrite(5,HIGH);
 digitalWrite(6,LOW);
 analogWrite(11,150); 
}
void AV_IZQ()
{
 digitalWrite(10,HIGH);
 digitalWrite(5,HIGH);
 digitalWrite(11,LOW);
 analogWrite(6,150); 
}
