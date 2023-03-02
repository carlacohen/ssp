# ssp
Analysis of suprasplinatus tendon single nucleus data  

This script follows the first two parts of the scflow pipeline.  

1.  scflow main quantnuclei  
This script performs fastqc analysis, maps the reads to the genome using kallisto, and generates a count matrix  

2. scflow seurat qc-1  
This script creates a seurat object and generates QC metrics  

Filter-ssp.Rmd is based on the filter-2 workflow of the scflow pipeline but has been customised specifically for the analysis of the following ssp samples.  

Healthy:  

MSK0783  
MSK1227  
MSK1233  
MSK1246  
MSK1270  
MSK1276  
MSK1277  
MSK1291  

These samples have Enthesis (Enth) and Midbody (MB) sections.  

Tears:  

GLA0001 full tear  
GLA0002 full tear  
MSK1505 full tear  
PRO0001 partial tear  
PRO0002 partial tear  

The patient identifiers are base on the OMB ethics number.  
GLA samples were from Glasgow.   
PRO samples were from the Procure study.  

The next step is to run the Cluster-ssp.Rmd script for dimensionality reduction and clustering.  

