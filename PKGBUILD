# Maintainer: Felix Schindler <aut at felixschindler dot net>
# Contributor: Philip Müller <philm[at]manjaro[dot]org>
# Contributor: Bernhard Landauer <bernhard[at]manjaro[dot]org>
# Contributor: Helmut Stult <helmut[at]manjaro[dot]org>

# Arch credits:
# Tobias Powalowski <tpowa@archlinux.org>
# Thomas Baechler <thomas@archlinux.org>

# Cloud Server
_server=cpx51

pkgbase=linux54
pkgname=('linux54' 'linux54-headers')
_kernelname=-MANJARO
_basekernel=5.4
_basever=54
_aufs=20200622
pkgver=5.4.70
pkgrel=1.5
arch=('x86_64')
url="http://www.kernel.org/"
license=('GPL2')
makedepends=('bc'
    'docbook-xsl'
    'elfutils'
    'git'
    'inetutils'
    'kmod'
    'xmlto')
options=('!strip')
source=("https://www.kernel.org/pub/linux/kernel/v5.x/linux-${_basekernel}.tar.xz"
        "https://www.kernel.org/pub/linux/kernel/v5.x/patch-${pkgver}.xz"
        # the main kernel config files
        'config' 'config.aufs'
        # AUFS Patches
        "aufs5.4-${_aufs}.patch"
        'aufs5-base.patch'
        'aufs5-kbuild.patch'
        'aufs5-loopback.patch'
        'aufs5-mmap.patch'
        'aufs5-standalone.patch'
        'tmpfs-idr.patch'
        'vfs-ino.patch'
        # ARCH Patches
        '0001-ZEN-Add-sysctl-and-CONFIG-to-disallow-unprivileged-CLONE_NEWUSER.patch'
        # MANJARO Patches
        '0101-i2c-nuvoton-nc677x-hwmon-driver.patch'
        '0102-iomap-iomap_bmap-should-accept-unwritten-maps.patch'
        '0103-futex.patch'
        '0201-apparmor-patch-to-provide-compatibility-with-v2-net-rules.patch'
        '0202-apparmor-af_unix-mediation.patch'
        '0203-apparmor-fix-use-after-free-in-sk_peer_label.patch'
        '0204-apparmor-fix-apparmor-mediating-locking-non-fs-unix-sockets.patch'
        # Lenovo P50 multiple fans
        '0005-thinkpad_acpi_dual_fan_control.patch::https://github.com/dvhart/linux-pdx86/commit/26c16f9d956f269bbc32e034e3ec11c4831137de.patch'
         # Lenovo + AMD
        '0302-lenovo-wmi1.patch'
        '0302-lenovo-wmi2.patch'
        '0303-pinctrl-amd.patch'
        # other patches
        '0601-drm-i915-save-AUD_FREQ_CNTRL-state-at-audio-domain-suspend.patch'
        '0602-drm-i915-Fix-audio-power-up-sequence-for-gen10-display.patch'
        '0603-drm-i915-extend-audio-CDCLK-2-BCLK-constraint-to-more-platforms.patch'
        '0604-drm-i915-limit-audio-CDCLK-constraint-back-to-GLK-only.patch'
        'drm-amdgpu-add-dc-feature-mask-to-disable-fractional-pwm.patch'
        'iwlwifi-pcie-restore-support-for-Killer-Qu-C0-NICs.patch'
        # Bootsplash
        '0401-revert-fbcon-remove-now-unusued-softback_lines-cursor-argument.patch'
        '0402-revert-fbcon-remove-soft-scrollback-code.patch'
        '0501-bootsplash.patch'
        '0502-bootsplash.patch'
        '0503-bootsplash.patch'
        '0504-bootsplash.patch'
        '0505-bootsplash.patch'
        '0506-bootsplash.patch'
        '0507-bootsplash.patch'
        '0508-bootsplash.patch'
        '0509-bootsplash.patch'
        '0510-bootsplash.patch'
        '0511-bootsplash.patch'
        '0512-bootsplash.patch'
        '0513-bootsplash.gitpatch'
        # my patches
        'overlayfs-permit-mounts-in-userns.patch')
sha256sums=('bf338980b1670bca287f9994b7441c2361907635879169c64ae78364efc5f491'
            '2ade7821666221ce0dd4c6822cb76ae4cd8c335fc1d094581aca2be519d7819c'
            '1f2f2099c1244a02affb2cbab6de31804ed75b5ed6982ffd39fa2252acaf8787'
            'b44d81446d8b53d5637287c30ae3eb64cae0078c3fbc45fcf1081dd6699818b5'
            '55abda03e3e33075e5f3c0870829af3a0cd25536fcba0f58ae9de73d2d2172d1'
            '1482e06a3fcfdb483171caf0dc1ddff873671399b8e9966ec83f3a00269c345b'
            'b7313d393e1909bbc245c5b565bd88f84b6238aa92c9db477c1bb83d7fb3fb72'
            '78a33d70be642cd1388ff3cd049c5c6980692f2ba1cd1d25fa00e74c9510e474'
            '32b4847bfb1b4afa82b20b628c64dcbcd2d5dcfbce22387ae8830c8828bccd24'
            '36d8c60d8210e8807a452da27fa9b6fbbb02cfff6b0eec67a51b95ef5e82ba69'
            '101ac92871078a1e72320cd0d7432e0a44e28c50864b2cd46ae57a026e021387'
            '9087b14760b203fe6939baccbb7d59ccf256e71f20b5355326702bc890de4ed8'
            '7685d526bbdbfa795986591a70071c960ff572f56d3501774861728a9df8664c'
            '7823d7488f42bc4ed7dfae6d1014dbde679d8b862c9a3697a39ba0dae5918978'
            '95745075edd597caa92b369cfbcd11a04c9e3c88c0c987c70114924e1e01df5c'
            '78dde51123a21ec5efe9c420b309d03263001dafd8684f71c167f02e3f504f9e'
            '98202b8ad70d02d86603294bae967874fa7b18704b5c7b867568b0fd33a08921'
            '5cbbf3db9ea3205e9b89fe3049bea6dd626181db0cb0dc461e4cf5a400c68dd6'
            'c7dbec875d0c1d6782c037a1dcefff2e5bdb5fc9dffac1beea07dd8c1bdef1d7'
            '77746aea71ffb06c685e7769b49c78e29af9b2e28209cd245e95d9cbb0dba3c9'
            'f93707e75ec6be5f289605f913e59d4f3514524a1aab3368f49bf6789723d443'
            '7d2af76b8dae73946379b967a493b927d76a68bb524b275b7c445bab90995687'
            '1d58ef2991c625f6f0eb33b4cb8303932f53f1c4694e42bae24c9cd36d2ad013'
            '427fd41ac742110d413f01daba66d5cd023b8e63fdc63242fcc96f589e66867f'
            'e2084feabc3abeed37579ff515c367014356a652b85794b1612fea4daabe85d3'
            '988ffbb96d85564a9d96145e5973339a8f78ae95d919efb2ee7bb50f7a8e8fc9'
            '5257159e20a5fcb102a3b3ee6de33882a9e132e7f1d4345b8730effdd0240bb6'
            '763cd8e7d5b4a5c24f7a82f24c64ec5503ea5c81dfb42fa74150136c0ca066fd'
            'cba63c224af57d6b9432bb5f507121148d02b313c5f87c55504f49632a3a6062'
            'fcb9e515bf0816db05446fd8ced7468756bea3cf01b060504bace41b2e7f5f74'
            'ddf1e7fc55cc6fe81ecfcac84112e573ca95713c027bc84d69cf880812fd6ff3'
            '37a221c12b40122167b0a30b5a9f2fc99e2aeb94e4db58a719c2b30171c5aeb5'
            'a504f6cf84094e08eaa3cc5b28440261797bf4f06f04993ee46a20628ff2b53c'
            'e096b127a5208f56d368d2cb938933454d7200d70c86b763aa22c38e0ddb8717'
            '8c1c880f2caa9c7ae43281a35410203887ea8eae750fe8d360d0c8bf80fcc6e0'
            '1144d51e5eb980fceeec16004f3645ed04a60fac9e0c7cf88a15c5c1e7a4b89e'
            'dd4b69def2efacf4a6c442202ad5cb93d492c03886d7c61de87696e5a83e2846'
            '028b07f0c954f70ca37237b62e04103e81f7c658bb8bd65d7d3c2ace301297dc'
            'c8b0cb231659d33c3cfaed4b1f8d7c8305ab170bdd4c77fce85270d7b6a68000'
            '8dbb5ab3cb99e48d97d4e2f2e3df5d0de66f3721b4f7fd94a708089f53245c77'
            'a7aefeacf22c600fafd9e040a985a913643095db7272c296b77a0a651c6a140a'
            'e9f22cbb542591087d2d66dc6dc912b1434330ba3cd13d2df741d869a2c31e89'
            '27471eee564ca3149dd271b0817719b5565a9594dc4d884fe3dc51a5f03832bc'
            '60e295601e4fb33d9bf65f198c54c7eb07c0d1e91e2ad1e0dd6cd6e142cb266d'
            '035ea4b2a7621054f4560471f45336b981538a40172d8f17285910d4e0e0b3ef'
            'b4e34582fd2ff1fab648be62796c2e4bbcf86c800adb600041d7b5d6651c725c')
prepare() {
  cd "${srcdir}/linux-${_basekernel}"

  # add upstream patch
  msg "add upstream patch"
  patch -p1 -i "${srcdir}/patch-${pkgver}"

  local src
  for src in "${source[@]}"; do
      src="${src%%::*}"
      src="${src##*/}"
      [[ $src = *.patch ]] || continue
      msg2 "Applying patch: $src..."
      patch -Np1 < "../$src"
  done

  msg2 "0513-bootsplash"
  git apply -p1 < "${srcdir}/0513-bootsplash.gitpatch"

  msg2 "add config.aufs to config"
  cat "${srcdir}/config" > ./.config

  cat "${srcdir}/config.aufs" >> ./.config

  if [ "${_kernelname}" != "" ]; then
    sed -i "s|CONFIG_LOCALVERSION=.*|CONFIG_LOCALVERSION=\"${_kernelname}\"|g" ./.config
    sed -i "s|CONFIG_LOCALVERSION_AUTO=.*|CONFIG_LOCALVERSION_AUTO=n|" ./.config
  fi

  msg "set extraversion to pkgrel"
  sed -ri "s|^(EXTRAVERSION =).*|\1 -${pkgrel}|" Makefile

  msg "don't run depmod on 'make install'"
  # We'll do this ourselves in packaging
  sed -i '2iexit 0' scripts/depmod.sh

  msg "get kernel version"
  make prepare

  # load configuration
  # Configure the kernel. Replace the line below with one of your choice.
  #make menuconfig # CLI menu for configuration
  #make nconfig # new CLI menu for configuration
  #make xconfig # X-based configuration
  #make oldconfig # using old config from previous kernel version
  # ... or manually edit .config

  msg "rewrite configuration"
  yes "" | make config >/dev/null
}

build() {
  cd "${srcdir}/linux-${_basekernel}"

  msg "build"
  make ${MAKEFLAGS} LOCALVERSION= bzImage modules
}

package_linux54() {
  pkgdesc="The ${pkgbase/linux/Linux} kernel and modules (with overlayfs-in-user-namespace patch)"
  depends=('coreutils' 'linux-firmware' 'kmod' 'mkinitcpio>=27')
  optdepends=('crda: to set the correct wireless channels of your country')
  provides=("linux=${pkgver}")

  cd "${srcdir}/linux-${_basekernel}"

  KARCH=x86

  # get kernel version
  _kernver="$(make LOCALVERSION= kernelrelease)"

  mkdir -p "${pkgdir}"/{boot,usr/lib/modules}
  make LOCALVERSION= INSTALL_MOD_PATH="${pkgdir}/usr" modules_install

  # systemd expects to find the kernel here to allow hibernation
  # https://github.com/systemd/systemd/commit/edda44605f06a41fb86b7ab8128dcf99161d2344
  cp arch/$KARCH/boot/bzImage "${pkgdir}/usr/lib/modules/${_kernver}/vmlinuz"

  # Used by mkinitcpio to name the kernel
  echo "${pkgbase}" | install -Dm644 /dev/stdin "${pkgdir}/usr/lib/modules/${_kernver}/pkgbase"
  echo "${_basekernel}-${CARCH}" | install -Dm644 /dev/stdin "${pkgdir}/usr/lib/modules/${_kernver}/kernelbase"

  # add kernel version
  echo "${pkgver}-${pkgrel}-MANJARO x64" > "${pkgdir}/boot/${pkgbase}-${CARCH}.kver"

  # make room for external modules
  local _extramodules="extramodules-${_basekernel}${_kernelname:--MANJARO}"
  ln -s "../${_extramodules}" "${pkgdir}/usr/lib/modules/${_kernver}/extramodules"

  # add real version for building modules and running depmod from hook
  echo "${_kernver}" |
    install -Dm644 /dev/stdin "${pkgdir}/usr/lib/modules/${_extramodules}/version"

  # remove build and source links
  rm "${pkgdir}"/usr/lib/modules/${_kernver}/{source,build}

  # now we call depmod...
  depmod -b "${pkgdir}/usr" -F System.map "${_kernver}"

  # add vmlinux
  install -Dt "${pkgdir}/usr/lib/modules/${_kernver}/build" -m644 vmlinux
}

package_linux54-headers() {
  pkgdesc="Header files and scripts for building modules for ${pkgbase/linux/Linux} kernel (with overlayfs-in-user-namespace patch)"
  provides=("linux-headers=$pkgver")

  cd "${srcdir}/linux-${_basekernel}"
  local _builddir="${pkgdir}/usr/lib/modules/${_kernver}/build"

  install -Dt "${_builddir}" -m644 Makefile .config Module.symvers
  install -Dt "${_builddir}/kernel" -m644 kernel/Makefile

  mkdir "${_builddir}/.tmp_versions"

  cp -t "${_builddir}" -a include scripts

  install -Dt "${_builddir}/arch/${KARCH}" -m644 "arch/${KARCH}/Makefile"
  install -Dt "${_builddir}/arch/${KARCH}/kernel" -m644 "arch/${KARCH}/kernel/asm-offsets.s"
  #install -Dt "${_builddir}/arch/${KARCH}/kernel" -m644 "arch/${KARCH}/kernel/macros.s"

  cp -t "${_builddir}/arch/${KARCH}" -a "arch/${KARCH}/include"

  install -Dt "${_builddir}/drivers/md" -m644 drivers/md/*.h
  install -Dt "${_builddir}/net/mac80211" -m644 net/mac80211/*.h

  # http://bugs.archlinux.org/task/13146
  install -Dt "${_builddir}/drivers/media/i2c" -m644 drivers/media/i2c/msp3400-driver.h

  # http://bugs.archlinux.org/task/20402
  install -Dt "${_builddir}/drivers/media/usb/dvb-usb" -m644 drivers/media/usb/dvb-usb/*.h
  install -Dt "${_builddir}/drivers/media/dvb-frontends" -m644 drivers/media/dvb-frontends/*.h
  install -Dt "${_builddir}/drivers/media/tuners" -m644 drivers/media/tuners/*.h

  # add xfs and shmem for aufs building
  mkdir -p "${_builddir}"/{fs/xfs,mm}

  # copy in Kconfig files
  find . -name Kconfig\* -exec install -Dm644 {} "${_builddir}/{}" \;

  # add objtool for external module building and enabled VALIDATION_STACK option
  install -Dt "${_builddir}/tools/objtool" tools/objtool/objtool

  # remove unneeded architectures
  local _arch
  for _arch in "${_builddir}"/arch/*/; do
    [[ ${_arch} == */x86/ ]] && continue
    rm -r "${_arch}"
  done

  # remove files already in linux-docs package
  rm -r "${_builddir}/Documentation"

  # Fix permissions
  chmod -R u=rwX,go=rX "${_builddir}"

  # strip scripts directory
  local _binary _strip
  while read -rd '' _binary; do
    case "$(file -bi ${_binary})" in
      *application/x-sharedlib*)  _strip="${STRIP_SHARED}"   ;; # Libraries (.so)
      *application/x-archive*)    _strip="${STRIP_STATIC}"   ;; # Libraries (.a)
      *application/x-executable*) _strip="${STRIP_BINARIES}" ;; # Binaries
      *) continue ;;
    esac
    /usr/bin/strip ${_strip} "${_binary}"
  done < <(find "${_builddir}/scripts" -type f -perm -u+w -print0 2>/dev/null)
}
