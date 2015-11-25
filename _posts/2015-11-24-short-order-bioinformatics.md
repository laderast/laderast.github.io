---
layout: post
title: "Why Short-Order Bioinformatics Doesn't Work"
---

Unfortunately, many researchers look at computational biology and bioinformatics as a black-box: you put in data, and you get results out. The bioinformaticians and computational biologists are seen as mostly computer operators who push the button and not as true collaborators. One of my co-workers calls this "short-order" bioinformatics.

There is great danger in simply pushing a button to get results. One type of analysis, Gene Set Enrichment Analysis (GSEA) is highly dependent on how mutations are incorporated into a gene set. If done carelessly, the results can be spurious. One paper dependent on GSEA analysis was Dixson, et al. This paper, *Identification of gene ontologies linked to prefrontal–hippocampal functional coupling in the human brain* was retracted. A single SNP was assigned to 8 genes and was thus over counted. Their GSEA result of "synapse organization and biogenesis" was spurious due to this assignment.

There is a lot of impatience from collaborators when results are not immediate. Understandably, much of this work is done to support a grant and there are always looming deadlines. However, there is a lot of work between a request and well-executed computational results. Potential collaborators need to be aware of these steps.

A well-executed workflow is thus essential for the computational results to be valid. This may include the following steps.

* *Mapping of identifiers for entities for each platform to the appropriate gene construct.* In the case of the SNP paper, it was appropriate assignment of SNPs to genes. However, with Systems Biology that integrate multiple OMICs types, this can include mapping protein isoforms to the mRNA transcripts if one is interested in the impact of alternative splicing. A clear strategy must be decided on and then executed.
* *Data Management* Oftentimes, we need to work with the experimentalists who are executing the research in order to understand and identify potential confounders in the data. We do this by collected and integrating metadata into our analysis, that is, data about how the experiments were executed. We need to identify technical issues such as batch effects, and scheduling time with the experimentalists is our best way of identifying these potential issues.  
* *Flagging of potentially spurious samples.* This part of the process requires exploratory data analysis on gross measurements used in the high-throughput platforms. For example, we may visualize boxplots of mean expression for each sample to see if the expression levels can be compared.
* *Selection of the appropriate statistical protocol given the experimental design.* This may require a couple of back and forths between the computational biologist and the researcher. A good computational biologist never assumes anything about the data or design.

Without a well-mapped strategy of data cleaning, the results from any bioinformatics analysis may be suspect. A good bioinformatics collaborator will ask these questions and will not take no for an answer. Any information that you withhold from your collaborator will affect their analysis.  

In short, treating computational biology as a black-box is done at the researcher's peril. Instead, a collaboration should be fostered. The best level of collaboration with computational biologists is to include them from the beginning, as part of the experimental design. This is obviously a greater level of commitment and time than simply considering them as a service core. However, the benefits and rewards are much greater at this level of collaboration.
