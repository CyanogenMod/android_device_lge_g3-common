# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.fluencetype=fluence \
    persist.audio.fluence.mode=endfire \
    persist.audio.headset_fluence=false \
    use.voice.path.for.pcm.voip=true

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.cabl=0 \
    ro.sf.lcd_density=640

# GPS

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.use_data_netmgrd=true \
    persist.data.netmgrd.qos.enable=false \
    persist.radio.add_power_save=1

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    debug.qualcomm.sns.libsensor1=e
