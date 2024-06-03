---
title:  "OverTheWire: 'Bandit' "
date: 
image: 
categories:
  - OverTheWire
tags:
  - OverTheWire
  - Bandit
  - CTF
---
Durante las últimas semanas, he estado adentrándome cada vez más en el ámbito de las pruebas de penetración (o como a muchos les gusta llamarlo... hacking). He estado investigando obsesivamente, practicando y perfeccionando mis habilidades básicas de Linux, así como ampliando mi conocimiento sobre herramientas.

Recientemente, mi escuela creó un "Club de Seguridad de la Información". Se centraba principalmente en enseñar y ampliar el conocimiento de los estudiantes en el campo de la Seguridad de la Información, así como en introducir a muchos en la cultura del hacking. El club decidió participar recientemente en la NCL (National Cyber League), que es un campo de entrenamiento virtual en curso para estudiantes universitarios para desarrollar, practicar y validar sus habilidades en ciberseguridad utilizando entornos de simulación de alta fidelidad de próxima generación.

La NCL es un juego de guerra basado en CTF (Capture The Flag) donde los estudiantes (ya sea en equipos o individualmente) compiten entre sí por puntos explotando vulnerabilidades de seguridad. La NCL es un CTF para principiantes que introduce a los estudiantes en el concepto de CTF, mientras enseña y permite practicar habilidades de hacking.

Durante el tiempo en que se creó este club, enseñé a muchos estudiantes los conceptos básicos de la Seguridad de la Información, así como los conceptos básicos del hacking. Sin embargo, recientemente, me topé con overthewire.org, un sitio de juego de guerra que te permite practicar tus "habilidades de hacking de élite"; y he estado obsesionado con ello. Dirigí a muchos de mis estudiantes a este sitio y les pedí que comenzaran con "Bandit". Esto tenía como objetivo ayudarles a aprender los conceptos básicos de Linux y sus comandos; ¡que todos sabemos que es una habilidad esencial en el campo de Pentest, y en la informática en sí misma! ¡Porque seamos honestos... no muchos profesionales de IT tienen habilidades de Linux!

Las siguientes soluciones son para los primeros 10 niveles de "Bandit". Aunque debo decir que por favor uses las siguientes soluciones para aprender y compararlas con tus propias respuestas. Si estás atascado en el nivel, ¡usa Google para investigar la pregunta antes de mirar las soluciones!

Entonces... ¡Empecemos!

En este post vamos a realizar todos los niveles del CTF [**OverTheWire: bandit**](https://overthewire.org/wargames/bandit/) que actualmente van desde el 0 hasta el 33.

### Level 0:

El Nivel Cero es bastante fácil, está ahí para asegurarse de que puedas conectarte al Laboratorio de Bandidos. Usaré Linux para los siguientes niveles, todos los comandos que use (después de ~# y/o ~$) se ejecutarán en la terminal. ¡Así que familiarízate con ella!

Para llegar al nivel 0, simplemente necesitamos SSH en Bandit con el nombre de usuario: bandit0 y la contraseña: bandit0.

Para empezar el primer nivel, debemos conectarnos por SSH a la siguiente dirección 'bandit.labs.overthewire.org' y mediante el usuario bandit0, contraseña bandit0 y puerto 2220.

```console
root@rmx:/home/rmx#  ssh bandit0@bandit.labs.overthewire.org -p 2220
bandit0@bandit.labs.overthewire.org's password: Bandit0
```
¡Enhorabuena! Has accedido a Bandit y estás en la shell SSH.

### Level 0 -> 1:
La contraseña para el próximo nivel está almacenada en un archivo llamado readme ubicado en el directorio principal. Usa esta contraseña para iniciar sesión en bandit1 usando SSH. Cada vez que encuentres una contraseña para un nivel, usa SSH para iniciar sesión en ese nivel y continuar el juego.

```console
bandit0@bandit:~$ ls 
readme
bandit0@bandit:~$ cat readme 
NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL
```
Ahora, desde aquí escribe "exit" y vuelve a SSH al siguiente nivel ejecutando

### Level 1 -> 2:
```console
root@rmx:/home/rmx#  ssh bandit1@bandit.labs.overthewire.org -p 2220
bandit1@bandit.labs.overthewire.org's password: NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL
```

"En el directorio actual existe un archivo llamado literalmente '-' y si intentamos utilizar el comando 'cat' directamente no funcionará, ya que la terminal pensará que estamos pasando un parámetro; la contraseña para el próximo nivel está almacenada en un archivo llamado '-' ubicado en el directorio principal..

```console
bandit1@bandit:~$ ls
-
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


### Level 2 -> 3:
```console
root@rmx:/home/rmx#  ssh bandit2@bandit.labs.overthewire.org -p 2220
bandit2@bandit.labs.overthewire.org's password: rRGizSaX8Mk1RTb1CNQoXTcYZWU6lgzi
```

La contraseña para el próximo nivel está almacenada en un archivo llamado __spaces in this filename__ubicado en el directorio principal.

```console
bandit2@bandit:~$ ls
spaces in this filename
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
```
### Level 3 -> 4:
```console
root@rmx:/home/rmx#  ssh bandit3@bandit.labs.overthewire.org -p 2220
bandit3@bandit.labs.overthewire.org's password: aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG
```
La contraseña para el próximo nivel está almacenada en un archivo oculto en el directorio __inhere__

bandit3@bandit:~$ ls
inhere
bandit3@bandit:~$ cd inhere/
bandit3@bandit:~/inhere$ ls 
bandit3@bandit:~/inhere$ ls -la
total 12
drwxr-xr-x 2 root    root    4096 Oct  5  2023 .
drwxr-xr-x 3 root    root    4096 Oct  5  2023 ..
-rw-r----- 1 bandit4 bandit3   33 Oct  5  2023 .hidden
bandit3@bandit:~/inhere$ cat .hidden 
2EW7BBsr6aMMoJ2HjW067dm8EgX26xNe

### Level 4 - >5:
```console
root@rmx:/home/rmx#  ssh bandit4@bandit.labs.overthewire.org -p 2220
bandit4@bandit.labs.overthewire.org's password: aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG
```

La contraseña para el siguiente nivel se almacena en el único archivo legible por humanos en el directorio inherente. Consejo: si su terminal está estropeado, pruebe el comando "reiniciar".

```console
bandit4@bandit:~$ ls 
inhere
bandit4@bandit:~$ cd inhere/
bandit4@bandit:~/inhere$ ls
-file00  -file01  -file02  -file03  -file04  -file05  -file06  -file07  -file08  -file09
bandit4@bandit:~/inhere$ ls -la
total 48
drwxr-xr-x 2 root    root    4096 Oct  5  2023 .
drwxr-xr-x 3 root    root    4096 Oct  5  2023 ..
-rw-r----- 1 bandit5 bandit4   33 Oct  5  2023 -file00
-rw-r----- 1 bandit5 bandit4   33 Oct  5  2023 -file01
-rw-r----- 1 bandit5 bandit4   33 Oct  5  2023 -file02
-rw-r----- 1 bandit5 bandit4   33 Oct  5  2023 -file03
-rw-r----- 1 bandit5 bandit4   33 Oct  5  2023 -file04
-rw-r----- 1 bandit5 bandit4   33 Oct  5  2023 -file05
-rw-r----- 1 bandit5 bandit4   33 Oct  5  2023 -file06
-rw-r----- 1 bandit5 bandit4   33 Oct  5  2023 -file07
-rw-r----- 1 bandit5 bandit4   33 Oct  5  2023 -file08
-rw-r----- 1 bandit5 bandit4   33 Oct  5  2023 -file09
bandit4@bandit:~/inhere$ file ./-*
./-file00: data
./-file01: data
./-file02: data
./-file03: data
./-file04: data
./-file05: data
./-file06: data
./-file07: ASCII text
./-file08: data
./-file09: data
bandit4@bandit:~/inhere$ cat ./-file07
lrIWWI6bB37kxfiCQZqUdOIYfr6eEeqR
```

### Level 5 -> 6:
```console
root@rmx:/home/rmx#  ssh bandit5@bandit.labs.overthewire.org -p 2220
bandit5@bandit.labs.overthewire.org's password: lrIWWI6bB37kxfiCQZqUdOIYfr6eEeqR
```
La contraseña para el siguiente nivel se almacena en un archivo en algún lugar debajo del directorio inhere y tiene todas las siguientes propiedades:
- legible por humanos
- 1033 bytes de tamaño
- No es ejecutable

```console
bandit5@bandit:~$ ls 
inhere
bandit5@bandit:~$ cd inhere/
bandit5@bandit:~/inhere$ ls
maybehere00  maybehere03  maybehere06  maybehere09  maybehere12  maybehere15  maybehere18
maybehere01  maybehere04  maybehere07  maybehere10  maybehere13  maybehere16  maybehere19
maybehere02  maybehere05  maybehere08  maybehere11  maybehere14  maybehere17
bandit5@bandit:~/inhere$ ls -la
total 88
drwxr-x--- 22 root bandit5 4096 Oct  5  2023 .
drwxr-xr-x  3 root root    4096 Oct  5  2023 ..
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere00
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere01
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere02
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere03
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere04
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere05
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere06
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere07
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere08
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere09
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere10
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere11
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere12
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere13
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere14
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere15
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere16
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere17
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere18
drwxr-x---  2 root bandit5 4096 Oct  5  2023 maybehere19
bandit5@bandit:~/inhere$ find .-size 1033c
find: ‘.-size’: No such file or directory
find: ‘1033c’: No such file or directory
bandit5@bandit:~/inhere$ find . -size 1033c
./maybehere07/.file2
bandit5@bandit:~/inhere$ cat ./maybehere07/.file2
P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU

```

### Level 6 -> 7:
```console
root@rmx:/home/rmx#  ssh bandit6@bandit.labs.overthewire.org -p 2220
bandit6@bandit.labs.overthewire.org's password: P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU
```
La contraseña para el próximo nivel está almacenada en algún lugar del servidor y tiene todas las siguientes propiedades:

- Propiedad del usuario bandit7.
- Propiedad del grupo bandit6.
- Tamaño de 33 bytes.

```console
bandit6@bandit:~$ ls 
bandit6@bandit:~$  find / -user bandit7 -group bandit6 2>/dev/null
/var/lib/dpkg/info/bandit7.password
bandit6@bandit:~$ cat /var/lib/dpkg/info/bandit7.password
z7WtoNQU2XfjmMtWA8u5rN4vzqu4v99S
```
### Level 7 -> 8:
```console
root@rmx:/home/rmx#  ssh bandit7@bandit.labs.overthewire.org -p 2220
bandit7@bandit.labs.overthewire.org's password: z7WtoNQU2XfjmMtWA8u5rN4vzqu4v99S
```
La contraseña para el siguiente nivel se almacena en el archivo __data.txt__  junto a la palabra __millionth__

```console
bandit7@bandit:~$ ls
data.txt
bandit7@bandit:~$ cat data.txt
```
Si ejecutas __cat data.txt__ te genera una lista larga demasido larga de password y palabras 

```console
Formica mo0dVnMSPCo9WdHItXLHMeD0w6SqbMvF
dankness's      YOdD93vvBemBnw7xH0XNKUwPkEfpe7H7
threaten        pOaRPotuhqaf7d9lM0chKcHSM5xQ23qU
monastic        HmNtOzjzjVBHmoKRMH2CMArixJtnt5X3
flank's 234YYMFvjRGfWFZeVlijZAoSaDJSZR3m
demarcates      42GyLcNN2VyYVQAzLk6lH1KoPF7gU60v
biceps's        InBCsYpHT8o1atjygiRFnVE2ExoyirYv
bandit7@bandit:~$ cat data.txt | grep millionth
millionth       TESKZC0XvTetK0S9xNwm25STk5iWrBvP
```

### Level 8 -> 9:
```console
root@rmx:/home/rmx#  ssh bandit8@bandit.labs.overthewire.org -p 2220
bandit8@bandit.labs.overthewire.org's password: TESKZC0XvTetK0S9xNwm25STk5iWrBvP
```
La contraseña para el siguiente nivel se almacena en el archivo __data.txt__ y es la única línea de texto que aparece solo una vez

```console
bandit8@bandit:~$ sort data.txt | uniq -u
EN632PlfYiZbn3PhVK3XOGSlNInNE00t
bandit8@bandit:~$ 

```

### Level 9 -> 10:
```console
root@rmx:/home/rmx#  ssh bandit9@bandit.labs.overthewire.org -p 2220
bandit9@bandit.labs.overthewire.org's password: EN632PlfYiZbn3PhVK3XOGSlNInNE00t
```
La contraseña para el siguiente nivel está almacenada en el archivo __data.txt__ en una de las pocas cadenas legibles para humanos, precedida por varios caracteres '='.

```console
bandit9@bandit:~$ ls -la
total 40
drwxr-xr-x  2 root     root     4096 Oct  5  2023 .
drwxr-xr-x 70 root     root     4096 Oct  5  2023 ..
-rw-r--r--  1 root     root      220 Jan  6  2022 .bash_logout
-rw-r--r--  1 root     root     3771 Jan  6  2022 .bashrc
-rw-r-----  1 bandit10 bandit9 19379 Oct  5  2023 data.txt
-rw-r--r--  1 root     root      807 Jan  6  2022 .profile
bandit9@bandit:~$ strings data.txt | grep "="
=2""L(
x]T========== theG)"
========== passwordk^
Y=xW
t%=q
========== is
4=}D3
{1\=
FC&=z
=Y!m
        $/2`)=Y
4_Q=\
MO=(
?=|J
WX=DA
{TbJ;=l
[=lI
========== G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s
>8=6
=r=_
=uea
zl=4
```

### Level 10 -> 11
```console
root@rmx:/home/rmx#  ssh bandit10@bandit.labs.overthewire.org -p 2220
bandit4@bandit.labs.overthewire.org's password: G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s
```
La contraseña para el siguiente nivel se almacena en el archivo __data.txt__, que contiene datos codificados en base64

```console
bandit10@bandit:~$ ls
data.txt
bandit10@bandit:~$ cat data.txt 
VGhlIHBhc3N3b3JkIGlzIDZ6UGV6aUxkUjJSS05kTllGTmI2blZDS3pwaGxYSEJNCg==
bandit10@bandit:~$ cat data.txt | base64 -d
The password is 6zPeziLdR2RKNdNYFNb6nVCKzphlXHBM
```
¡Eso es todo soldado por ahora! ¡Mantente al tanto para más Soluciones de "Bandit"!