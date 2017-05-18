
# zcat < ALL.wgs.nhgri_coriell_affy_6.20140825.genotypes_has_ped.vcf.gz |  python ../src/change_SNPID_vcf.py | gzip > ALL_new_snpid.vcf.gz


# --geno 0.999: removes snps with 100% missing call rate (or 99.9% to be precise)
# plink --vcf ALL_new_snpid.vcf --geno 0.999 --biallelic-only --out affy_6_bial --make-bed
plink --bfile affy_6_bial --autosome --maf 0.01 --out affy_6_bial_auto_maf --make-bed





