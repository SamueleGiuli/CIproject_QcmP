#Building scifor

#Errors
set -e


echo "QcmP_source:"
cat ~/.QcmP_source

#export PKG_CONFIG_PATH=~/.pkgconfig.d
#Sourcing .bashrc
echo "QcmP_source sourcing.."
source ~/.QcmP_source

#SCIFORVER=$( ls ~/opt/scifor/gnu)
#source ~/opt/scifor/gnu/${SCIFORVER}/bin/scifor_config_user.sh

#Correction based of GF-VER
#./GetGFversion.sh "DMFTtools"



cd DMFTtools
mkdir build
cd build

echo "Building..."

echo "cmake .."
cmake .. #-DUSE_MPI=no #Option for non parallelized

echo "make"
make

echo "make install"
make install

cd ../..

#DMFTVER=$( ls ~/opt/dmft_tools/gnu )
echo "source ~/opt/dmft_tools/gnu/*/bin/dmft_tools_config_user.sh" >> ~/.QcmP_source
echo "\e[32m DMFTtools succesfully installed \e[0m"

      

echo "QcmP_source:"
cat ~/.QcmP_source
