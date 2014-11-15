

void escapa()//funcion a la que se llama cuando se detecta la línea blanca para andar hacia atrás
{
  escapando = 1;//pone la bandera a 1 para que salga de la interrupción y siga para atras con delay
  ATRAS();
}

void busca()
{
  if (foise==1)
  {
    GIRA_IZQ();
  }
  else
  {
    GIRA_DER();
  }
}
