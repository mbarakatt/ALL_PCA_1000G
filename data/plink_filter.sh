PLINK_PATH="$HOME/bin/plink"
VCF_INPUT="./ALL_affy.vcf.gz"


# geno 0.05 remove snps with 5% or more missing genotype

for pop1 in $(cat ./pop_list.txt)
do 
    for pop2 in $(cat ./pop_list.txt)
    do
        mkdir -P pairwise_plink/$pop1/
        $PLINK_PATH --vcf $VCF_INPUT --out pairwise_plink
        exit
    done
done
