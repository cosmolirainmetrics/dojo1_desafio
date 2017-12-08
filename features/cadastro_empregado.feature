#language: pt
#utf-8

Funcionalidade: Cadastrar empregado no site http://opensource.demo.orangehrmlive.com/
    O usuário do sistema
    Entra no site e faz login
    E cadastrará o novo empregado

Cenario: Cadastrar novo empregado
    Dado entra no site
    Quando faz o login
    E abre a tela de cadastro
    E cadastra o novo empregado    
    Entao envia o formulario
