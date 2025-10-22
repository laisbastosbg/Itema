# 📦 Controle de Estoque — App iOS (SwiftUI + SwiftData)

Um aplicativo moderno para **gerenciamento de estoque**, desenvolvido em **SwiftUI** e utilizando o **SwiftData** como camada de persistência.  
O objetivo é oferecer uma maneira simples e eficiente de acompanhar a quantidade de itens em estoque, gerar relatórios e receber notificações quando um produto estiver prestes a acabar.

---

## 🚀 Funcionalidades Principais

- 🧾 **Cadastro de Itens**  
  Adicione, edite e remova produtos do estoque com facilidade.

- 📊 **Relatórios de Consumo**  
  Gere relatórios detalhados sobre o uso de cada item, com histórico de movimentação e estatísticas de consumo.

- 🔔 **Notificações Inteligentes**  
  O app alerta automaticamente quando o nível de um item estiver próximo do limite definido, ajudando na reposição preventiva.

- 📦 **Controle de Quantidade**  
  Atualize o estoque em tempo real conforme itens são adicionados ou retirados.

- ☁️ **Armazenamento com SwiftData**  
  Os dados são armazenados localmente utilizando o framework nativo de persistência da Apple, garantindo performance e confiabilidade.

---

## 📱 Protótipo

Acesse o protótipo no [figma](https://www.figma.com/design/HPXK23hGDdvRRIlDCpJLsr/App-Estoque?node-id=63-764&t=w5bIR2qHfUPG4Uf6-1).

---

## 🧠 Tecnologias Utilizadas

| Tecnologia | Função |
|-------------|--------|
| **Swift 6** | Linguagem principal do projeto |
| **SwiftUI** | Interface declarativa e responsiva |
| **SwiftData** | Persistência de dados local moderna |
| **UserNotifications** | Envio de notificações locais |
| **Charts (opcional)** | Visualização gráfica dos relatórios |

---

## 📱 Requisitos

- iOS **18.0** ou superior  
- Xcode **16.0** ou superior  
- Swift **6.0**

---

## 🏗️ Estrutura do Projeto
```md
📂 Itema/
├─ 📁 Models/ → Modelos SwiftData (Item, Categoria, Histórico)
├─ 📁 Views/ → Telas SwiftUI (Listas, Detalhes, Edição)
├─ 📁 ViewModels/ → Lógica de negócio e controle de estado
├─ 📁 Services/ → Notificações, relatórios e utilitários
├─ 📁 Resources/ → Ícones, assets e strings
└─ 📄 ItemaApp.swift → Ponto de entrada da aplicação
```
