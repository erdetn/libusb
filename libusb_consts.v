module libusb

pub const api_version = C.LIBUSB_API_VERSION

pub const dt_device_size = C.LIBUSB_DT_DEVICE_SIZE

pub const dt_config_size = C.LIBUSB_DT_CONFIG_SIZE

pub const dt_interface_size = C.LIBUSB_DT_INTERFACE_SIZE

pub const dt_endpoint_size = C.LIBUSB_DT_ENDPOINT_SIZE

pub const dt_endpoint_audio_size = C.LIBUSB_DT_ENDPOINT_AUDIO_SIZE

pub const dt_hub_nonvar_size = C.LIBUSB_DT_HUB_NONVAR_SIZE

pub const dt_ss_endpoint_companion_size = C.LIBUSB_DT_SS_ENDPOINT_COMPANION_SIZE

pub const dt_bos_size = C.LIBUSB_DT_BOS_SIZE

pub const dt_device_capability_size = C.LIBUSB_DT_DEVICE_CAPABILITY_SIZE

pub const bt_size_2_0_extension_size = C.LIBUSB_BT_USB_2_0_EXTENSION_SIZE

pub const bt_ss_usb_device_capability_size = C.LIBUSB_BT_SS_USB_DEVICE_CAPABILITY_SIZE

pub const bt_container_id_size = C.LIBUSB_BT_CONTAINER_ID_SIZE

pub const dt_bos_max_size = C.LIBUSB_DT_BOS_MAX_SIZE

pub const endpoint_address_mask = C.LIBUSB_ENDPOINT_ADDRESS_MASK

pub const endpoint_dir_mask = C.LIBUSB_ENDPOINT_DIR_MASK

pub const transfer_type_mask = C.LIBUSB_TRANSFER_TYPE_MASK

pub const hotplug_no_flags = C.LIBUSB_HOTPLUG_NO_FLAGS

pub const match_any = C.LIBUSB_HOTPLUG_MATCH_ANY
