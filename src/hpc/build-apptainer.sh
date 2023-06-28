mkdir -p sif
SIF_R_VERSION=423
apptainer build -F sif/r${SIF_R_VERSION}.sif src/def/r${SIF_R_VERSION}.def
