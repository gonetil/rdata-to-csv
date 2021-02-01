Convert RDATA files into CSV

Usage:
(first time only: docker pull r-base )

# Copy rdata file into cwd:

cd my_project_directory
cp ~/Downloads/example.RData $PWD

# Run r-base docker container and open an interactive terminal:
docker run -ti --rm -v "$PWD":/home/docker r-base bash

# chdir to home and run the transformation script
cd /home/docker
Rscript rdata_to_csv.r INPUT_FILE.Rdata (optional)OUTPUT_FILE.CSV
