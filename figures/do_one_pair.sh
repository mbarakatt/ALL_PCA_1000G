POP1=$1
POP2=$2

OUT_DIR=pairs/${POP1}_${POP2}
mkdir -p $OUT_DIR

cp ../PLINK_per_pairs/$OUT_DIR/plink.eigenval $OUT_DIR/
cp ../PLINK_per_pairs/$OUT_DIR/plink.eigenvec $OUT_DIR/
cp ../PLINK_per_pairs/$OUT_DIR/ID_POP.txt $OUT_DIR/

cd $OUT_DIR
plot_pca_plink.py 
cd -
