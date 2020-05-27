#!/bin/sh

#taban donusumu bolumu

convertBase()
{
    Number=$1	#alinan sayi
    inputBase=$2  #alinan taban
    outputBase=$3  #istenilen taban
	echo "obase=$outputBase; ibase=$inputBase; $Number" | bc  #islem kismi
}

#islem bolumu

while read -r t r k     #OKU
do
	   if [ "$r" = "*" ]   #eger isaret carpi ise bu islemi yap
	   then

		   number_one=$(convertBase $t 2 10)
		   number_two=$(convertBase $k 2 10)
		   multiplication=`expr $number_one \* $number_two`
		   result=$(convertBase $multiplication 10 2)
		   echo $result

	  elif [ "$r" = "/" ]  #isaret bolme ise bu islemi yap
	  then

		   number_one=$(convertBase $t 2 10)
		   number_two=$(convertBase $k 2 10)
		   division=`expr $number_one / $number_two`
		   result=$(convertBase $division 10 2)
		   echo $result

	  elif [ "$r" = "+" ]  #isaret toplama ise bu islemi yap
	  then

		   number_one=$(convertBase $t 2 10)
		   number_two=$(convertBase $k 2 10)
		   summation=`expr $number_one + $number_two`
		   result=$(convertBase $summation 10 2)
		   echo $result

	  elif [ "$r" = "-" ]    #eger isaret eksi ise bunu yap.Burasi biraz karisik.
	  then

		   if [ $t -gt $k ]   #pozitif olma durumu.
		   then

		   little=$(convertBase $k 2 10)
		   big=$(convertBase $t 2 10)
		   subtraction=`expr $big - $little`
		   result=$(convertBase $subtraction 10 2)
		   echo $result  "(Positive)"

		   else   #negatif olma durumu.

		   little=$(convertBase $t 2 10)
		   big=$(convertBase $k 2 10)
		   subtraction=`expr $big - $little`
		   result=$(convertBase $subtraction 10 2)
		   echo $result  "(Negative)"

		   fi

	  else #isaret yoksa taban donustur.

		   convertBase $t $r $k

	  fi

done  <$1 >$2




