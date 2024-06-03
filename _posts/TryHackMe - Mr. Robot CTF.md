---
title: TryHackMe - Mr. Robot CTF
description: Based on the Mr. Robot show, can you root this box?
date: 
categories:
  - Security
  - TryHackMe
tags:
  - security
  - tryhackme
  - ctf
  - linux
published: true
media_subpath: /assets/
---

[TryHackMe \| Mr. Robot CTF](https://tryhackme.com/r/room/mrrobot)

En este habitación inspirada en la serie de Mr. Robot, tenemos la tarea de encontrar tres flags que estan ocultas en todo el sistema objetivo.

Conéctate a la red de TryHackMe usando tu archivo `.ovpn`.

```bash
sudo openvpn tryhackme-vpn.ovpn
```

[TryHackMe \| OpenVPN](https://tryhackme.com/r/room/openvpn)

Esta maquina tambien se descarga desde VulHub y configurar localmente 

[Mr-Robot: 1 \~ VulnHub](https://www.vulnhub.com/entry/mr-robot-1,151/)

## Reconocimiento 

Hacemos el reconocimiento con nmap

```bash
# Nmap 7.94SVN scan initiated Sat May 18 21:53:45 2024 as: nmap -p- --open -sS -sC -sV --min-rate 5000 -vvv -n -Pn -oN Escaneo.txt 10.10.216.194
Nmap scan report for 10.10.216.194
Host is up, received user-set (0.31s latency).
Scanned at 2024-05-18 21:53:46 EDT for 51s
Not shown: 65532 filtered tcp ports (no-response), 1 closed tcp port (reset)
Some closed ports may be reported as filtered due to --defeat-rst-ratelimit
PORT    STATE SERVICE  REASON         VERSION
80/tcp  open  http     syn-ack ttl 61 Apache httpd
|_http-favicon: Unknown favicon MD5: D41D8CD98F00B204E9800998ECF8427E
|_http-server-header: Apache
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-title: Site doesn't have a title (text/html).
443/tcp open  ssl/http syn-ack ttl 61 Apache httpd
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-server-header: Apache
|_http-favicon: Unknown favicon MD5: D41D8CD98F00B204E9800998ECF8427E
|_http-title: Site doesn't have a title (text/html).
| ssl-cert: Subject: commonName=www.example.com
| Issuer: commonName=www.example.com
| Public Key type: rsa
| Public Key bits: 1024
| Signature Algorithm: sha1WithRSAEncryption
| Not valid before: 2015-09-16T10:45:03
| Not valid after:  2025-09-13T10:45:03
| MD5:   3c16:3b19:87c3:42ad:6634:c1c9:d0aa:fb97
| SHA-1: ef0c:5fa5:931a:09a5:687c:a2c2:80c4:c792:07ce:f71b
| -----BEGIN CERTIFICATE-----
| MIIBqzCCARQCCQCgSfELirADCzANBgkqhkiG9w0BAQUFADAaMRgwFgYDVQQDDA93
| d3cuZXhhbXBsZS5jb20wHhcNMTUwOTE2MTA0NTAzWhcNMjUwOTEzMTA0NTAzWjAa
| MRgwFgYDVQQDDA93d3cuZXhhbXBsZS5jb20wgZ8wDQYJKoZIhvcNAQEBBQADgY0A
| MIGJAoGBANlxG/38e8Dy/mxwZzBboYF64tu1n8c2zsWOw8FFU0azQFxv7RPKcGwt
| sALkdAMkNcWS7J930xGamdCZPdoRY4hhfesLIshZxpyk6NoYBkmtx+GfwrrLh6mU
| yvsyno29GAlqYWfffzXRoibdDtGTn9NeMqXobVTTKTaR0BGspOS5AgMBAAEwDQYJ
| KoZIhvcNAQEFBQADgYEASfG0dH3x4/XaN6IWwaKo8XeRStjYTy/uBJEBUERlP17X
| 1TooZOYbvgFAqK8DPOl7EkzASVeu0mS5orfptWjOZ/UWVZujSNj7uu7QR4vbNERx
| ncZrydr7FklpkIN5Bj8SYc94JI9GsrHip4mpbystXkxncoOVESjRBES/iatbkl0=
|_-----END CERTIFICATE-----

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Sat May 18 21:54:37 2024 -- 1 IP address (1 host up) scanned in 52.27 seconds
```
![[assets/img/TryHackme/Mr. Robot CTF/website-1.png|640]]
![[assets/img/TryHackme/Mr. Robot CTF/website-2.png|640]]

Si seleccionamos `prepare`, se nos muestra un video.

![[assets/img/TryHackme/Mr. Robot CTF/website-3.png|640]]

Si selecionamos `question`, se nos muestrasn algunas imagenes 

![[website-4.jpg|600]]

Si seleccionamos `wakeup` se nos muestra un video

![[assets/img/TryHackme/Mr. Robot CTF/website-5.png|600]]

If we select `join` we are shown a prompt to provide our email address

![[assets/img/TryHackme/Mr. Robot CTF/website-6.png|640]]

Vamos a haer `fuzzing` con `gobuster`, y podemos encontrar directorios web típicos de wordpress como el wp-content o license:

```bash
gobuster dir -u http://10.10.216.194  -w /usr/share/dirbuster/wordlists/directory-list-lowercase-2.3-medium.txt 
===============================================================
Gobuster v3.6
by OJ Reeves (@TheColonial) & Christian Mehlmauer (@firefart)
===============================================================
[+] Url:                     http://10.10.216.194
[+] Method:                  GET
[+] Threads:                 10
[+] Wordlist:                /usr/share/dirbuster/wordlists/directory-list-lowercase-2.3-medium.txt
[+] Negative Status codes:   404
[+] User Agent:              gobuster/3.6
[+] Timeout:                 10s
===============================================================
Starting gobuster in directory enumeration mode
===============================================================
/images               (Status: 301) [Size: 236] [--> http://10.10.216.194/images/]
/blog                 (Status: 301) [Size: 234] [--> http://10.10.216.194/blog/]
/rss                  (Status: 301) [Size: 0] [--> http://10.10.216.194/feed/]
/sitemap              (Status: 200) [Size: 0]
/login                (Status: 302) [Size: 0] [--> http://10.10.216.194/wp-login.php]
/0                    (Status: 301) [Size: 0] [--> http://10.10.216.194/0/]
/feed                 (Status: 301) [Size: 0] [--> http://10.10.216.194/feed/]
/video                (Status: 301) [Size: 235] [--> http://10.10.216.194/video/]
/image                (Status: 301) [Size: 0] [--> http://10.10.216.194/image/]
/atom                 (Status: 301) [Size: 0] [--> http://10.10.216.194/feed/atom/]
/wp-content           (Status: 301) [Size: 240] [--> http://10.10.216.194/wp-content/]
/admin                (Status: 301) [Size: 235] [--> http://10.10.216.194/admin/]
/audio                (Status: 301) [Size: 235] [--> http://10.10.216.194/audio/]
/intro                (Status: 200) [Size: 516314]
/wp-login             (Status: 200) [Size: 2671]
/css                  (Status: 301) [Size: 233] [--> http://10.10.216.194/css/]
/rss2                 (Status: 301) [Size: 0] [--> http://10.10.216.194/feed/]
/license              (Status: 200) [Size: 309]
/wp-includes          (Status: 301) [Size: 241] [--> http://10.10.216.194/wp-includes/]
/readme               (Status: 200) [Size: 64]
/js                   (Status: 301) [Size: 232] [--> http://10.10.216.194/js/]
/rdf                  (Status: 301) [Size: 0] [--> http://10.10.216.194/feed/rdf/]
/page1                (Status: 301) [Size: 0] [--> http://10.10.216.194/robots]
/robots               (Status: 200) [Size: 41]
```


```bash
wget http://10.10.216.194/key-1-of-3.txt
```

**Que es la clave 1?**

> 073403c8a58a1f80d943455fb30724b9

## Acceso Inicial 

Un archivo llamado también está presente en el sitio que descargué `fsociety.dic`.


```bash
wget http://10.10.216.194/fsocity.dic
```
Cuando revisé el contenido del archivo me di cuenta de que es una lista de palabras. Revisé la lista y descubrí que contiene muchas entradas duplicadas. Me deshice de los duplicados y guardé el resultado en el archivo `wordlist.txt`

```bash
# Lista los 10 valores principales con su cuenta.
cat fsociety.dic | sort | uniq -c | more -n 10

# Writes deduplicated values to file
cat fsociety.dic | sort | uniq > wordlist.txt
```
Ahora que tenemos una lista de palabras, podemos usarla para realizar un ataque de diccionario contra la página de inicio de sesión de WordPress. Dado que es un sitio en línea (en vivo), podemos usarlo para lanzar el ataque de fuerza bruta en `hydra`.


```bash
wget http://10.10.216.194/fsocity.dic
```