---
title: "OverTheWire: Bandit Level 2 → Level 3"
description: "Los juegos de guerra Bandit están dirigidos a principiantes absolutos. Enseñarán los conceptos básicos necesarios para poder jugar otros juegos de guerra."
date: 
categories:
  - Security
  - OverTheWire
tags:
  - overthewire
  - bandit
  - ctf
  - security
  - linux
published: true
media_subpath: /assets/
---



## Level Goal

> Para acceder al archivo llamado  **spaces in this filename** ubicado en el directorio raíz, puedes usar comandos en una terminal o un explorador de archivos, según tu sistema operativo.

## Commands you may need to solve this level

> ls, cd, cat, file, du, find


**Nota:** No es necesario utilizar todos los comandos para completar el nivel.

## Solucion

Ver los archivos que están presentes en el directorio de trabajo actual usando el comando `ls`

```bash
bandit2@bandit:~$ ls
spaces in this filename
```

Vea el contenido del archivo llamado `espacios en este nombre de archivo` usando el comando `cat` 

**Nota:** Le ordenamos abrir este archivo directamente ya que hay espacios en el nombre del archivo. Los espacios en el nombre se pueden escapar usando `\`, otro método es encerrar el nombre del archivo entre `".."` (comillas) 
**Nota:** El nombre de cualquier archivo en el sistema se puede completar automáticamente usando la tecla `Tab`.

```bash
bandit2@bandit:~$ ls -la 
total 24
drwxr-xr-x  2 root    root    4096 Oct  5  2023 .
drwxr-xr-x 70 root    root    4096 Oct  5  2023 ..
-rw-r--r--  1 root    root     220 Jan  6  2022 .bash_logout
-rw-r--r--  1 root    root    3771 Jan  6  2022 .bashrc
-rw-r--r--  1 root    root     807 Jan  6  2022 .profile
-rw-r-----  1 bandit3 bandit2   33 Oct  5  2023 spaces in this filename
bandit2@bandit:~$ cat spaces\ in\ this\ filename 
aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG

bandit2@bandit:~$ cat "spaces in this filename"  
UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK
```

Hemos encontrado la contraseña para el siguiente nivel. Cierre sesión en la sesión actual y use la contraseña del usuario bandit3 para acceder al siguiente nivel

```bash
> ssh bandit3@bandit.labs.overthewire.org -p 2220  

Este es un servidor de juegos OverTheWire. Más información sobre http://www.overthewire.org/wargames

bandit3@bandit.labs.overthewire.org's password: UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK
```