
char command;

void setup()
{
  Serial.begin(9600);

  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);

  digitalWrite(8, LOW);
  digitalWrite(9, LOW);
}

void loop()
{
  if (Serial.available())
  {
    command = Serial.read();

    if (command == 'L')
    {
      digitalWrite(8, HIGH);
      digitalWrite(9, LOW);
    }

    else if (command == 'R')
    {
      digitalWrite(8, LOW);
      digitalWrite(9, HIGH);
    }

    else
    {
      digitalWrite(8, LOW);
      digitalWrite(9, LOW);
    }
  }
}