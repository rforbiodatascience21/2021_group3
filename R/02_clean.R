# Clear workspace ---------------------------------------------------------
rm(list = ls())


# Load libraries ----------------------------------------------------------
library("tidyverse")
library('broom')

# Define functions --------------------------------------------------------
#source(file = "R/99_project_functions.R")


# Load data ---------------------------------------------------------------
gravier_x <- read_tsv(file = "data/gravier_x.tsv.gz")
gravier_y <- read_tsv(file = "data/gravier_y.tsv.gz")


# Wrangle data ------------------------------------------------------------
all <- bind_cols(gravier_x, gravier_y)


# Write data --------------------------------------------------------------
write_tsv(x = all,
          path = "data/gravier.tsv.gz")