# =============================================================================
# 여기 있는 Url 주소를 https://developer.nvidia.com/rdp/cudnn-download
# 위에 있는 링크에서 설문을 마치면 주는 다운로드 파일의 url 주소로 바꿔주어야 합니다.
# =============================================================================

download_url="https://developer.download.nvidia.com/compute/cudnn/..."


# =============================================================================
# 이 이후의 작업은 모두 자동으로 진행됩니다.
# =============================================================================

# 본 스크립트는 다음의 가이드에 따라 작업을 수행합니다.
# https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html

download_dirname="./cudnn"
download_filename="$download_dirname.tar.xz"

wget -O $download_filename $download_url

# 1.3. Installing on Linux
# 1.3.1. Tar File Installation
tar -xvf $download_filename

if [ "$?" -ne 0 ]; then
    echo "============================================================================="
    echo " 다운 받은 파일이 TAR 압축 파일이 아닐 수도 있습니다."
    echo " $download_filename 을 확인해보십시오."
    echo "============================================================================="
    exit 1
fi

cd $download_dirname

sudo cp include/cudnn*.h /usr/local/cuda/include
sudo cp -P lib/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn*.h /usr/local/cuda/lib64/libcudnn*
