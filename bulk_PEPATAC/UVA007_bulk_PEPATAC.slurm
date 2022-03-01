#!/bin/bash
#SBATCH --jobname=pepatac
#SBATCH --nodes=1
#SBATCH --tasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=40000
#SBATCH --time=1-12:00:00
#SBATCH --partition=standard
#SBATCH --account=cphg-millerlab
module purge
module load singularity/3.1.1
module load R
singularity exec --bind $GENOMES $IMAGES/pepatac pipelines/pepatac.py -O /scratch/amt2ug/PEPATAC_output -Q paired -C pepatac.yaml -gs hs \
-S UVA007_CA_ATAC -I /scratch/amt2ug/BW_USPD16096729_HKFMYDSXX_L2_1.fq.gz -I2 /scratch/amt2ug/BW_USPD16096729_HKFMYDSXX_L2_2.fq.gz \
-G hg38 --TSS-name $GENOMES/hg38_TSS.tsv --prealignments rCRSd human_repeats --blacklist $IMAGES/anno/hg38.blacklist.bed -P 16
