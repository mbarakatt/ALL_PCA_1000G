

POP1=$1
POP2=$2

OUT_DIR=pairs/${POP1}_${POP2}
mkdir -p $OUT_DIR

for POP1 in $(cat ../data/pop_list.txt) 
do 
    for POP2 in $(cat ../data/pop_list.txt) 
    do 
        # we 
        if [[ "${POP1}" > "${POP2}" ]]
        then 
            cd pairs
            rm -r ${POP1}_${POP2}
            cd -
        fi
    done
done
