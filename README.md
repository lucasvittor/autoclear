# 🧼 AutoClear


**Status:** ✅ Finalizado

O **AutoClear** é um script automatizado desenvolvido em **Shell Script (Bash)**, com o objetivo de facilitar a manutenção de sistemas Linux. Ele oferece uma interface interativa no terminal para que o usuário possa realizar tarefas essenciais de limpeza e otimização, mantendo o sistema mais leve, organizado e eficiente.

---

## 🔧 Tecnologias Utilizadas

- **Shell Script (Bash)** – Linguagem principal do projeto.
- **Comandos Unix** – `rm`, `find`, `df`, `ps`, `tee`, `mkdir`, etc.
- **Logs Automáticos** – Geração de logs diários para auditoria da execução.

---

## 📌 Funcionalidades Atuais

✔️ **Limpeza de Cache** – Remove arquivos de cache de usuário e sistema.  
✔️ **Remoção de Temporários** – Apaga arquivos de `/tmp`, `/var/tmp` e outros.  
✔️ **Exclusão de Logs Antigos** – Remove arquivos `.log` com mais de 7 dias.  
✔️ **Verificação de Disco** – Exibe uso de disco por partição.  
✔️ **Identificação de Processos Pesados** – Lista os que mais consomem memória/CPU.  
✔️ **Registro de Logs** – Cada execução é salva com data, para histórico e controle.  
✔️ **Menu Interativo** – A navegação é feita por opções numéricas via terminal.

---

## 🚀 Como Usar

```bash
git clone https://github.com/lucasvittor/AutoClear.git
cd AutoClear
chmod +x AutoClear.sh
./AutoClear.sh
