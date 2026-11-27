
rm(list=ls())
gc()

library(tidyverse)

# For these example to run you need to:
# * Access VU JupyterHub (https://hub.compute.vu.nl/).
# * Open an environment that has tidyllm installed.
#   For example: Social Media Analytics.
# * Run the R-Script from that environment.

#### Using tidyllm ####
library(tidyllm)

list_models(ollama())

# If you need other models, you would need to email VU JupyterHub.
# You are not allowed to install models in this server.

llm_message("What is a bot?") |>
  chat(ollama(.model = "deepseek-r1:1.5b",
              .temperature = .0,
              .ollama_server = "http://ollama.local:11434"))%>%
  get_reply()


