#!/bin/bash

rm -Rf aufs5-standalone
# clone the aufs repository to the local disk
git clone git://github.com/sfjro/aufs5-standalone.git aufs5-standalone
cd aufs5-standalone
git branch -r
git checkout origin/aufs5.4

# modify what you want

# and after
# create the patch with the directories: fs, include and Documentation

rm -v $(find . -type f -name '*.orig')
#grep -qse 'EXPORT_SYMBOL(' aufs4-standalone.patch && \
#sed -i-old -e 's|EXPORT_SYMBOL(|EXPORT_SYMBOL_GPL(|' aufs4-standalone.patch
rm -rvf ../tmp/linux-5.4
mkdir -p ../tmp/linux-5.4
cp -a fs ../tmp/linux-5.4
cp -a include ../tmp/linux-5.4
cp -a Documentation ../tmp/linux-5.4
rm -v ../tmp/linux-5.4/include/uapi/linux/Kbuild
cd ../tmp
diff -Naur null linux-5.4  | filterdiff | \
sed -e 's|null\(/include/uapi/linux/Kbuild\)|linux-5.4-old\1|;s|^--- null.*|--- /dev/null|;\|linux-5.4/include/uapi/linux/Kbuild|,${\|@@ -0,0 +1 @@|,$d}' \
> aufs$(sed -ne 's|#define.*AUFS_VERSION.*"\(.*\)"|\1|p'  linux-5.4/include/uapi/linux/aufs_type.h).patch
mv *.patch $OLDPWD
cd $OLDPWD
mv *.patch ..
cd ..
rm -Rf tmp
rm -Rf aufs5-standalone

# delete unnecessary patch files
rm lockdep-debug.patch
rm proc_mounts.patch

# the patch is created in ../tmp
# the other patches needed to compile are in the base directory
