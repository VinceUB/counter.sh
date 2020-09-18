i=0
printf $i
while true
do
    i=$(( $i+1 ))
    j=$i
    l=0
    while [ $j -gt 0 ]
    do
        j=$(( $j/10 ))
        l=$(( $l+1 ))
    done
    
    finalDelete=""
    finalAddition=""

    for (( j=0; j<$l; j++ ))
    do
        k=$(( ($i % (10 ** ($j+1))) / (10**$j) ))
        if [ "$k" == "0" ]
        then
            finalDelete="$finalDelete\x08"
            finalAddition="$k$finalAddition"
        else
            finalDelete="$finalDelete\x08"
            finalAddition="$k$finalAddition"
            break
        fi
    done

    printf $finalDelete$finalAddition
done
