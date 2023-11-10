# NVIDIA CUDNN Installer for Linux (KOR)

본 저장소는 CUDNN을 설치하기 위한 과정을 안내하기 위한 것입니다.

> CUDNN(NVIDIA CUDA Deep Neural Network)는 연구실 워크스테이션에서 수행하는 머신러닝 실험 환경에서 의존성으로 사용됩니다.


## 설치 방법

https://github.com/CreativeContentLabs/NVIDIA-CUDNN-Installer-for-Linux/blob/d2b85f00ee7315bcb4e40793a172a47b10e66d82/install.sh#L1-L11

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

해당 URL은 [NVIDIA 개발자 사이트](https://developer.nvidia.com/rdp/cudnn-download)에서 다운 받을 수 있는 설치 파일의 URL 경로입니다.

<img width="1259" alt="image" src="https://github.com/CreativeContentLabs/NVIDIA-CUDNN-Installer-for-Linux/assets/19310326/193f6dc2-4d94-4f73-9318-c5ac9a433db5">

설치 파일의 URL 경로 예시는 다음과 같습니다:

```
https://developer.download.nvidia.com/compute/cudnn/secure/8.9.6/local_installers/11.x/cudnn-linux-x86_64-8.9.6.50_cuda11-archive.tar.xz?...
```


### 설치 파일 버전 선택

본 연구실 워크스테이션은 Unix 기반의 운영체제를 사용하므로, `uname -a` 명령을 통해 시스템 정보를 획득할 수 있습니다.

시스템에 적절한 설치 파일의 URL 경로를 사용하면 됩니다.

```shell
$ uname
Linux

$ uname -a
Linux <username> 5.15.0-84-generic #93~20.04.1-Ubuntu SMP Wed Sep 6 16:15:40 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
```

(예시) 워크스테이션은 x86_x64 아키텍쳐를 사용하므로, `CUDNN 11`중에서`cudnn-linux-x86_64-8.9.6.50_cuda11-archive.tar.xz`를 사용할 수 있습니다.
