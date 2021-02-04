#! /bin/bash
branch="20201110/Tercydux-Santuy"
BuilderKernel="clang"

. main.sh 'initial'
export KBUILD_BUILD_VERSION=5

spectrumFile="bego-on.rc"
TypeBuild="Stable"
TypeBuildTag="AOSP-CFW"
getInfo ">> Building kernel . . . . <<"
FolderUp="begonia-cfw-Tercydux"
doOsdnUp=$FolderUp
doSFUp=$FolderUp

CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang

CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang

CompileKernel