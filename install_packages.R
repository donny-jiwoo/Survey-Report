# install_packages.R : Install only the missing packages used in the report
pkgs <- c(
  "rmarkdown","knitr","dplyr","ggplot2","readxl","janitor","stringr","tidyr", "tidyverse",
  "tidytext","cluster","factoextra","gridExtra","RColorBrewer","scales","kableExtra","DT","gt","showtext","forcats","purrr",
)
inst <- rownames(installed.packages())
to_install <- setdiff(pkgs, inst)
if(length(to_install)) install.packages(to_install, repos = "https://cloud.r-project.org")
