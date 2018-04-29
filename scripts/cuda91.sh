cd `dirname $0`

# Base
if [ ! -e cuda-repo-ubuntu1604-9-1-local_9.1.85-1_amd64 ];then
    echo [Attention] download Base
    wget https://developer.nvidia.com/compute/cuda/9.1/Prod/local_installers/cuda-repo-ubuntu1604-9-1-local_9.1.85-1_amd64
fi
echo [Attention] install patch 1
#sudo dpkg -i cuda-repo-ubuntu1604-9-1-local_9.1.85-1_amd64
#sudo apt-get update
#sudo apt-get -y install cuda

# patch 1
if [ ! -e cuda-repo-ubuntu1604-9-1-local-cublas-performance-update-1_1.0-1_amd64 ];then
    echo [Attention] download patch 1
    wget https://developer.nvidia.com/compute/cuda/9.1/prod/patches/1/cuda-repo-ubuntu1604-9-1-local-cublas-performance-update-1_1.0-1_amd64
fi
echo [Attention] install patch 1
#sudo dpkg -i cuda-repo-ubuntu1604-9-1-local-cublas-performance-update-1_1.0-1_amd64

# patch 2
if [ ! -e cuda-repo-ubuntu1604-9-1-local-compiler-update-1_1.0-1_amd64 ];then
    echo [Attention] download patch 2
    wget https://developer.nvidia.com/compute/cuda/9.1/Prod/patches/2/cuda-repo-ubuntu1604-9-1-local-compiler-update-1_1.0-1_amd64
fi
echo [Attention] install patch 2
#sudo dpkg -i cuda-repo-ubuntu1604-9-1-local-compiler-update-1_1.0-1_amd64

# patch 3
if [ ! -e cuda-repo-ubuntu1604-9-1-local-cublas-performance-update-3_1.0-1_amd64 ];then
    echo [Attention] download patch 3
    wget https://developer.nvidia.com/compute/cuda/9.1/Prod/patches/3/cuda-repo-ubuntu1604-9-1-local-cublas-performance-update-3_1.0-1_amd64
fi
echo [Attention] install patch 3
#sudo dpkg -i cuda-repo-ubuntu1604-9-1-local-compiler-update-1_1.0-1_amd64
