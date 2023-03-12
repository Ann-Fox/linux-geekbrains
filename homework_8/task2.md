share=/home/developer/myshare/


cd $share


for file in *


 do


           if [ -d $file ]


             then


     		            # если директория, то переходим на следующую итерацию цикла


                     continue


           fi


           if [ -e $file ]


             then


                     # если это файл, то извлекаем владельца (а тут можно еще избавиться от grep, видимо)


                     owner=`ls -l $file | grep '^-' | awk {'print $3'}`


                     cp $file $share/$owner


                     # Учтите, что файл должен принадлежать соответствующему владельцу


     		            # чтобы смена прав отработала скрипт должен быть запущен от root'


                     chown $owner $share/$owner/$file


             fi


     done
