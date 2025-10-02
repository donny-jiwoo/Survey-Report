# install_packages.R
# 필요한 R 패키지 자동 설치 (없으면 설치, 있으면 건너뜀)

options(repos = "https://cloud.r-project.org", Ncpus = max(1, parallel::detectCores() - 1))

pkgs <- c(
  # 필수
  "rmarkdown", "knitr", "tidyverse", "dplyr", "ggplot2",
  "readxl", "janitor", "stringr", "tidyr", "forcats",
  # 표/테이블
  "kableExtra", "DT", "gt",
  # 시각화/폰트/색
  "showtext", "scales", "RColorBrewer", "gridExtra",
  # 통계/군집(보고서에 쓰셨다면)
  "cluster", "factoextra"
)

inst <- rownames(installed.packages())
to_install <- setdiff(pkgs, inst)

if (length(to_install)) {
  install.packages(to_install)
}

# (선택) showtext 사용 시 일반 폰트 활성화
# library(showtext); showtext_auto()
