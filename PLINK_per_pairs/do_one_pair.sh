

POP1=$1
POP2=$2

OUT_DIR=pairs/${POP1}_${POP2}
mkdir -p $OUT_DIR

cat ../data/indiv_lists/${POP1} ../data/indiv_lists/${POP2} | awk '{print $1" "$1}' > $OUT_DIR/indiv_to_keep.txt

cat <(paste ../data/indiv_lists/${POP1} <(for i in $(seq 1 $(wc -l < ../data/indiv_lists/${POP1} )) ; do echo ${POP1} ; done ) ) <(paste ../data/indiv_lists/${POP2} <(for i in $(seq 1 $(wc -l < ../data/indiv_lists/${POP2} )) ; do echo ${POP2} ; done )) > $OUT_DIR/ID_POP.txt

plink --bfile ../data/affy_6_bial_auto_maf --keep $OUT_DIR/indiv_to_keep.txt --out $OUT_DIR/pair_pop --make-bed

# this is what is done in the John Novembre famous PCA paper. 
plink --bfile $OUT_DIR/pair_pop --indep-pairwise 50 5 0.8 --out $OUT_DIR/snp_LD
plink --bfile $OUT_DIR/pair_pop --exclude $OUT_DIR/snp_LD.prune.out --out $OUT_DIR/pair_pop_pruned --make-bed
plink --bfile $OUT_DIR/pair_pop_pruned --pca 1000 --out $OUT_DIR/plink
