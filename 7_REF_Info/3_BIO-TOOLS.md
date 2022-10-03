# Genomic Tools

This page lists some common genomics tools used in bioinformatics analysis pipelines.  

## Tools Summary Table

|Name |Functionality                            |Phase                 |Notes                              |Maintainers                                                                                                                     |
|-----|---------------------------------|----------------------|-----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|
|[GATK](https://software.broadinstitute.org/gatk/)| comprehensive set of analysis tools                | all   | example pipelines on Terra.bio | The Broad Institute |     
|[DRAGEN](https://www.illumina.com/products/by-type/informatics-products/dragen-bio-it-platform.html)| comprehensive set of highly-optimized analysis tools (requires `fpga`)               | all   | example pipelines at Illumina | Illumina |                                                              |
|[samtools](https://www.samtools.org/)| for manipulating and indexing BAM files                           | all   | example pipelines on Terra.bio | open source |         
|[blast](https://www.softwareradius.com/best-bioinformatics-software-and-tools/#20_BLAST) | for searching similar sequences to the query sequence            |begin | example pipelines on Nextflow.io | open source |
|[HAIL](https://hail.is/)| variant analysis        | end    | runs on Spark for scalability | The Broad Institute   |
|[IGV](http://www.broadinstitute.org/igv/)| visualization      | all    | can embed in Jupyter notebooks | The Broad Institute   |
|[VariantSpark](https://bioinformatics.csiro.au/variantspark/)| variant discovery  | end    | binary format                     | CSIRO Bioinformatics |
|[GT-Scan](https://bioinformatics.csiro.au/gt-scan/)| variant analysis    | end  | none                  | CSIRO Bioinformatics |


### Learn More -> Links
 - 📘 IGV (Integrative Genomics Viewer) tool - [link](http://software.broadinstitute.org/software/igv/) from The Broad
  - :octocat: Learning how to work with VCF (Variant Call Format) files 
 [link](https://github.com/davetang/learning_vcf_file)
 - 📘 General reference 'How sequencing works' - [link](https://learn.gencore.bio.nyu.edu/ngs-file-formats/how-sequencing-works/)
 - 📘 GATK tools (from The Broad) to convert genomic files - [link](https://support.terra.bio/hc/en-us/articles/360029577711-Converting-common-genomics-file-formats-) - from/to common formats (i.e. paired FASTQ to unmapped BAM, etc...)
 - 📘 How to generate a BAM - [link](https://gatk.broadinstitute.org/hc/en-us/articles/4403687183515--How-to-Generate-an-unmapped-BAM-from-FASTQ-or-aligned-BAM) & image below from The Broad

<img src="https://github.com/lynnlangit/aws-for-bioinformatics/blob/main/7_REF_Info/images/file-images/generate-BAM.png">


 ### Image References
 - FASTA/FASTQ images from [link](https://www.researchgate.net/publication/309134977_A_Survey_on_Data_Compression_Methods_for_Biological_Sequences)
 - BAM w/IGV from [link](https://software.broadinstitute.org/software/igv/AlignmentData)
 - VCF image from [link](https://www.researchgate.net/figure/shows-an-example-VCF-file-For-more-details-about-VCF-files-refer-to-the-specification_fig6_316063749)
 - VCF alterate image from [link](http://vcftools.sourceforge.net/VCF-poster.pdf) 
 - GVCF vs. VCF comparison from [link](https://github.com/broadinstitute/gatk-docs/blob/master/gatk3-faqs/What_is_a_GVCF_and_how_is_it_different_from_a_%27regular%27_VCF%3F.md)






