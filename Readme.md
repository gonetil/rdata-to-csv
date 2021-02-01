# Convert RDATA files into CSV

### Usage
First time only: pull [r-base docker image](https://hub.docker.com/_/r-base/)

```sh 
docker pull r-base
```

Copy rdata file into cwd:

```sh 
cd my_project_directory 
cp ~/Downloads/example.RData $PWD 
```

Run r-base docker container and open an interactive terminal:
```sh 
docker run -ti --rm -v "$PWD":/home/docker r-base bash 
```

* chdir to home and run the transformation script

```sh 
cd /home/docker
Rscript rdata_to_csv.r INPUT_FILE.Rdata (optional)OUTPUT_FILE.CSV
exit
```
