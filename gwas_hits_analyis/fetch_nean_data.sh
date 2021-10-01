#!/bin/bash
# This script will download Neanderthal genotype? data from
# MPI EVA servers.
# Download chromosomes that your GWAS hits are at.
# Gokberk Alagoz - 28.09.2021

gwas_chrs="1 2 3 7 8 9 10 12 15 16 17 19 20 21"

for chr in $gwas_chrs; do

	wget -nd -q "http://cdna.eva.mpg.de/neandertal/Vindija/VCF/Altai/chr${chr}_mq25_mapab100.vcf.gz"
	mv chr${chr}_mq25_mapab100.vcf.gz chr${chr}_altai.vcf.gz
	wget -nd -q "http://cdna.eva.mpg.de/neandertal/Vindija/VCF/Denisova/chr${chr}_mq25_mapab100.vcf.gz"
	mv chr${chr}_mq25_mapab100.vcf.gz chr${chr}_denisova.vcf.gz
	wget -nd -q "http://cdna.eva.mpg.de/neandertal/Vindija/VCF/LBK/chr${chr}_mq25_mapab100.vcf.gz"
	mv chr${chr}_mq25_mapab100.vcf.gz chr${chr}_lbk.vcf.gz
	wget -nd -q "http://cdna.eva.mpg.de/neandertal/Vindija/VCF/Loschbour/chr${chr}_mq25_mapab100.vcf.gz"
	mv chr${chr}_mq25_mapab100.vcf.gz chr${chr}_loschbour.vcf.gz
	wget -nd -q "http://cdna.eva.mpg.de/neandertal/Vindija/VCF/Mez1/chr${chr}_mq25_mapab100.vcf.gz"
	mv chr${chr}_mq25_mapab100.vcf.gz chr${chr}_mez1.vcf.gz
	wget -nd -q "http://cdna.eva.mpg.de/neandertal/Vindija/VCF/Ust_Ishim/chr${chr}_mq25_mapab100.vcf.gz"
	mv chr${chr}_mq25_mapab100.vcf.gz chr${chr}_ishim.vcf.gz
	wget -nd -q "http://cdna.eva.mpg.de/neandertal/Vindija/VCF/Vindija33.19/chr${chr}_mq25_mapab100.vcf.gz"
	mv chr${chr}_mq25_mapab100.vcf.gz chr${chr}_vindija.vcf.gz

done
