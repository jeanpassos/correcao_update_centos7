# correcao_update_centos7


Este projeto fornece um script Correção e automatiza a atualizar sistemas CentOS 7 utilizando SSH. O script configura os repositórios do CentOS para uma versão específica, limpa o cache do YUM e executa a atualização do sistema.

## 📦 Estrutura do Projeto


## ⚙️ Pré-requisitos

- **Sistema Operacional:** CentOS 7
- **Acesso SSH:** Acesso root ou privilégios de sudo no servidor remoto
- **Ferramentas:** `git`, `ssh`, `scp` instalados na máquina local

## 🚀 Instalação

### 1. Clonar o Repositório

Primeiro, clone este repositório para a sua máquina local:

```bash
git clone https://github.com/jeanpassos/correcao_update_centos7.git
cd update-centos7

📄 Uso
O script realiza as seguintes ações:

Verificação de Permissões: Garante que o script esteja sendo executado com privilégios de root.
Backup do Repositório Atual: Cria uma cópia de segurança do arquivo CentOS-Base.repo.
Atualização dos Repositórios: Substitui o conteúdo do arquivo CentOS-Base.repo para apontar para os repositórios do vault.centos.org.
Limpeza do Cache do YUM: Executa yum clean all para limpar o cache.
Atualização do Sistema: Executa yum update -y para atualizar todos os pacotes instalados.

🛠️ Personalização
Caso precise modificar os repositórios ou adicionar novos, edite o script update_centos7.sh conforme necessário.

📝 Contribuição
Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

📄 Licença
Este projeto está licenciado sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.

📞 Suporte
Para suporte, abra uma issue neste repositório ou entre em contato diretamente.


