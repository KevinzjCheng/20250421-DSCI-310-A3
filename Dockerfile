FROM rocker/rstudio:4.4.2

# Install remotes so we can install version-pinned packages
RUN Rscript -e 'install.packages("remotes", repos="https://cloud.r-project.org")'

# Install cowsay version 0.7.0 (as an example)
RUN Rscript -e 'remotes::install_version("cowsay", version = "0.7.0", repos = "https://cloud.r-project.org")'

# Optional: Add a script that uses the package
COPY hello.R /home/rstudio/hello.R