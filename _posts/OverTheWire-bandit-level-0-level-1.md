---
title: "OverTheWire: Bandit Level 0 → Level 1"
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

### Level 0 -> 1:

## Level Goal

> 
El password para el siguiente nivel está almacenado en un archivo llamado **readme** ubicado en el directorio principal. Usa este password para iniciar sesión en bandit1 usando SSH. Cada vez que encuentres un password para un nivel, usa SSH (en el puerto 2220) para iniciar sesión en ese nivel y continuar el juego.

## Comandos que puede necesitar para resolver este nivel

> ls, cd, cat, file, du, find


## Solution

Puedes usar el comando ls para ver los archivos presentes en el directorio de trabajo actual. Para confirmar el directorio en el que te encuentras, puedes usar el comando pwd

```bash
ssh bandit0@bandit.labs.overthewire.org -p 2220
bandit0@bandit.labs.overthewire.org's password: Bandit0
```

```bash
bandit0@bandit:~$ ls  
readme
```

Vemos que hay un archivo llamado **readme**. Para ver el contenido de este archivo, podemos usar el comando **cat**.


```bash
bandit0@bandit:~$ cat readme 
NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL
```

Hemos encontrado la contraseña para el siguiente nivel.


Utiliza la contraseña encontrada arriba para iniciar sesión como bandit1 y acceder al siguiente nivel

```bash
> ssh bandit1@bandit.labs.overthewire.org -p 2220  
This is a OverTheWire game server. More information on http://www.overthewire.org/wargames

bandit1@bandit.labs.overthewire.org's password: NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL
```