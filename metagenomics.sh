#!/usr/bin/env bash

## Given that metagenomic samples are typically taken from a host in \
## hopes of learning something about the microbial community on the host \
## we need to filter out the host DNA as our first step

## To install KneadData use \
	pip install kneaddata

## The first step is to build a databases containing sequences you need to filter out. \
## This should be in fasta format and indexed
## For the human genome, use the command below to download the database

	kneaddata_database --download human bowtie2 <Path to the directory you wish your contaminant sequence to be>

## Build a custom Database

	kneaddata_build_database Homo_sapiens.fasta -o Homo_sapiens_db


