#!/bin/sh

DOOCSARCH=Darwin-x86_64

git -C doocs/$DOOCSARCH pull || git clone http://doocs-git.desy.de/cgit/doocs/$DOOCSARCH.git doocs/$DOOCSARCH
git -C doocs/library/common/gul pull || git clone http://doocs-git.desy.de/cgit/doocs/library/common/gul.git doocs/library/common/gul
git -C doocs/library/common/clientlib pull || git clone http://doocs-git.desy.de/cgit/doocs/library/common/clientlib.git doocs/library/common/clientlib

cd doocs/library/common/gul && make clean && make localinstall && cd -
cd doocs/library/common/clientlib && sed -i "" -e '/  $(OBJDIR)\/libTTFapi./d' Makefile && make clean && make localinstall
