# =============================================================================
# 여기 있는 Url 주소를 https://developer.nvidia.com/rdp/cudnn-download
# 위에 있는 링크에서 설문을 마치면 주는 다운로드 파일의 url 주소로 바꿔주어야 합니다.
# =============================================================================

download_url="https://developer.download.nvidia.com/compute/cudnn/secure/8.9.6/local_installers/11.x/cudnn-linux-x86_64-8.9.6.50_cuda11-archive.tar.xz?..."


# =============================================================================
# 이 이후의 작업은 모두 자동으로 진행됩니다.
# =============================================================================

# 본 스크립트는 다음의 가이드에 따라 작업을 수행합니다.
# https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html

download_dirname="cudnn"
download_filename="$download_dirname.tar.xz"

wget -O $download_filename $download_url

# 1.3. Installing on Linux
# 1.3.1. Tar File Installation
tar -xvf $download_at

cd $download_dirname

sudo cp include/cudnn*.h /usr/local/cuda/include
sudo cp -P lib/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn*.h /usr/local/cuda/lib64/libcudnn*
