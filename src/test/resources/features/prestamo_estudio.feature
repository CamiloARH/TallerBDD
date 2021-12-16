Feature: Prestamo Bancario para estudio
  Yo como estudiante
  Quiero solicitar un prestamos
  Para poder estudiar

  Scenario Outline: Calcular la cantidad del prestamo
    Given el estudiante quiere saber cuanto le van a prestar para el estudio
    When el estudiante se gana mensualmente <salario> COP sus gastos mensuales son <gastos> COP
    Then al estudiante le deberian prestar <resultado> COP para su estudio
    Examples:
      |salario|gastos |resultado|
      |5000000|2000000| 4300000 |
      |2500000|2000000| 1800000 |
      |2000000|500000 | 1049825 |

  Scenario Outline: Calcular los pagos dependiendo de los meses
    Given el estudiante quiere saber a cuanto le quedan las cuotas que debe pagar el prestamos
    When el estudiante escoje <numeroDeMeses> meses
    Then el estudiante deberia ver que la cantidad a pagar es de <resultado> COP
    Examples:
      |numeroDeMeses|resultado|
      |      48     |  120458 |
      |      84     |  82398  |
