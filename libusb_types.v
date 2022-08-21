module libusb

pub type Size = C.SSIZE_T

struct C.libusb_device_descriptor {
	b_length             u8
	b_descriptor_type    u8
	bcd_usb              u16
	b_device_class       u8
	b_device_sub_class   u8
	b_device_protocol    u8
	b_max_packet_size0   u8
	id_vendor            u16
	id_product           u16
	bcd_device           u16
	i_manufacturer       u8
	i_product            u8
	i_serial_number      u8
	b_num_configurations u8
}

struct C.libusb_endpoint_descriptor {
	b_length           u8
	b_descriptor_type  u8
	b_endpoint_address u8
	bm_attributes      u8
	w_max_packet_size  u16
	b_interval         u8
	b_refresh          u8
	b_synch_address    u8
	extra              &char
	extra_length       int
}

struct C.libusb_interface_descriptor {
	b_length             u8
	b_descriptor_type    u8
	b_interface_number   u8
	b_alternate_setting  u8
	b_num_endpoints      u8
	b_interface_class    u8
	b_interface_subclass u8
	b_interface_protocol u8
	i_interface          u8
	endpoint             &C.libusb_endpoint_descriptor
	extra                &char
	extra_length         int
}

struct C.libusb_interface {
	alt_setting    &C.libusb_interface_descriptor
	num_altsetting int
}

struct C.libusb_config_descriptor {
	b_length              u8
	b_descriptor_type     u8
	w_total_length        u16
	b_num_interfaces      u8
	b_configuration_value u8
	i_configuration       u8
	bm_attributes         u8
	max_power             u8
	@interface            &C.libusb_interface
	extra                 &char
	extra_length          int
}

struct C.libusb_ss_endpoint_companion_descriptor {
	b_length             u8
	b_descriptor_type    u8
	b_max_burst          u8
	bm_attributes        u8
	w_bytes_per_interval u16
}

struct C.libusb_bos_dev_capability_descriptor {
	b_length              u8
	b_descriptor_type     u8
	b_dev_capability_type u8
	dev_capability_data   [C.ZERO_SIZED_ARRAY]u8
}

struct C.libusb_bos_descriptor {
	b_length          u8
	b_descriptor_type u8
	w_total_length    u16
	b_num_device_caps u8
	dev_capability    [C.ZERO_SIZED_ARRAY]&C.libusb_bos_dev_capability_descriptor
}

struct C.libusb_usb_2_0_extension_descriptor {
	b_length              u8
	b_descriptor_type     u8
	b_dev_capability_type u8
	bm_attributes         u32
}

struct C.libusb_ss_usb_device_capability_descriptor {
	b_length                u8
	b_descriptor_type       u8
	b_dev_capability_type   u8
	bm_attributes           u8
	w_speed_supported       u16
	b_functionality_support u8
	b_u1_dev_exit_lat       u8
	b_u2_dev_exit_lat       u16
}

struct C.libusb_container_id_descriptor {
	b_length              u8
	b_descriptor_type     u8
	b_dev_capability_type u8
	b_reserved            u8
	container_id          [16]u8
}

struct C.libusb_control_setup {
	bm_request_type u8
	b_request       u8
	w_value         u16
	w_index         u16
	w_length        u16
}

struct C.libusb_context {
}

pub struct Context {
mut:
	ctx &C.libusb_context
	is_initialized bool 
}

struct C.libusb_device {
}

pub struct Device {
	device &C.libusb_device
}

struct C.libusb_device_handle {}

struct C.libusb_version {
	major    u16
	minor    u16
	micro    u16
	nano     u16
	rc       &char
	describe &char
}
pub struct Version {
pub:
	major u16
	minor u16
	micro u16 
	nano  u16
}

struct C.libusb_iso_packet_descriptor {
	length        u32
	actual_length u32
	status        C.libusb_transfer_status
}

struct C.libusb_transfer {}

// typedef void (*libusb_transfer_cb_fn)(struct C.libusb_transfer *transfer)
pub type TransferCallback = C.libusb_transfer_cb_fn

struct C.libusb_transfer {
	dev_handle      &C.libusb_device_handle
	flags           u8
	endpoint        u8
	@type           u8
	timeout         u32
	@status         C.libusb_transfer_status
	length          int
	actual_length   int
	callback        C.libusb_transfer_cb_fn
	user_data       voidptr
	buffer          &u8
	num_iso_packets int
	iso_packet_desc [ZERO_SIZED_ARRAY]C.libusb_iso_packet_descriptor
}

// typedef void (*libusb_log_cb)(libusb_context *ctx,
// enum libusb_log_level level, const char *str)
pub type LogCallback = C.libusb_log_cb

// typedef int libusb_hotplug_callback_handle

// typedef int (*libusb_hotplug_callback_fn)(libusb_context *ctx,
//	libusb_device *device, libusb_hotplug_event event, void *user_data)
pub type HotPlugCallback = C.libusb_hotplug_callback_fn

// File descriptor for polling
struct C.libusb_pollfd {
	ifd    int
	events i16
}

pub type PollFd = C.libusb_pollfd

// typedef void (*libusb_pollfd_added_cb)(int fd, short events, void *user_data)
pub type PollFdAddedCallback = C.libusb_pollfd_added_cb

// typedef void (*libusb_pollfd_removed_cb)(int fd, void *user_data)
pub type PollFdRemovedCallback = C.libusb_pollfd_removed_cb

struct C.timeval {}
