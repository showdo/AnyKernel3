### AnyKernel3 Rust Loader
properties() { '
kernel.string=KernelSU by KernelSU Developersand and 本内核包来自TG频道(Channel)：https://t.me/qdykernel
do.devicecheck=0
do.modules=0
do.systemless=0
do.cleanup=1
do.cleanuponabort=0
device.name1=
device.name2=
device.name3=
device.name4=
device.name5=
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

# AK3 backend core discovery marker: tools/ak3-core.sh
tools/ak3-loader
rc=$?
if [ "$rc" -eq 73 ]; then
  echo "ui_print 请勿修改任意文件，脚本已退出
ui_print" >> /proc/self/fd/$OUTFD
fi
exit "$rc"