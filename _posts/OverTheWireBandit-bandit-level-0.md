---
title: "OverTheWire: Bandit Level 0"
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

Durante las últimas semanas, he estado adentrándome cada vez más en el ámbito de las pruebas de penetración (o como a muchos les gusta llamarlo... hacking). He estado investigando obsesivamente, practicando y perfeccionando mis habilidades básicas de Linux, así como ampliando mi conocimiento sobre herramientas.

Recientemente, mi escuela creó un "Club de Seguridad de la Información". Se centraba principalmente en enseñar y ampliar el conocimiento de los estudiantes en el campo de la Seguridad de la Información, así como en introducir a muchos en la cultura del hacking. El club decidió participar recientemente en la NCL (National Cyber League), que es un campo de entrenamiento virtual en curso para estudiantes universitarios para desarrollar, practicar y validar sus habilidades en ciberseguridad utilizando entornos de simulación de alta fidelidad de próxima generación.

La NCL es un juego de guerra basado en CTF (Capture The Flag) donde los estudiantes (ya sea en equipos o individualmente) compiten entre sí por puntos explotando vulnerabilidades de seguridad. La NCL es un CTF para principiantes que introduce a los estudiantes en el concepto de CTF, mientras enseña y permite practicar habilidades de hacking.

Durante el tiempo en que se creó este club, enseñé a muchos estudiantes los conceptos básicos de la Seguridad de la Información, así como los conceptos básicos del hacking. Sin embargo, recientemente, me topé con overthewire.org, un sitio de juego de guerra que te permite practicar tus "habilidades de hacking de élite"; y he estado obsesionado con ello. Dirigí a muchos de mis estudiantes a este sitio y les pedí que comenzaran con "Bandit". Esto tenía como objetivo ayudarles a aprender los conceptos básicos de Linux y sus comandos; ¡que todos sabemos que es una habilidad esencial en el campo de Pentest, y en la informática en sí misma! ¡Porque seamos honestos... no muchos profesionales de IT tienen habilidades de Linux!

Las siguientes soluciones son para los primeros 10 niveles de "Bandit". Aunque debo decir que por favor uses las siguientes soluciones para aprender y compararlas con tus propias respuestas. Si estás atascado en el nivel, ¡usa Google para investigar la pregunta antes de mirar las soluciones!

Entonces... ¡Empecemos!

En este post vamos a realizar todos los niveles del CTF [**OverTheWire: bandit**](https://overthewire.org/wargames/bandit/) que actualmente van desde el 0 hasta el 33.

## Level Goal

### Level 0:

> El objetivo de este nivel es que te conectes al juego usando SSH. El host al que necesitas conectarte es **bandit.labs.overthewire.org**, en el puerto 2220. El nombre de usuario es **bandit0** y la contraseña es **bandit0**. Una vez conectado, ve a la página del Nivel 1 para averiguar cómo superar el Nivel 1

## Comandos que puede necesitar para resolver este nivel

> ssh

```
> whatis ssh   
ssh (1) - OpenSSH remote login client
```

## Información conocida

*   Username: `bandit0`
*   Hostname: `bandit.labs.overthewire.org`
*   Port: `2220`
*   Password: `bandit0`

## Solucion

Comando SSH: `ssh <username>@<hostname> -p <port>`

Cuando se le pida una contraseña, escriba **bandit0** y pulse Enter

```bash
> ssh bandit0@bandit.labs.overthewire.org -p 2220
bandit0@bandit.labs.overthewire.org's password: bandit0

This is a OverTheWire game server. More information on http://www.overthewire.org/wargames

```

Para salir de la sesión SSH escriba `exit` o utilice el atajo de teclado `Ctrl + D`.