
# For these example to run you need to:
# * Already have installed the Ollama software in your computer.
# * Have the Ollama software open/running while using R.
# * Have installed tidyverse and tidyllm

# These two lines clean the R-environment and free the RAM
rm(list=ls())
gc()

# Load the package tidyverse
library(tidyverse)

#### Using tidyllm ####

# Load the package tidyllm
library(tidyllm)

# The following function prints the LLMs you have installed in your computer
list_models(ollama())

# There more models you can install, you can check here
# To install them use the following function. 
# Remember to pass the format of the name is: "NameVersion:Size"
ollama_download_model("llama3.2:1b")

# Now you can start using your model
llm_message("What is a bot?") |>
  chat(ollama(.model = "llama3.2:1b",
              .temperature = .0))%>%
  get_reply()

