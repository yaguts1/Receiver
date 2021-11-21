
int val = 0;

void setup(){
Serial.begin(9600);


cli();//stop interrupts

//set timer1 interrupt at 200Hz
  TCCR1A = 0;// set entire TCCR1A register to 0
  TCCR1B = 0;// same for TCCR1B
  TCNT1  = 0;//initialize counter value to 0
  // set compare match register for 200hz increments
  OCR1A = 9999;// = (16*10^6) / (200*8) - 1 (must be <65536)
  // turn on CTC mode
  TCCR1B |= (1 << WGM12);
  TCCR1B |= (1 << CS11); // Set CS#1 bit for 8 prescaler for timer 1  
  // enable timer compare interrupt
  TIMSK1 |= (1 << OCIE1A);

sei();//allow interrupts

}//end setup

ISR(TIMER1_COMPA_vect){//timer1 interrupt 100Hz toggles
    val=analogRead(0);
    Serial.println(val);

}

void loop(){
  //do other things here
}
