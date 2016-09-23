Feature: Descontar intento

Scenario: El jugar ingresa "a"
  Given inicia el juego
  And genera palabra "scrum"
  And Se tienen "Intentos: 5"
  When ingresa la letra "a"
  And presiona el botón "Enviar"
  Then debo ver "Intentos: 4"
