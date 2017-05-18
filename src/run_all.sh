

for POP1 in $(cat ../data/pop_list.txt) 
do 
    for POP2 in $(cat ../data/pop_list.txt) 
    do 
        # we 
        if [[ "${POP1}" == "${POP2}" || "${POP1}" < "${POP2}" ]]
        then 
            # testing if pdf has been created 
            # if [[ ! -f ../figures/pairs/${POP1}_${POP2}/pca_fig.pdf ]]
            # then
                echo ${POP1}_${POP2}
                # cd ../PLINK_per_pairs
                # bash do_one_pair.sh ${POP1} ${POP2}
                cd ../figures
                bash do_one_pair.sh ${POP1} ${POP2}
                cd ../src
            # fi
        fi
    done
done
