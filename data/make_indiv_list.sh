OUT_FOLDER="./indiv_lists"

for pop in $(cat ./pop_list.txt)
do
    echo processing population $pop
    grep $pop ./affy_FID_ID_POP_SUPERPOP.txt |  cut -f1  > $OUT_FOLDER/$pop
done

