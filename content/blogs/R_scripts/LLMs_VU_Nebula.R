
# Code written by Sofia Gil-Clavel and Wouter van Atteveldt.
# First version November 20th, 2026.

# For these example to run you need to:
# * Have access to a Nebula API key.
# * Have ellmer installed

rm(list=ls())
gc()

library(tidyverse)
library(ellmer)

Sys.setenv(NEBULA_API_KEY = "Replace with your Nebula API key")

chat <- chat_openai_compatible(
  base_url      = "https://nebula.cs.vu.nl/api",
  credentials   = function() Sys.getenv("NEBULA_API_KEY"),
  model         = "FAST.gemma4:31b",
  system_prompt = "You are a concise R programming assistant.",
  params        = params(temperature = 0)
)

# First turn (streams reply to console by default and returns text)
chat$chat("Explain the difference between a vector and a list in R.")

# Follow-up turn (conversation history is retained automatically in `chat`)
chat$chat("Give me a 2-line code example of that.")

