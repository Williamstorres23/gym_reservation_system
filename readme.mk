# Sistema de Gerenciamento de Academia

## Descrição do Projeto
Este é um sistema desenvolvido com FastAPI para gerenciar uma academia. Ele permite o cadastro, listagem e gerenciamento de usuários, equipamentos e reservas. O objetivo principal é facilitar a administração de academias, otimizando processos e fornecendo uma interface para gerenciamento dos recursos disponíveis.

## Link do nosso video no youtube.
Link: https://www.youtube.com/watch?v=rfFo0cmA7fg&t=41s

## Funcionalidades

### Usuários
- **Listar Usuários**: Obter a lista de usuários cadastrados.
- **Cadastrar Usuário**: Adicionar novos usuários ao sistema (função em desenvolvimento).

### Equipamentos
- **Cadastrar Equipamento**: Adicionar novos equipamentos ao sistema.
- **Listar Equipamentos Disponíveis**: Visualizar equipamentos que estão disponíveis para uso.

### Reservas
- **Criar Reserva**: Realizar reservas de equipamentos para horários específicos.
- **Listar Reservas por Usuário**: Consultar reservas vinculadas a um determinado usuário (função em desenvolvimento).

## Estrutura do Projeto

### Arquitetura
O projeto segue uma arquitetura modular para manter a organização e facilitar a manutenção. Ele é dividido em:
- **Controllers**: Gerenciam as rotas e a lógica de entrada e saída das requisições.
- **Services**: Contêm as regras de negócio do sistema.
- **DAO (Data Access Object)**: Gerenciam o acesso e armazenamento de dados em memória.
- **Models**: Representam as entidades do sistema utilizando Pydantic.

### Estrutura de Diretórios
```
├── main.py                # Arquivo principal que inicia o FastAPI
├── controllers            # Contém os arquivos de controle (rotas)
│   ├── user_controller.py
│   ├── equipment_controller.py
│   └── reservation_controller.py
├── services               # Contém as regras de negócio
│   ├── user_service.py
│   ├── equipment_service.py
│   └── reservation_service.py
├── dao                    # Gerencia os dados armazenados
│   ├── user_dao.py
│   ├── equipment_dao.py
│   └── reservation_dao.py
├── models                 # Define os modelos de dados
│   ├── user.py
│   ├── equipment.py
│   └── reservation.py
└── README.md              # Documentação do projeto
```

## Tecnologias Utilizadas
- **Python** (3.9+)
- **FastAPI**: Framework para construção de APIs.
- **Pydantic**: Para validação de dados.

## Como Executar o Projeto

1. **Instale as dependências**:
   ```bash
   pip install fastapi uvicorn
   ```

2. **Execute o servidor**:
   ```bash
   uvicorn main:app --reload
   ```

3. **Acesse a documentação da API**:
   - Swagger: [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)
   - ReDoc: [http://127.0.0.1:8000/redoc](http://127.0.0.1:8000/redoc)

## Padrões de Desenvolvimento
- **Endpoints**: Seguem o padrão REST.
  - Prefixo comum para todas as rotas: `/api`
  - Exemplos:
    - `POST /api/equipment/`
    - `POST /api/reservations/`
    - `GET /api/users`
- **Código Modular**: Separação clara entre controllers, services, DAO e models.
- **Validação de Dados**: Uso do Pydantic para garantir a consistência dos dados recebidos e enviados.

## Contribuição
Sinta-se à vontade para abrir issues e pull requests para sugerir melhorias ou corrigir problemas.

## Autor
Desenvolvido por [Wesley Santos e Williams Torres].

---

**Nota**: Este projeto é um sistema básico de gerenciamento para fins educacionais e pode ser expandido com funcionalidades adicionais como autenticação, persistência em banco de dados, entre outros.
