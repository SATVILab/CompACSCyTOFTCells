mkdir -p sif
SIF_R_VERSION=430
apptainer build -F sif/r${SIF_R_VERSION}.sif scripts/def/r${SIF_R_VERSION}.def
