# Desafio Tunts - QA

Este **pseudo-código** em **Robot** tem como objetivo estruturar um cenário de testes web para a área de cadastro de usuário.

## Estrutura do Test Case

O projeto consiste em 3 códigos:
1. base.robot
    - Inicialização e término da página web;
2. keywords.robot
    - Keywords (funções) que serão utilizadas dentro do Test Case;
3. user_registration.robot
    - O Test Case em si, o qual irá rodar as keywords e verificar se o teste passou ou não.

**OBS: As variáveis seriam xpaths extraídos do código HTML da página web a ser testada**

## Test Case

O Test Case "user_registration" possui 5 testes:
1. Validate username;
2. Validate e-mail;
3. Validate password;
4. Validate repeat password;
5. Validate user registrarion.

Com cada teste possuindo a validação em tempo real, utilizando o método de esperar na tela o popup desejado.
