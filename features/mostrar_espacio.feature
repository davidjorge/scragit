Feature: Mostrar Espacios

Scenario: Mostrar espacios
  Given inicia el juego
  When genera palabra "scrum"
  Then debo ver "_ _ _ _ _"
