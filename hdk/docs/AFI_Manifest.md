# AWS AFI Manifest File Specification

An AFI submittion to AWS through the `createFpgaImage` includes a tar file in an S3 bucket. The tar file would include the compiled image and a mandatory `manifest.txt` file.

This document provides the specification for the `manifest.txt` file.  While worth nothing that AFI built through the scripts provided by AWS would have the manifest file generated automatically.


The manifest file is a text file formated with KEY=VALUE pairs. Some keys are mandatory while others are highly reocmmended

##The mandatory keys are marked with [Mandatory]

## Manifest file specification: Version 1

* **MANIFEST_FORMAT_VERSION=**1 [Mandatory]  
      
* **DCP_HASH=**.....   [Mandatory]    
      *Includes the sha256sum value of the submitted Design Checkpoint (DCP)*

* **SHELL_VERSION**=......   [Mandatory]  
      *Taken from aws-fpga/hdk/common/[shell directory]/build/checkpoints/from_aws*

* **FILE_NAME=**.....     
      *The .dcp file name including the file type suffix*

* **HDK_VERSION=**.....     
      *[TBD]* 

* **DATE=** YY_MM_DD-HHMM     
      *Following same format used in the automatic build reports used by AWS scripts*
      
 