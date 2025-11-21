# Contribuindo pela primeira vez 

## 1. Preparando sua área de trabalho (pasta pessoal)

Cada dupla terá uma pasta própria no Desktop do Mac remoto. Use PascalCase (cada palavra com inicial maiúscula, sem espaços) para o nome da pasta.

**Exemplos:**

* `JoaoSilva`
* `MariaOliveira`

No Finder: `Desktop → Nova Pasta` e nomeie usando PascalCase.

### 1.1 Clonar o repositório (forma recomendada)

A forma mais simples — e a que garante histórico correto — é clonar o repositório dentro da pasta que você criou.

Abra o Terminal e entre na sua pasta:

```sh
cd ~/Desktop/SeuNome
```

Clone o repositório dentro da sua pasta com o comando:

```sh
git clone https://github.com/laisbastosbg/Itema.git
```

Isso criará uma subpasta `Itema` com todo o projeto.

### Configurar usuário do git

Como o mesmo Mac será usado por várias pessoas, **não use configurações globais**. Configure o Git apenas dentro da pasta do seu projeto.

Para isso, entre na sua pasta do repositório (depois de clonar o projeto) e configure o Git localmente:

```sh
cd ~/Desktop/SeuNome/Itema

git config user.name "Seu Nome"
git config user.email "seu.email@exemplo.com"
```

> 💡 Esses dados ficam salvos apenas dentro da pasta do seu projeto.

---

## 2. Entrando na pasta do projeto

```sh
cd ~/Desktop/SeuNome/Itema
```

---

## Começando uma tarefa nova

### Sinalizar no quadro kanban no GitHub

1. No quadro (Projects/Board) arraste a tarefa da coluna **À Fazer** para **Em Progresso**.
2. Abra o card da tarefa e em **Assignees** coloque você e sua dupla.

### No mac remoto — preparar ambiente local

1. Entre na sua pasta do projeto:

```sh
cd ~/Desktop/SeuNome/Itema
```

2. Puxe as atualizações do remoto para garantir que você tem a versão mais recente do `develop`:

```sh
git fetch origin
git checkout develop
git pull origin develop
```

3. Crie uma branch de trabalho seguindo o padrão:

**Padrão recomendado de nome de branch:** `feature/<nome-da-task>`

Exemplos:

```sh
git checkout -b feature/login-screen
```

> 💡 O comando `git checkout -b` cria a branch e já troca para ela.

4. Abra o Xcode e comece a desenvolver.

---

## Ao longo do dia — boas práticas (para evitar problemas ao dividir o mesmo Mac)

* Trabalhem sempre **somente** dentro da pasta de vocês no Desktop.
* Antes de começar cada sessão (ou ao assumir o Mac), sempre rode:

```sh
cd ~/Desktop/SeuNome/Itema
git fetch origin
git checkout develop
git pull origin develop
git checkout feature/sua-branch
```

* Quando terminar a sessão (ou a cada 30–60 minutos), faça commit e `push` para o remoto — assim o outro membro do par pode retomar o trabalho.

---

## Fazendo um commit (passo a passo)

1. Entre na pasta do projeto:

```sh
cd ~/Desktop/SeuNome/Itema
```

2. Verifique o status dos arquivos:

```sh
git status
```

3. Adicione os arquivos que quer enviar (geralmente todos):

```sh
git add .
```

> 💡 O `.` adiciona todos os arquivos modificados na pasta atual.

4. Faça o commit com uma mensagem clara:

```sh
git commit -m "feat: implementar tela de login e validação básica"
```

### Mensagens de commit — exemplos com Conventional Commits (v1.0.0)

Use um destes tipos no começo da mensagem:

* `feat:` — nova funcionalidade
* `fix:` — correção de bug
* `docs:` — documentação
* `style:` — formatação/código sem mudanças lógicas
* `refactor:` — refatoração
* `test:` — testes
* `chore:` — tarefas de manutenção

**Exemplos:**

* `feat: adicionar botão de login com validação de e-mail`
* `fix: corrigir crash ao abrir a tela de perfil`
* `docs: atualizar README com passos de build`

---

## Principais comandos Git que você vai usar

* `git clone <url>` — clonar o repositório pela primeira vez.
* `git status` — ver arquivos modificados e branch atual.
* `git add .` — preparar arquivos para commit.
* `git commit -m "mensagem"` — criar um commit.
* `git fetch origin` — buscar atualizações do remoto (sem merge automático).
* `git pull origin <branch>` — buscar e mesclar do remoto (ex.: `git pull origin develop`).
* `git checkout <branch>` — trocar de branch.
* `git checkout -b <nova-branch>` — criar e trocar para uma nova branch.
* `git merge <outra-branch>` — mesclar outra branch na atual.
* `git push origin <branch>` — enviar sua branch para o remoto.

---

## Terminei minha task — criar Pull Request (PR)

1. Faça o commit das últimas alterações e envie sua branch:

```sh
git add .
git commit -m "feat: descrição curta do que foi feito"
git push origin feature/nome-da-sua-branch
```

2. No GitHub (repositório `Itema`):

   * Vá em **Pull requests → New pull request**.
   * Em **base:** escolha `develop`.
   * Em **compare:** escolha a sua branch `feature/xxx`.
   * Confirme e clique em **Create pull request**.

3. Preencha a descrição da PR seguindo este template (sugestão):

```
**Título:** feat: breve descrição

**Descrição completa:**
- O que foi feito
- Porque foi necessário
- Como testar (passos para rodar e validar)

**Checklist:**
- [ ] Código compila
- [ ] Testes manuais básicos realizados
- [ ] Nenhum conflito com develop

**Assignees:** @SeuUsuario @UsuarioDaDupla
**Reviewers:** @mentor-exemplo
**Labels:** feat, in-progress
```

4. Adicione **assignees**, **reviewers** e **labels** conforme necessário.
5. Aguarde a revisão. Enquanto a PR está aguardando aprovação, você pode começar outra tarefa.

---

## Verificações finais antes de fechar a PR

* O app compila e abre no simulador/emulador.
* Testes básicos (fluxos principais) funcionam.
* A descrição da PR tem instruções de teste.
* Não há arquivos sensíveis/acessos no commit (senhas, chaves privadas).

---

## Dicas de organização quando muitas equipes usam o mesmo Mac

* Sempre feche o Xcode e saia de contas que não são suas antes de trocar de dupla.
* Antes de começar, rode `git pull`/`git fetch` para garantir que a pasta local está atualizada.
* Marque no quadro (kanban) quem está usando o Mac em determinado horário — assim evitamos sobreposição.

---

## Perguntas frequentes (rápido)

**O que faço se perdi o trabalho e não fiz push?**

* Verifique `git status` e `git log --oneline -n 5` para ver commits locais. Se vir commits locais, faça `git push origin sua-branch`.

**Como eu vejo os commits que enviei?**

* `git log --oneline --graph --decorate --all` mostra um histórico compacto.

**Preciso incluir o outro membro da dupla nos commits?**

* Normalmente o commit fica com o autor (quem tiver configurado `user.name`/`user.email`). O outro membro pode aparecer como co‑autor usando `Co-authored-by:` na mensagem do commit (opcional):

```
git commit -m "feat: implementar X\n\nCo-authored-by: Nome <email@exemplo.com>"
```
