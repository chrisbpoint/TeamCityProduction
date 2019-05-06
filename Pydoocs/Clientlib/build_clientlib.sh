#!/bin/sh

export DOOCSARCH=Darwin-x86_64

DOOCS=$PWD/doocs

git -C $DOOCS/$DOOCSARCH pull || git clone http://doocs-git.desy.de/cgit/doocs/$DOOCSARCH.git $DOOCS/$DOOCSARCH
git -C $DOOCS/library/common/gul pull || git clone http://doocs-git.desy.de/cgit/doocs/library/common/gul.git $DOOCS/library/common/gul
git -C $DOOCS/library/common/clientlib pull || git clone http://doocs-git.desy.de/cgit/doocs/library/common/clientlib.git $DOOCS/library/common/clientlib

cd $DOOCS/library/common/gul && make clean && make localinstall
cd $DOOCS/library/common/clientlib && sed -i "" -e '/	$(OBJDIR)\/libTTFapi./d' Makefile && make clean;# && make localinstall
