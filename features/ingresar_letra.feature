Feature: Ingresar letra

Scenario: Ingresar letra a
 Given genera palabra "scrum"
 When ingresa la letra "a"
 And presiona el botón "Enviar"
 Then debo ver recibi "letra a"
