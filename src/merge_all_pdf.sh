
# This is insane...

figure_list=""

# for POP1 in GWD IBS ITU YRI 
for POP1 in $(cat ../data/pop_list.txt) 
do 
    # for POP2 in GWD IBS ITU YRI
    for POP2 in $(cat ../data/pop_list.txt) 
    do 
        if [[ "${POP1}" < "${POP2}" ]]
        then 
            echo ${POP1}_${POP2}
            figure_list="${figure_list} ../figures/pairs/${POP1}_${POP2}/pca_fig.pdf"
        else
            echo ${POP2}_${POP1}
            figure_list="${figure_list} ../figures/pairs/${POP2}_${POP1}/pca_fig.pdf"
        fi
    done
done

pdfjam ${figure_list} --papersize '{14in,10in}' --nup 26x26 --outfile all_pairwise_pca.pdf
