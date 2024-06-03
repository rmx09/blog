---
title: "OverTheWire: Bandit Level 1 → Level 2"
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

### Level 1 -> 2:

## Level Goal

> El password para el próximo nivel está almacenado en un archivo llamado readme ubicado en el directorio principal.

## Comandos que puede necesitar para resolver este nivel

> ls, cd, cat, file, du, find

**Nota:** No es necesario usar todos los comandos para completar el nivel.

## Solucion

Puedes ver los archivos presentes en el directorio de trabajo actual utilizando el comando `ls`.

```bash
bandit1@bandit:~$ ls
-
```

Podemos ver el contenido del archivo llamado - utilizando el comando cat.


**Nota:** En el directorio actual existe un archivo llamado literalmente '-' y si intentamos utilizar el comando 'cat' directamente no funcionará, ya que la terminal pensará que estamos pasando un parámetro; la contraseña para el próximo nivel está almacenada en un archivo llamado '-' ubicado en el directorio principal..

```bash
bandit1@bandit:~$ ls -la
total 24
-rw-r-----  1 bandit2 bandit1   33 Oct  5  2023 -
drwxr-xr-x  2 root    root    4096 Oct  5  2023 .
drwxr-xr-x 70 root    root    4096 Oct  5  2023 ..
-rw-r--r--  1 root    root     220 Jan  6  2022 .bash_logout
-rw-r--r--  1 root    root    3771 Jan  6  2022 .bashrc
-rw-r--r--  1 root    root     807 Jan  6  2022 .profile
bandit1@bandit:~$ cat ./-
rRGizSaX8Mk1RTb1CNQoXTcYZWU6lgzi
```

¡Hemos encontrado la contraseña para el siguiente nivel!

Para acceder al siguiente nivel, cierra la sesión actual. Esto se puede hacer escribiendo e`exit` o utilizando `Ctrl + D`

Utiliza la contraseña encontrada anteriormente del usuario bandit2 para acceder al siguiente nivel.

```bash
> ssh bandit2@bandit.labs.overthewire.org -p 2220  
Este es un servidor de juegos de OverTheWire. Más información en http://www.overthewire.org/wargames

bandit2@bandit.labs.overthewire.org's password: rRGizSaX8Mk1RTb1CNQoXTcYZWU6lgzi
```