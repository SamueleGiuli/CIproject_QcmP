#Building scifor

#Errors
set -e

#Sourcing .bashrc
source ~/.bashrc
#SCIFORVER=$( ls ~/opt/scifor/gnu)
#source ~/opt/scifor/gnu/${SCIFORVER}/bin/scifor_config_user.sh
#DMFTVER=$( ls ~/opt/dmft_tools/gnu )
#source ~/opt/dmft_tools/gnu/${DMFTVER}/bin/dmft_tools_config_user.sh

#Correction based on GF-VER
./GetGFversion.sh "LIB_DMFT_ED"

cd LIB_DMFT_ED
mkdir build
cd build
cmake .. #-DUSE_MPI=no #Option for non parallelized
make
make install
cd ../..

echo "  source ~/opt/dmft_ed/gnu/*/etc/dmft_ed_config.sh" >> ~/.bashrc
echo "\e[32m LIB_DMFT_ED succesfully installed \e[0m"
