# Activiti REST - Docker

Este projeto fornece um ambiente Docker para executar o **Activiti REST API** em um contêiner **Tomcat** conectado a um banco de dados **PostgreSQL**.

---

## 📌 Pré-requisitos

* [Docker](https://www.docker.com/) instalado e configurado na sua máquina.
* Banco de dados PostgreSQL acessível (ou configure conforme desejar no arquivo `db.properties`).

---

## 🚀 Passos para executar

1️⃣ **Clone o repositório:**

```bash
git clone https://SEU-REPOSITORIO.git
cd activiti-rest-docker
```

2️⃣ **Configure o banco de dados**

* Crie o banco de dados PostgreSQL conforme desejado.
* Se necessário, edite `db.properties` para alterar:

  * Nome do banco de dados
  * Unsername
  * Password
  * Host de conexão

---

## ▶️ **Subir o container**

```bash
sh start_app.sh
```

## ⏹️ **Parar o container**

```bash
sh stop_app.sh
```

---

## 📡 **Exemplo de requisição**

A API REST fica disponível em:

```
http://localhost:<PORT>/activiti-rest/service/runtime/tasks
```

* Substitua `<PORT>` pela porta configurada no `docker-compose.yml`.
  Por padrão, a porta é `8889`.

---

## ✅ **Testar com CURL**

```bash
curl -u kermit:kermit "http://localhost:8889/activiti-rest/service/runtime/tasks"
```

> ⚙️ **Usuário/Senha padrão:** `kermit:kermit` ou conforme configurado.

---

## 📁 Estrutura

* `db.properties` → configurações do banco de dados.
* `Dockerfile` → configuração do ambiente Tomcat + Activiti REST.
* `docker-compose.yml` → orquestra o serviço Activiti REST.

---

## 🔗 Documentação oficial

* [Activiti REST API Docs](https://www.activiti.org/userguide/#rest)
* [Docker](https://docs.docker.com/)

---

**Autor:** JANIR ALVES
