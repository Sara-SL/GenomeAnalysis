

########## GenomAnalysis Porject 2020 ##########
 ###### Differentail Expression analysis ######


# Install packages-----------------------------------------------------------------

# Install all needed packgages and load needed libraries
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("DESeq2")

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("apeglm")

install.packages("readxl")
library("DESeq2")
library("readxl")

install.packages('ape')
library('ape')


# ID to GeneName ---------------------------------------------------------

# Merge gene id from Htseq-count and gene name from original annotation file
directory <- setwd('/Users/saralundqvist/Documents/Skola/4/Genomanalys/git/GenomeAnalysis/5_differential_expression/Htseq_samples/htseq_sample_out')
data <- read.gff('/Users/saralundqvist/Documents/Skola/4/Genomanalys/git/GenomeAnalysis/Data/GCF_001595765.1_Mnat.v1_genomic.gff')
attributes <- data.frame(data$attributes)
pattern = "ID=id[0-9]+"
attributes_cleaned <- grep( pattern, attributes$data.attributes)
subset <- data.frame(attributes$data.attributes[attributes_cleaned])

pattern_2 = "GeneID:[0-9]+"
attribute_cleaned_2 <- grep(pattern_2, subset$attributes.data.attributes.attributes_cleaned.)
subset_2 <- data.frame(subset$attributes.data.attributes.attributes_cleaned.[attribute_cleaned_2])

attributes_id <- regexpr( pattern, subset_2$subset.attributes.data.attributes.attributes_cleaned..attribute_cleaned_2.)
id <- regmatches(subset_2$subset.attributes.data.attributes.attributes_cleaned..attribute_cleaned_2., attributes_id)

pattern_3 = "gene=[A-Z 0-9]*"
attributes_gene <- regexpr( pattern_3, subset_2$subset.attributes.data.attributes.attributes_cleaned..attribute_cleaned_2.)
gene <- regmatches(subset_2$subset.attributes.data.attributes.attributes_cleaned..attribute_cleaned_2., attributes_gene)

final <- cbind(id, gene)
final <- sub("gene=(*)","\\1",final)
final <- sub("ID=(*)","\\1",final)
final <- data.frame(final)


# DEseq2 ------------------------------------------------------------------

# Specify which files to read 
sampleFiles <- grep("htseq",list.files(directory),value=TRUE)
sampleName <- sub("htseq_(\\w*)_out","\\1",sampleFiles)
sampleCondition <- sub("htseq_(\\w*).\\w\\w\\d\\d.\\d\\d_out","\\1",sampleFiles)
sampleTable <- data.frame(sampleName = sampleFiles,
                          fileName = sampleFiles,
                          condition = sampleCondition)
sampleTable$condition <- factor(sampleTable$condition)

# Build the DESeqDataSet 
library("DESeq2")
ddsHTSeq <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable,
                                       directory = directory,
                                       design= ~ condition)
ddsHTSeq

# Pre-filter low count genes
keep <- rowSums(counts(ddsHTSeq)) >= 10
ddsHTSeq <- ddsHTSeq[keep,]

# Tell the DESeq2 functions which level to compare against
ddsHTSeq$condition <- factor(ddsHTSeq$condition, levels = c("FL","HL"))

# Run differential expression analysis
ddsHTSeq <- DESeq(ddsHTSeq)
res <- results(ddsHTSeq)
res


# DEseq2 result -----------------------------------------------------------

# Shrinkage of effect size (LFC estimates) - useful for visualization and ranking of genes
resultsNames(ddsHTSeq)
resLFC <- lfcShrink(ddsHTSeq, coef="condition_HL_vs_FL", type="apeglm")
resLFC

# Order results table by the smallest p value
resOrdered <- res[order(res$pvalue),]
resOrdered

# Summarize some basic tallies
summary(res)

# Number of adjusted p-values less than 0.1
sum(res$padj < 0.1, na.rm=TRUE)

# Adjust p-value cutoff
res05 <- results(ddsHTSeq, alpha=0.05)
summary(res05)
sum(res05$padj < 0.05, na.rm=TRUE)

# Extract the genes with significant differental expression
idx <- which(res05$padj < 0.05)
IDs_sign <- rownames(res05)[idx]
genes_sign <- data.frame(final$id[column], final$gene[column], res05$log2FoldChange[idx])
names(genes_sign)[1] <- "ID"
names(genes_sign)[2] <- "GeneName"
names(genes_sign)[3] <- "log2FoldChange"

# Plot a specific id
plotCounts(ddsHTSeq, gene=IDs_sign[4], intgroup="condition")
plotCounts(ddsHTSeq, gene=IDs_sign[19], intgroup="condition")



