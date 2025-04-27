# 🚀 Projeto: NASA Image of the Day Mobile App

---

## 🛰️ Descrição

Aplicativo **Flutter** que consome a **API Astronomy Picture of the Day (APOD)** da NASA.  
Permite ao usuário se **cadastrar**, **logar** e visualizar a **imagem do dia** (com título e descrição).  
O sistema de autenticação de usuários é feito utilizando **Firebase Authentication**.

---

## 🎯 Funcionalidades

- 🔐 **Login** de usuários (validação via Firebase)
- 📝 **Cadastro** de novos usuários
- 🌌 **Visualização da Imagem do Dia** da NASA, exibindo:
  - Imagem (ou vídeo)
  - Título
  - Descrição detalhada

---

## 🧩 Estrutura do Projeto

```plaintext
📂 lib
 ┣ 📂 pages
 ┃ ┣ 📜 day_img.dart         # Tela principal da Imagem do Dia
 ┃ ┣ 📜 login_page.dart       # Tela de Login
 ┃ ┣ 📜 register_page.dart    # Tela de Cadastro
 ┃ ┣ 📜 firebase_options.dart # Configurações do Firebase
 ┃ ┗ 📜 main.dart             # Entrada principal do app
📂 web
 ┗ 📜 index.html (para build Web, se desejado)
```

---

## 🛠 Tecnologias Utilizadas

- 💙 **Flutter 3.x**
- 📜 **Dart**
- 🔥 **Firebase Authentication**
- 🌌 **NASA APOD API**
- 📡 **Pacote HTTP** (`http`)

---

## 📷 Demonstrações

Tela de Login:

![Captura de tela 2025-04-27 173526](https://github.com/user-attachments/assets/2c6d9d89-7e34-4c22-aabb-4aa553db7eb1)


Tela de Cadastro:

![Captura de tela 2025-04-27 173617](https://github.com/user-attachments/assets/1f06a627-da1a-4e32-a7b5-cab4c1d0920c)


Tela da Imagem do Dia:

![Captura de tela 2025-04-27 173643](https://github.com/user-attachments/assets/e37d7c92-1437-42e0-a4c9-bd89851207ad)


---

## 🔗 Links Úteis

- 🔗 [API da NASA](https://api.nasa.gov/)
- 🔗 [Flutter](https://flutter.dev/)
- 🔗 [Firebase](https://firebase.google.com/)

---

## 🧑‍💻 Como Rodar o Projeto Localmente

```bash
# 1. Clonar o repositório
git clone https://github.com/seu-usuario/seu-repo.git

# 2. Navegar até o diretório do projeto
cd mynasa-project

# 3. Instalar as dependências
flutter pub get

# 4. Rodar o projeto em modo de desenvolvimento
flutter run
```

---

## ⚙️ Configuração do Firebase

Para que o login e cadastro funcionem corretamente:

1. Configure um projeto no [Firebase Console](https://console.firebase.google.com/)
2. Ative o método de login por e-mail/senha
3. Baixe o arquivo `google-services.json` (para Android) e adicione em `android/app/`
4. Garanta que o arquivo `firebase_options.dart` esteja configurado corretamente com seu projeto

---

## 📄 Licença

Distribuído sob a licença MIT.  
Sinta-se à vontade para usar, estudar e contribuir!

---
