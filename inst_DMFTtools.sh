#Building scifor
set -e

cd DMFTtools
mkdir build
cd build
ls -r
cmake .. -DUSE_MPI=no
make
make install
cd ../..
DMFTVER=$( ls /home/${USER}/opt/dmft_tools/gnu )
source /home/${USER}/opt/dmft_tools/gnu/${DMFTVER}/bin/dmft_tools_config_user.sg
echo "\e[32m DMFTtools succesfully installed \e[0m"
