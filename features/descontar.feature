Feature: Descontar intento

Scenario: El jugar ingresa "a"
  Given inicia el juego
  And genera palabra "scrum"
  And Se tienen "5 intentos"
  When ingresa la letra "a"
  And presiona el botón "Enviar"
  Then debo ver "4 intentos"
