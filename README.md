# PCA for every single pair of populations in the 1000 Genomes Populations

## 30-second explanation on how these were made

* I used the the .vcf file from the affy_6 chip [affy_6](ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/supporting/hd_genotype_chip/ALL.wgs.nhgri_coriell_affy_6.20140825.genotypes_has_ped.vcf.gz)
* Converted to plink format
* Removed SNPs with maf < 0.01
* Created one set of plink files for all pairs of populations
* LD based pruning using plink with arguments 50 5 0.8
* Ran PCA using plink
* Used homemade python script to generate the pdfs
* The big pdf, with all the populations, was made using pdfjam
* More questions? Simply go look at the code

## Examples 
Low quality png render of a [huge pdf with all pcas on it](results/all_pairwise_pca.pdf) (I recommend you download it!)
![all pca png](results/all_pairwise_pca.png)

Example of pca for a pair of populations. All of the pairs can be found in the `figures` folder. 
![demo pair pop pca](results/demo_pca.png)


