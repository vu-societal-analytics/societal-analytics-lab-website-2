---
title: "Accessing large language models for research and for education in R"
date: "2026-11-20"
category: "computing"
author: "Sofia Gil-Clavel"
summary: "A practical guide for researchers and teachers who want to use large language models in R."
---

-   [Index:](#accessing-large-language-models-for-research-and-for-education-in-r)
    -   [Three core reasons to use LLMs hosted by you or by your institution](#three-core-reasons-to-use-llms-hosted-by-you-or-by-your-institution)
        -   [Honesty](#honesty)
        -   [Independence](#independence)
        -   [Transparency](#transparency)
    -   [Accessing LLMs hosted by you or by your institution](#accessing-llms-hosted-by-you-or-by-your-institution)
        -   [Stored and run in your local computer](#stored-and-run-in-your-local-computer)
        -   [Stored and run in VU JupyterHub](#stored-and-run-in-vu-jupyterhub)
        -   [Stored and run in VU Nebula](#stored-and-run-in-vu-nebula)
    -   [References](#references)


# Accessing Large Language Models for research and for education in R

Are you a researcher looking for the safest way to access powerful Large Language 
Models (LLMs)? Or, perhaps, you are looking for the best way to teach how to use 
LLMs to your students? Then this blog post is for you!

## Three core reasons to use LLMs hosted by you or by your institution

There are three main reasons why you should consider using LLMs hosted by you or 
by your academic institution: honesty, independence, and transparency. Yes, they 
all linked to the Netherlands Code of Conduct for Research Integrity (2026).

### Honesty

Following the Netherlands Code of Conduct for Research Integrity 2027 (2026, p. 8): 

> Researchers work truthfully. This means, among other things, that they report 
the research process accurately, refrain from fabricating or falsifying data or 
sources, take alternative points of view and counterarguments seriously, are open 
about margins of uncertainty, and do not present results more favourably or 
unfavourably than they are. Researchers also acknowledge all those who contributed 
to the research and do not take credit for the work of others.

Unfortunately, any time you access models hosted by private companies (e.g., 
Chat-GPT from OpenAI, or Gemini from Google DeepMind) you are giving away your 
data. This is especially concerning when you are working with private or sensitive 
information, such as your own research. By continuing the cycle of inadequate usage 
of private LLMs providers, you continue to use other people’s work without 
acknowledging them, and others continue to use your work without acknowledging you.

### Independence

In terms of independence, according to the Netherlands Code of Conduct for Research 
Integrity 2027 (2026, p. 8): 

> Researchers adopt an open and critical attitude, also towards themselves. They 
strive to be aware of their preferences, beliefs, and biases, and are prepared 
to account for them. Researchers safeguard their independence. In their research, 
they do not let themselves be guided by, for example, personal, political, or 
commercial interests, and resist any undue influence. Researchers must be able 
to trust that the institutions enable them to do so and protect academic freedom.

The continues usage of models hosted by private companies contributes to the 
reinforcement of power dynamics. Just think about it, how many of your friends 
and colleagues are currently using LLMs? How many of them rely on, e.g., Chat-GPT, 
Gemini, or Copilot? Where are those models hosted? Indeed, all of them are hosted 
in the same geographical region. So, your friends and colleagues are all benefiting 
mostly of US-based companies.

### Transparency

In terms of transparency the Netherlands Code of Conduct for Research Integrity 2027 (2026, p. 8) states:

> Researchers make clear on which data and methods the research is based, how 
results were obtained, and what the role of (external) stakeholders has been. 
They design the research process in such a way that it can be followed (and 
possibly reproduced) and verified, at least by peers. If parts of the research 
or the data cannot be made accessible, researchers can provide an adequate 
justification for why this is so.

When you use models that are hosted by you or your local institutions your results 
can be reproduced. This is because once a model lives in an institution, the 
same version can continue to be accessed by others. The models would not depend 
on (private) external providers.

## Accessing LLMs hosted by you or by your institution

To run the LLMs, we will show you examples using the R-package [tidyllm](https://github.com/edubruell/tidyllm) and [ellmer](https://ellmer.tidyverse.org/). 
So, make sure you have installed it in R before you start following this tutorial.
These are the versions used in this tutorial:

*	R (4.4.2)

* RStudio (2024.12.0)

* tidyllm (0.8.0)

* ellmer (0.5.2)

In theory, if you have the same specifications or above, the examples we provide should work.

### Stored and run in your local computer

You can install and access the models using the [Ollama](https://ollama.com/) software. 

This is the best option for those that want to test code or use small models on 
their local computers. This is also an excellent option to teach students how to 
use LLMs without having to pay external providers. 

We recommend using this option in the following cases:

1. Your computer has more than 8GB of RAM.

2. You are interested in running small LLMs, e.g. those between 1b and 2b. You 
can check the available models here: [https://ollama.com/library](https://ollama.com/library) 

If you said yes to one or more of the previous statements, then you should go 
ahead and install Ollama on your computer. 

R tutorials to interact with Ollama using:

* [tidyllm](https://edubruell.github.io/tidyllm/articles/tidyllm_local_models.html)

* Here is our minimal example [LLMs_Ollama_locally.R](https://github.com/vu-societal-analytics/societal-analytics-lab-website/blob/master/_blogs/R_scripts/LLMs_Ollama_locally.R)

* Here is an extended example that covers more concepts, such as classification 
and models' validation: [Zero-shot Classification with LLMs](https://r4css.vanatteveldt.com/chapters/11-llms.html).
This example comes from Atteveldt (2026) book.

### Stored and run in VU JupyterHub

Another way to access Ollama is via [VU JupyterHub](https://hub.compute.vu.nl/), 
where Ollama is already installed and running. 

VU JupyterHub is a server managed by VU IT. In it, anyone can access different 
(course) environments in which, e.g., specific R and RStudio versions are already 
installed, as well as specific R-packages. For a complete guideline on what it is 
and how to use it, you can check the third session of my [“R-Course: Tools for 
teaching and research”](https://github.com/SofiaG1l/R_Course_Tools/blob/main/3_VUtools/Session3_VUtools_VUtools_SGC.pdf) (Gil-Clavel, 2026). 

We recommend using VU JupyterHub in the following cases:

1. You are interested in running small LLMs in parallel or using GPUs (which 
makes the models run faster). 

2. You want to give students the option to access Ollama without installing 
the software on their computers.

If you said yes to one or more of the previous statements, then you should go ahead 
and use VU JupyterHub. Just remember to consider the following:

* The environment where you choose to work must have the R-package tidyllm installed.

* To access the server where Ollama is installed, you need to pass this address: 
http://ollama.local:11434 as a parameter of the functions. No worries, this is 
totally saved, as it is managed by our VU JupyterHub colleagues.

* You can only use the models installed on the server. If you want to use other 
small models, you can reach out to our VU JupyterHub colleagues via email: [servicedesk.it@vu.nl](mailto:servicedesk.it@vu.nl). 
Remember to add in the subject that this is a JupyterHub request.

> **Hint:** If you don’t want to go through the hassle of requesting a course 
environment, then feel free to use ours: Social Media Analytics. The environment 
already has all the packages needed to run Ollama in JupyterHub. 

R tutorials to interact with Ollama using:

* Here is our minimal example [LLMs_VU_JupyterHub.R](https://github.com/vu-societal-analytics/societal-analytics-lab-website/blob/master/_blogs/R_scripts/LLMs_VU_JupyterHub.R)

* Here is an extended example that covers more concepts, such as structured output: [Running generative models remotely on (paid) APIs](https://github.com/ccs-amsterdam/r-course-material/blob/master/tutorials/LLMs_3_APIs.md).


## Stored and run in VU Nebula

You can use Nebula via an agreement the Societal Analytics Lab has with the Network 
Institute. This agreement allows all academics working at the Faculty of Social 
Science and those who are members of the Societal Analytics Lab to use Nebula for 
free.

Nebula gives you access to both a graphic user interface similar to that from 
Gemini and ChatGPT, and also to an API-key to run Ollama in your R-scripts. The 
access may take some time as this is handled by the Network Institute. 

We recommend using Nebula in the following cases:

1. You want to use bigger models (>2.5b).

2. You want to run the models over large databases or data points.

3. You are interested in running small LLMs in parallel or using GPUs (which makes 
the models run faster). 

R tutorials to interact with Ollama using:

* Here is our minimal example, in it we use ellmer instead of tidyllm, [LLMs_VU_Nebula.R](https://github.com/vu-societal-analytics/societal-analytics-lab-website/blob/master/_blogs/R_scripts/LLMs_VU_Nebula.R)

> **Hint:** In Nebula, you can also run coding agents. Check this tutorial
to learn more about it:
Rahim, Mahdi. “Coding Agents with Nebula (VU).” Tutorial. Nebula Coding Agents 
Tutorial, GitHub. Accessed November 23, 2026. [https://geo-mahdi.github.io/nebula-coding-agents-tutorial/](https://geo-mahdi.github.io/nebula-coding-agents-tutorial/).



### Getting access to Nebula

1. Register as member of the Societal Analytics Lab if you have not done so: 
[https://forms.office.com/e/8Bgd2YsasJ](https://forms.office.com/e/8Bgd2YsasJ). 
Yes, the Nebula team has access to the emails of those that are part of FSW and 
that are members of the Lab.

2. You can register your Nebula project using the following link: [https://forms.gle/8ziuLPTWYivdf2em9](https://forms.gle/8ziuLPTWYivdf2em9).
You can access with your VU account. Do not forget to mention that you are part of 
the Societal Analytics Lab.

**Important points:**

* They will give you one account for your project. This means that multiple members 
of your team can use that Nebula account. You can also generate multiple API-keys, 
so that your team can interact with Nebula via R.

* If you need more power or access to different models, please send an email to: 
[nebula.cs@vu.nl](mailto:nebula.cs@vu.nl)

* As you are using Nebula under the Societal Analytics Lab agreement, then you do 
NOT have to pay. This is important to remember, otherwise you would have to pay 
10EUR per hour.

* If you need some help, you can check their webpage [https://networkinstitute.org/nebula-main/]( https://networkinstitute.org/nebula-main/).

* If you need more help, you can contact the Societal Analytics Lab. 

* If you want the help of the Nebula team, then you may have to pay their tariff 
(60EUR per hour).


[Back to top](#accessing-large-language-models-for-research-and-for-education-in-r)

## References

Atteveldt, W. van. (2026). R for Computational Social Science. [https://r4css.vanatteveldt.com/](https://r4css.vanatteveldt.com/)

Gil-Clavel, S. (2026). R-Course: Tools for teaching and research. [Computer software]. Zenodo. [https://doi.org/10.5281/zenodo.22036755](https://doi.org/10.5281/zenodo.22036755)

Netherlands Code of Conduct for Research Integrity 2027. (2026). [https://www.universiteitenvannederland.nl/files/publications/20261020-KNAW-NGWI-2027-EN-def.pdf](https://www.universiteitenvannederland.nl/files/publications/20261020-KNAW-NGWI-2027-EN-def.pdf)

Network Institute. (2025). Nebula: Empowering VU research with open-source generative AI \| Network Institute. [https://networkinstitute.org/nebula/](https://networkinstitute.org/nebula/)



