#! /bin/bash
KernelBranch="20210304/q/main"

IncludeFiles "${MainPath}/device/x01bd.sh"
CustomUploader="Y"
IncludeFiles "${MainPath}/misc/kernel.sh" "https://${GIT_SECRET}@github.com/${GIT_USERNAME}/x01bd_kernel"
FolderUp="keqing-drive"
TypeBuildTag="[Q]"

CloneKernel "--depth=1"
CloneGCCOld
CloneGugelClang
CompileClangKernel

