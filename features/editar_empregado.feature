#language: pt
#utf-8

Funcionalidade: Editar um empregado existente no site http://opensource.demo.orangehrmlive.com/
    O usuário do sistema
    Entra no site e faz login
    E eidta um empregado existente

Cenario: Editar Empregado
    Dado entra no site
    Quando faz o login
    E realiza busca
    E seleciona o empregado na lista
    E edita o empregado
    Entao envia o formulario
