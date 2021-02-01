#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

if (length(args)==0) {
  stop("Falta el parametro <archivo.rdata> para convertir a CSV.n", call.=FALSE)
} else if (length(args)==1) {
  # default output file
  
  args[2] = tools::file_path_sans_ext( basename(args[1]) ) + ".csv"
}

input_file <- args[1]
output_file <- args[2] 

load(input_file)
write.csv(Base_Registro_depurada, file = output_file)

