--
title: "OverTheWire: Bandit Level 3 → Level 4"
description: "The Bandit wargames are aimed at absolute beginners. It will teach the basics needed to be able to play other wargames."
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

> The password for the next level is stored in a hidden file in the **inhere** directory.

## Commands you may need to solve this level

> ls, cd, cat, file, du, find

## Solution

View the files that are present in the current working directory using the `ls` command

```bash
bandit3@bandit:~$ ls  
inhere
```

Move into the `inhere/` directory. This can be done using the `cd` command

```bash
bandit3@bandit:~$ cd inhere/
```

View files that are in the directory using the `ls` command. Since we know the file is hidden we have to use the `-a` flag to view hidden files.

(For more information on the `ls` command and its various flags refer to `man ls` or `ls --help` )

```bash
bandit3@bandit:~/inhere$ ls -a  
.  ..  .hidden
```

View the content of the `.hidden` file using the `cat` command

```bash
bandit3@bandit:~/inhere$ cat .hidden  
pIwrPrtPN36QITSp3EQaw936yaFoFgAB
```

We have found the password for the next level !!

Logout of the current session and use the password of user bandit4 to access the next level

```bash
> ssh bandit4@bandit.labs.overthewire.org -p 2220  
This is a OverTheWire game server. More information on http://www.overthewire.org/wargames

bandit4@bandit.labs.overthewire.org's password: pIwrPrtPN36QITSp3EQaw936yaFoFgAB
```