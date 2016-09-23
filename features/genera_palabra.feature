Feature: Generar Palabra

Scenario: Inicio Juego
	When inicia el juego
	Then debo ver "Juego Ahorcalo"
  

Scenario: Genera Palabra Scrum
  Given inicia el juego
	When genera palabra
	Then debo ver "Adivina la Palabra"
