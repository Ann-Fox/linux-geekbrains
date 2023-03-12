#!/bin/bash




#!/bin/sh
until false do
 echo  файлы в каталоге:
 ls
 echo  введите название каталога, либо q для выхода
 read z
 if [ $z = q ] then
  echo выход; break
 else 
  if [ -d $z ]
  then
   rm -r $z
  echo каталог удален;
  else echo директории не существует; break
  fi
 fi
 done