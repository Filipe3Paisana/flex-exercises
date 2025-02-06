# 🚀 Exercícios com Flex - Analisadores Léxicos

Este repositório contém exercícios práticos usando **Flex**, uma ferramenta para gerar analisadores léxicos. Cada exercício demonstra uma aplicação diferente do Flex no processamento de texto.

## 📌 Exercícios

### 1️⃣ **Analisador de Tokens Simples**

📄 Arquivo: `lexer.l`

Este exercício cria um analisador léxico que reconhece números, palavras e operadores matemáticos.

#### **Como usar**
```sh
flex lexer.l
gcc lex.yy.c -o lexer -ll
./lexer
```

#### **Exemplo de Entrada**
```txt
int x = 42;
```

#### **Saída Esperada**
```txt
[PALAVRA-CHAVE: int]
[IDENTIFICADOR: x]
[SÍMBOLO: =]
[NÚMERO: 42]
[SÍMBOLO: ;]
```

---

### 2️⃣ **Calculadora Simples**

📄 Arquivo: `calculator.l`

Este analisador reconhece operações matemáticas básicas e exibe os tokens correspondentes.

#### **Como usar**
```sh
flex calculator.l
gcc lex.yy.c -o calculator -ll
./calculator
```

#### **Exemplo de Entrada**
```txt
3 + 5 * 2
```

#### **Saída Esperada**
```txt
[NÚMERO: 3]
[OPERADOR: +]
[NÚMERO: 5]
[OPERADOR: *]
[NÚMERO: 2]
```

---

### 3️⃣ **Validador de Identificadores**

📄 Arquivo: `identifier_checker.l`

Este analisador verifica se um identificador segue as regras da linguagem C (letra ou underscore no início, seguido de letras, números ou underscores).

#### **Como usar**
```sh
flex identifier_checker.l
gcc lex.yy.c -o identifier_checker -ll
./identifier_checker
```

#### **Exemplo de Entrada**
```txt
_valid123
123abc
varName
```

#### **Saída Esperada**
```txt
VÁLIDO: _valid123
INVÁLIDO: 123abc
VÁLIDO: varName
```

---

### 4️⃣ **Analisador de Logs (Filtrando um IP específico)**

📄 Arquivo: `log_filter.l`

Este analisador extrai todas as linhas de um arquivo de log que contêm um IP específico.

#### **Como usar**
```sh
flex log_filter.l
gcc lex.yy.c -o log_filter -ll
./log_filter < access.log
```

#### **Exemplo de Entrada (Arquivo `access.log`)**
```txt
192.168.1.100 - - [05/Feb/2025:10:15:30] "GET /index.html HTTP/1.1" 200
203.0.113.55 - - [05/Feb/2025:10:16:00] "POST /login.php HTTP/1.1" 403
192.168.1.100 - - [05/Feb/2025:10:17:45] "GET /profile HTTP/1.1" 200
10.0.0.2 - - [05/Feb/2025:10:18:20] "GET /dashboard HTTP/1.1" 200
```

#### **Saída Esperada**
```txt
ACESSO ENCONTRADO: 192.168.1.100 - - [05/Feb/2025:10:15:30] "GET /index.html HTTP/1.1" 200
ACESSO ENCONTRADO: 192.168.1.100 - - [05/Feb/2025:10:17:45] "GET /profile HTTP/1.1" 200
```

---

## 📌 **Requisitos**
Para compilar e executar os exercícios, precisas de:
- **Flex** instalado (`sudo apt install flex` no Linux)
- **GCC** instalado (`sudo apt install gcc` no Linux)

Se quiseres contribuir com melhorias ou novos exercícios, sinta-se à vontade para abrir um Pull Request! 🚀

