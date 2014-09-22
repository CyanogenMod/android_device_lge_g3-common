# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.fluencetype=fluence \
    persist.audio.fluence.mode=endfire \
    persist.audio.headset_fluence=false \
    use.voice.path.for.pcm.voip=true

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true \
    ro.qualcomm.cabl=0 \
    ro.sf.lcd_density=640

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=1 \
    persist.loc.nlp_name=com.qualcomm.services.location \
    ro.gps.agps_provider=1 \
    ro.qc.sdk.izat.premium_enabled=0 \
    ro.qc.sdk.izat.service_mask=0x0

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.use_data_netmgrd=true \
    persist.data.netmgrd.qos.enable=false \
    persist.radio.add_power_save=1 \
    ro.telephony.ril_class=LgeLteRIL

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    debug.qualcomm.sns.libsensor1=e
