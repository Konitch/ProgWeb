## 👥 Equipe

- Wesley Barbosa  
- Francisco Guilherme  
- Douglas Levi  
- José Flávio  

## 🛠 Tecnologias Utilizadas

- Java com Servlets e JSP (NetBeans IDE 25/26)
- NodeJS v22.17.0
- Sass (SCSS)
- Bootstrap (componentes e responsividade)
- PostgreSQL (PgAdmin 4 para administração)

## 📁 Estrutura do Projeto

O projeto completo está disponível no repositório GitHub:  
🔗 [https://github.com/Konitch/ProgWeb](https://github.com/Konitch/ProgWeb)

### 📌 Importante:

- O projeto deve estar **dentro da pasta `ProgWeb`** para funcionar corretamente.
- O script SQL necessário para a criação do banco está disponível no arquivo `pokeshop.sql`, também dentro da pasta `ProgWeb`.
- O arquivo `Config.java` contém as credenciais de conexão com o banco. Altere o campo da senha conforme sua configuração local:

# Descrição:
Sistema web desenvolvido para fins didáticos com a proposta de simular uma loja de venda de Pokémons. O projeto permite a visualização de produtos, gerenciamento de categorias e controle de estoque, com integração a banco de dados.

# Requisitos:
- Java JDK 17 ou superior
- Apache Tomcat configurado no NetBeans
- PostgreSQL instalado e funcionando
- Git (opcional, para clonar o repositório)

# Instalação do ambiente:
1. Clone o projeto através do GitHub:
   https://github.com/Konitch/ProgWeb

2. Importe o projeto para o NetBeans na pasta chamada 'ProgWeb'.
   Certifique-se de que o nome da pasta permaneça exatamente esse, pois há dependência direta disso no sistema.

3. Configure o banco de dados:
   - Abra o PgAdmin 4.
   - Execute o script 'pokeshop.sql' que se encontra dentro da pasta do projeto.
   - Isso criará as tabelas e registros necessários para o funcionamento do sistema.

4. Configure a conexão com o banco de dados:
   - No arquivo 'Config.java' (localizado em '/modelo/dao/Config.java'), altere os dados da conexão (usuário, senha e nome do banco) conforme necessário, especialmente se o PostgreSQL estiver configurado com credenciais diferentes.

5. Compile e execute o projeto usando o NetBeans.

6. Acesse o sistema pelo navegador em:
   http://localhost:8080/ProgWeb

   A tela inicial será redirecionada automaticamente pelo servlet 'InicioServlet', conforme definido no 'web.xml'.

# Observações:
- O projeto ainda está em desenvolvimento e pode conter partes com funcionamento parcial.
- A divisão de tarefas foi realizada entre os membros da equipe. Algumas implementações podem ser atualizadas no futuro com base nos testes finais e nas solicitações recebidas.
- Caso deseje contribuir ou relatar erros, use o GitHub para abrir uma Issue ou enviar um Pull Request.
