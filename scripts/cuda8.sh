cd `dirname $0`
if [ ! -e cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb ];then
    wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb
fi
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb
sudo apt-get update
sudo apt-get -y install cuda
if [! -e cuda-repo-ubuntu1604-8-0-local-cublas-performance-update_8.0.61-1_amd64-deb ];then
    wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/patches/2/cuda-repo-ubuntu1604-8-0-local-cublas-performance-update_8.0.61-1_amd64-deb
fi
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-cublas-performance-update_8.0.61-1_amd64-deb
