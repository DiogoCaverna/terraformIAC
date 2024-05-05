<h1>Infraestrutura como código</h1>

<h2>Preparando máquinas na AWS com Ansible e Terraform</h2>
<p>Projeto utilizado nos cursos de DevOps da Alura.</p>

### Tecnologias
<div>
  <img src="https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white">
  <img src="https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white">
  <img src="https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white">
  <img src="https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white">
</div>

<h3>Orientações:</h3>
<p>Nesse curso vamos instalar 3 ferramentas, o Terraform, o Ansible, que depende do Python e a AWS CLI.</p>

<p>Para configurar o usuario AWS no terminal, usaremos o comando aws configure onde será pedido o AWS Access Key ID, AWS Secret Access Key, Default region name e Default output format. 
  Em Default region name e Default output format podemos apenas deixar o campo vazio e apertar Enter.</p>

<h3>Observações:</h3>
<p>Na atividade 1 da aula 3 a orientação é usar a tag "user_data" para automatizar o provisionamento da nossa infraestrutura. Porém essa tag não resulta mais na destruição e 
  re-criação de uma nova instância, mas sim na atualização da instância atual. Para que os passos seguidos na aula funcionem de acordo com o esperado é necessário usar a tag
  "user_data_replace_on_change = true".</p>
  <p><br /> <i>("user_data_replace_on_change - When used in combination with user_data or user_data_base64 will trigger a destroy and recreate when set to true. 
    Defaults to false if not set.")</i></p>

<h3>Links:</h3>
<a href="https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build">Terraform-AWS-Get-Started</a>
<p></p>
<a href="https://github.com/Ileriayo/markdown-badges">Markdown-Badges</a>
<p></p>
<a href="https://shields.io/badges">Shields.io/badges</a>
