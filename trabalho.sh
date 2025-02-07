#!/bin/bash

# 1A - Capturar apenas números binários da entrada
grep -o '[01]*' bruxarias.txt > 1a.txt

# 1B - Capturar números binários de no máximo 8 dígitos começando com 1
grep -o -E '1[01]{0,7}' bruxarias.txt > 1b.txt

# 1C - Capturar números binários de no máximo 8 dígitos começando com 1, linha completa
grep -E '^1[01]{0,7}$' bruxarias.txt > 1c.txt

# 1D - Capturar números começando com 1 e contendo apenas dígitos (CORREÇÃO DO ERRO)
grep -o -E '1[0-9]+' bruxarias.txt > 1d.txt

# 1E - Capturar palavras que contenham "utt" ou "ett"
grep -o -E '[ue]tt' bruxarias.txt > 1e.txt

# 1F - Capturar palavras que comecem com letra maiúscula e tenham pelo menos 3 letras (CORREÇÃO)
grep -o -E '\b[A-Z][a-z]{2,}\b' bruxarias.txt > 1f.txt

# 1G - Capturar palavras em caixa alta com números e underscore (CORREÇÃO DO ERRO)
grep -o -E '\b[A-Z][A-Z0-9_]*\b' bruxarias.txt > 1g.txt

# 1H - Capturar endereços IP válidos (CORREÇÃO DO ERRO)
grep -o -E '((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)' bruxarias.txt > 1h.txt

# 2A - Listar diretórios dentro de /etc
find /etc -type d > 2a.txt

# 2B - Listar apenas os diretórios de primeiro nível dentro de /etc
find /etc -maxdepth 1 -type d > 2b.txt

# 2C - Listar arquivos dentro de /etc maiores que 1 KB
find /etc -type f -size +1k > 2c.txt

# 2D - Encontrar arquivos modificados nos últimos 7 dias dentro de /var
find /var -type f -mtime -7 > 2d.txt

# 3A - Capturar apenas os nomes dos usuários do sistema
awk -F: '{print $1}' /etc/passwd > 3a.txt

# 3B - Capturar os nomes dos usuários entre as linhas 10 e 20
awk -F: 'NR>=10 && NR<=20 {print $1}' /etc/passwd > 3b.txt

# 4A - Alterar o nome do usuário atual para "exercicio" (USE COM CUIDADO)
sudo sed -i "s/^$USER:/exercicio:/" /etc/passwd > 4a.txt

# 4B - Apagar a linha do usuário atual do /etc/passwd (USE COM CUIDADO)
sudo sed -i "/^$USER:/d" /etc/passwd > 4b.txt

