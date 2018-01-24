#language: pt
#utf-8

Funcionalidade: Registro de Empregados
Eu como usuario do site OrangeHRM
Quero registar os dados dos empregados
Para ter acesso a suas informacoes no sistema

 @cadastrar
 Cenario: Cadastrar um empregado 
 Dado que eu esteja logado no site OrangeHRM
 Quando cadastrar um novo empregado com dados validos 
 Entao o cadastro sera efetuado com sucesso

 @editar_cadastro
 Cenario: Editar um empregado 
 Dado que eu esteja na pagina Employee List do site OrangeHRM
 Quando pesquisar um empregado e editar os seus dados  
 Entao os dados serao alterados com sucesso






