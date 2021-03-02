#! /bin/bash
branch="20210228/qk-l"
BuilderKernel="clang"
# UseOldGcc="Y"
. main-letoy.sh 'initial' 'full'
# export KBUILD_BUILD_VERSION=1

spectrumFile="none"
TypeBuild="Stock-LMK"
TypeBuildTag="Stable"
getInfo ">> Building kernel . . . . <<"
FolderUp="letoy-qk"
doSFUp=$FolderUp
PostLinkNow="Y"

# kDLi='stock-memeui-clang'
CompileKernel
pullLmk
CompileKernel
pullSlmk
CompileKernel