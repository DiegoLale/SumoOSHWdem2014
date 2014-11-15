


void ulo_izq()
 {
   digitalWrite(trig_izq, LOW);  // Added this line
   delayMicroseconds(2); // Added this line
   digitalWrite(trig_izq, HIGH);
   delayMicroseconds(10); // Added this line
   digitalWrite(trig_izq, LOW);
   izqUs = pulseIn(echo_izq, HIGH,2000);
 }
 
 void ulo_der()
 {
   digitalWrite(trig_der, LOW);  // Added this line
   delayMicroseconds(2); // Added this line
   digitalWrite(trig_der, HIGH);
   delayMicroseconds(10); // Added this line
   digitalWrite(trig_der, LOW);
   derUs = pulseIn(echo_der, HIGH,2000);

 }
