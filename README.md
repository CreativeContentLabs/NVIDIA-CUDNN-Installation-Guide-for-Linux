# NVIDIA CUDNN Installer for Linux (KOR)

본 저장소는 CUDNN을 설치하기 위한 과정을 안내하기 위한 것입니다.

*설치 과정은 CUDA가 이미 설치 된 것을 전제로 진행됩니다.

> CUDNN(NVIDIA CUDA Deep Neural Network)는 연구실 워크스테이션에서 수행하는 머신러닝 실험 환경에서 의존성으로 사용됩니다.


## 설치 방법

https://github.com/CreativeContentLabs/NVIDIA-CUDNN-Installation-Guide-for-Linux/blob/1281eec855ebbb96fe4e14fad4ed2d709605a6b0/install.sh#L1-L11

`install.sh`의 상단에 있는 셸 변수 `download_url`에 적절한 URL을 대입해주어야 합니다.

적절한 설치 파일 경로를 대입해 주었다면, 셸 스크립트를 실행하여 설치를 수행합니다.

```shell
$ sudo ./install.sh
```

만약 위 명령에서 Permission denied 오류가 나타난다면, 다음의 명령을 통해 실행 권한을 부여한 뒤 재시도합니다.
```shell
$ chmod +x ./install.sh # x(execute:실행) 권한 부여

$ sudo ./install.sh
```

### 설치 파일 다운로드 URL

`download_url`은 [NVIDIA 개발자 사이트](https://developer.nvidia.com/rdp/cudnn-download)에서 다운 받을 수 있는 설치 파일의 URL 경로입니다.

<img width="1259" alt="image" src="https://github.com/CreativeContentLabs/NVIDIA-CUDNN-Installer-for-Linux/assets/19310326/193f6dc2-4d94-4f73-9318-c5ac9a433db5">

설치 파일의 URL 경로 예시는 다음과 같습니다:

```
https://developer.download.nvidia.com/compute/cudnn/secure/8.9.6/local_installers/11.x/cudnn-linux-x86_64-8.9.6.50_cuda11-archive.tar.xz?...
```


### 설치 파일 버전 선택

본 연구실 워크스테이션은 Unix 기반의 운영체제를 사용하므로, `uname -a` 명령을 통해 시스템 정보를 획득할 수 있습니다.

시스템에 설치된 CUDA의 버전을 확인하고 싶다면 `nvcc --version` 명령을 사용하십시오.

시스템에 적절한 설치 파일의 URL 경로를 사용하면 됩니다.

```shell
$ uname
Linux

$ uname -a
Linux <username> 5.15.0-84-generic #93~20.04.1-Ubuntu SMP Wed Sep 6 16:15:40 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux

$ nvcc --version
nvcc: NVIDIA (R) Cuda compiler driver
Copyright (c) 2005-2020 NVIDIA Corporation
Built on Mon_Nov_30_19:08:53_PST_2020
Cuda compilation tools, release 11.2, V11.2.67
Build cuda_11.2.r11.2/compiler.29373293_0
```

(예시) 워크스테이션은 Cuda 11버전을 Linux x86_x64 아키텍쳐에서 사용하고 있으므로, `cudnn-linux-x86_64-8.9.6.50_cuda11-archive.tar.xz`를 사용할 수 있습니다.
