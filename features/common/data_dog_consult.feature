# language: pt
# encode: UTF-8

@web @consulta
Funcionalidade: Realizar consulta
  Eu como QA
  Quero garantir que os alarmes estão operando
  Para garantir que serei notificado

  Contexto: Autenticar no DataDog
    Dado que eu tenho autenticação do DataDog

  @smoke
  Cenario: Consultar alarme
    Quando eu consultar o alarme xxx
    Então retornar sucesso
