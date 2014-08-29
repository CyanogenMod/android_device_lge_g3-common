# Android fstab file.
# The filesystem that contains the filesystem checker binary (typically /system) cannot
# specify MF_CHECK, and must come before any filesystems that do specify MF_CHECK

#TODO: Add 'check' as fs_mgr_flags with data partition.
# Currently we dont have e2fsck compiled. So fs check would failed.

#<src>                                                <mnt_point>  <type>  <mnt_flags and options>                     <fs_mgr_flags>
/dev/block/platform/msm_sdcc.1/by-name/boot           /boot        emmc    defaults                                            defaults
/dev/blcok/platform/msm_sdcc.1/by-name/recovery       /recovery    emmc    defaults                                            defaults
/dev/block/platform/msm_sdcc.1/by-name/system         /system      ext4    ro,barrier=1,noatime                                wait
/dev/block/platform/msm_sdcc.1/by-name/cache          /cache       ext4    nosuid,nodev,noatime,barrier=1,noauto_da_alloc,errors=continue     wait,check
/dev/block/platform/msm_sdcc.1/by-name/userdata       /data        ext4    nosuid,nodev,barrier=1,noatime,noauto_da_alloc,errors=continue      wait,check,encryptable=/dev/block/platform/msm_sdcc.1/by-name/encrypt

# In Kitkat, fstab.(ro.hardware) file is used to mount sdcard and
# other devices instead of vold.fstab.
# 2014/01/17, B2-BSP-FS@lge.com, For sdcard and USB-OTG
/devices/msm_sdcc.2/mmc_host                          /storage/external_SD    vfat    nosuid,nodev         wait,voldmanaged=external_SD:auto
/devices/platform/xhci-hcd/usb1/1-1                   /storage/USBstorage1    vfat    nosuid,nodev         wait,voldmanaged=USBstorage1:auto
/devices/platform/xhci-hcd/usb1/1-1                   /storage/USBstorage2    vfat    nosuid,nodev         wait,voldmanaged=USBstorage2:auto 
/devices/platform/xhci-hcd/usb1/1-1                   /storage/USBstorage3    vfat    nosuid,nodev         wait,voldmanaged=USBstorage3:auto 
/devices/platform/xhci-hcd/usb1/1-1                   /storage/USBstorage4    vfat    nosuid,nodev         wait,voldmanaged=USBstorage4:auto 
/devices/platform/xhci-hcd/usb1/1-1                   /storage/USBstorage5    vfat    nosuid,nodev         wait,voldmanaged=USBstorage5:auto 
/devices/platform/xhci-hcd/usb1/1-1                   /storage/USBstorage6    vfat    nosuid,nodev         wait,voldmanaged=USBstorage6:auto 
