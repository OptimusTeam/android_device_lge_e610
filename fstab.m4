# Android fstab file.
# The filesystem that contains the filesystem checker binary (typically /system) cannot
# specify MF_CHECK, and must come before any filesystems that do specify MF_CHECK

/dev/block/platform/msm_sdcc.3/by-num/p14         /system      ext4    ro,barrier=1,noatime                          wait
/dev/block/platform/msm_sdcc.3/by-num/p20         /data        ext4    nosuid,nodev,noatime,barrier=1,noauto_da_alloc,errors=continue      check
/dev/block/platform/msm_sdcc.3/by-num/p9          /boot        emmc    defaults                                     defaults
/dev/block/platform/msm_sdcc.3/by-num/p17         /recovery    emmc    defaults                                     defaults
/dev/block/platform/msm_sdcc.3/by-num/p15         /persist     ext4    nosuid,nodev,barrier=1                       wait,check
/dev/block/platform/msm_sdcc.3/by-num/p16         /cache       ext4    nosuid,nodev,barrier=1                       wait,check
/dev/block/platform/msm_sdcc.3/by-num/p18         /persist-lg  ext4    nosuid,nodev,barrier=1                       wait,check
/dev/block/platform/msm_sdcc.3/by-num/p23         /mpt         ext4    nosuid,nodev,barrier=1                       wait,check

# External SD
/devices/platform/msm_sdcc.1/mmc_host/mmc1       auto vfat defaults                                wait,voldmanaged=sdcard1:auto
/devices/platform/msm_hsusb_host                 auto auto defaults                                     voldmanaged=usbdisk:auto

/dev/block/zram0                         none               swap    defaults                                zramsize=157286400

