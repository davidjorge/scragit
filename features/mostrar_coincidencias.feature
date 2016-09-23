Feature: Mostrar coincidencias

Scenario: "Se ingresa la letra S"
  Given genera palabra "scrum"
  When ingresa la letra "s"
  And presiona el botón "Enviar"
  Then debo ver "s _ _ _ _"
