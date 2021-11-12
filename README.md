## Scripts of CAD snATAC (single nucleus ATAC-seq) analysis

This section first contains information for overlapping coronary artery cell type peaks with CAD SNPs from two recent CAD GWAS meta-analyses van der Harst P and Verweij N., Circulation Research. 2018. and Koyama S et al., Nature Genetics. 2020.

We also include scripts used for performing cell-type specific LD score regression in the 4_RASQUAL_caQTL/ldsc/ folder. This section finally contains scripts used for calculating chromatin accessibility QTLs (caQTLs) within individual coronary artery cell types using RASQUAL (Robust Allele Specific QUantification and quality controL, Kumasaka et al. Nat Genet 2015). All of the caQTL scripts are in the 4_RASQUAL_caQTL/single_cell_ASE_QTL/ folder.

We used the scripts provided with the RASQUAL package plus adapted scripts from Liu et al., Am J Hum Genet. 2018. We thank Natsuhiko Kumasaka and Boxiang Liu for their assistance with RASQUAL.

Here we provide information for:

* Generation of RASQUAL input files using rasqualTools
* Generation of allele-specific vcf files from cell type bam files and patient genotype VCF files. We bypassed the qcfilterBam step in the createASVCF.sh script due to incompatibility with single cell bam files.
* Running RASQUAL for cell type peaks and variants within a +/- 10 kb window.
* Running RASQUAL for bulk ATAC-seq libraries from the same patients
