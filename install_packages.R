# install_packages.R : Install only the missing packages used in the report

pkgs <- c(
  "rmarkdown","knitr","tidyverse","dplyr","ggplot2","readxl","janitor","stringr","tidyr",
  "tidytext","cluster","factoextra","gridExtra","RColorBrewer","scales","kableExtra","DT","gt","showtext","forcats"
)

# 설치
for (pkg in pkgs) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg, repos = "https://cloud.r-project.org", dependencies = TRUE)
  }
}

# 검증
library(tidyverse)
print(paste("Successfully loaded:", paste((.packages()), collapse = ", ")))
