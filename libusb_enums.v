module libusb

pub enum ClassCode { // libusb_class_code
	per_interface = C.LIBUSB_CLASS_PER_INTERFACE
	audio = C.LIBUSB_CLASS_AUDIO
	comm = C.LIBUSB_CLASS_COMM
	hid = C.LIBUSB_CLASS_HID
	physical = C.LIBUSB_CLASS_PHYSICAL
	image = C.LIBUSB_CLASS_IMAGE
	ptp = C.LIBUSB_CLASS_PTP
	printer = C.LIBUSB_CLASS_PRINTER
	mass_storage = C.LIBUSB_CLASS_MASS_STORAGE
	hub = C.LIBUSB_CLASS_HUB
	data = C.LIBUSB_CLASS_DATA
	smart_card = C.LIBUSB_CLASS_SMART_CARD
	contect_security = C.LIBUSB_CLASS_CONTENT_SECURITY
	video = C.LIBUSB_CLASS_VIDEO
	personal_healthcare = C.LIBUSB_CLASS_PERSONAL_HEALTHCARE
	diagnostic_device = C.LIBUSB_CLASS_DIAGNOSTIC_DEVICE
	wireless = C.LIBUSB_CLASS_WIRELESS
	miscellaneous = C.LIBUSB_CLASS_MISCELLANEOUS
	application = C.LIBUSB_CLASS_APPLICATION
	vendor_specific = C.LIBUSB_CLASS_VENDOR_SPEC
}

pub enum DescriptorType { // libusb_descriptor_type
	device = C.LIBUSB_DT_DEVICE
	config = C.LIBUSB_DT_CONFIG
	@string = C.LIBUSB_DT_STRING
	iterface = C.LIBUSB_DT_INTERFACE
	endpoint = C.LIBUSB_DT_ENDPOINT
	bos = C.LIBUSB_DT_BOS
	device_capability = C.LIBUSB_DT_DEVICE_CAPABILIT
	hid = C.LIBUSB_DT_HID
	report = C.LIBUSB_DT_REPORT
	physical = C.LIBUSB_DT_PHYSICAL
	hub = C.LIBUSB_DT_HUB
	superspeed_hub = C.LIBUSB_DT_SUPERSPEED_HUB
	ss_endpoint_companion = C.LIBUSB_DT_SS_ENDPOINT_COMPANION
}

pub enum EndpointDirection { // libusb_endpoint_direction
	// output: host-to-device
	output = C.LIBUSB_ENDPOINT_OUT
	// input: device-to-host
	input = C.LIBUSB_ENDPOINT_IN
}

pub enum EndpointTransferType { // libusb_endpoint_transfer_type
	control = C.LIBUSB_ENDPOINT_TRANSFER_TYPE_CONTROL
	isochronous = C.LIBUSB_ENDPOINT_TRANSFER_TYPE_ISOCHRONOUS
	bulk = C.LIBUSB_ENDPOINT_TRANSFER_TYPE_BULK
	interrupt = C.LIBUSB_ENDPOINT_TRANSFER_TYPE_INTERRUPT
}

pub enum StandardRequest { // libusb_standard_request
	get_status = C.LIBUSB_REQUEST_GET_STATUS
	clear_feature = C.LIBUSB_REQUEST_CLEAR_FEATURE
	set_feature = C.LIBUSB_REQUEST_SET_FEATURE
	set_address = C.LIBUSB_REQUEST_SET_ADDRESS
	get_descriptor = C.LIBUSB_REQUEST_GET_DESCRIPTOR
	set_descriptor = C.LIBUSB_REQUEST_SET_DESCRIPTOR
	get_configuration = C.LIBUSB_REQUEST_GET_CONFIGURATION
	set_configuration = C.LIBUSB_REQUEST_SET_CONFIGURATION
	get_interface = C.LIBUSB_REQUEST_GET_INTERFACE
	set_interface = C.LIBUSB_REQUEST_SET_INTERFACE
	synch_frame = C.LIBUSB_REQUEST_SYNCH_FRAME
	set_sel = C.LIBUSB_REQUEST_SET_SEL
	set_isoch_delay = C.LIBUSB_SET_ISOCH_DELAY
}

pub enum RequestType { // libusb_request_type
	standard = C.LIBUSB_REQUEST_TYPE_STANDARD
	class = C.LIBUSB_REQUEST_TYPE_CLASS
	vendor = C.LIBUSB_REQUEST_TYPE_VENDOR
	reserved = C.LIBUSB_REQUEST_TYPE_RESERVED
}

pub enum RequestRecipint { // libusb_request_recipient
	device = C.LIBUSB_RECIPIENT_DEVICE
	@interface = C.LIBUSB_RECIPIENT_INTERFACE
	endpoint = C.LIBUSB_RECIPIENT_ENDPOINT
	other = C.LIBUSB_RECIPIENT_OTHER
}

pub enum IsoSyncType { // libusb_iso_sync_type
	@none = C.LIBUSB_ISO_SYNC_TYPE_NONE
	async = C.LIBUSB_ISO_SYNC_TYPE_ASYNC
	adaptive = C.LIBUSB_ISO_SYNC_TYPE_ADAPTIVE
	sync = C.LIBUSB_ISO_SYNC_TYPE_SYNC
}

pub enum IsoUsageType { // libusb_iso_usage_type
	data = C.LIBUSB_ISO_USAGE_TYPE_DATA
	feedback = C.LIBUSB_ISO_USAGE_TYPE_FEEDBACK
	implicit = C.LIBUSB_ISO_USAGE_TYPE_IMPLICIT
}

pub enum SupportedSpeed { // libusb_supported_speed
	low_speed_operation = C.LIBUSB_LOW_SPEED_OPERATION
	full_speed_operation = C.LIBUSB_FULL_SPEED_OPERATION
	high_speed_operation = C.LIBUSB_HIGH_SPEED_OPERATION
	super_speed_operation = C.LIBUSB_SUPER_SPEED_OPERATION
}

pub enum Usb2ExtensionAttributes { // libusb_usb_2_0_extension_attributes
	lpm_support = C.LIBUSB_BM_LPM_SUPPORT
}

pub enum SsUsbDeviceCapabilityAttributes { // libusb_ss_usb_device_capability_attributes
	ltm_support = C.LIBUSB_BM_LTM_SUPPORT
}

pub enum BosType { // libusb_bos_type
	wireless_usb_device_capability = C.LIBUSB_BT_WIRELESS_USB_DEVICE_CAPABILITY
	usb_2_0_extension = C.LIBUSB_BT_USB_2_0_EXTENSION
	ss_usb_device_capability = C.LIBUSB_BT_SS_USB_DEVICE_CAPABILITY
	container_id = C.LIBUSB_BT_CONTAINER_ID
}

pub enum Speed { // libusb_speed
	unknown = C.LIBUSB_SPEED_UNKNOWN
	low = C.LIBUSB_SPEED_LOW
	full = C.LIBUSB_SPEED_FULL
	high = C.LIBUSB_SPEED_HIGH
	super_speed = C.LIBUSB_SPEED_SUPER
	super_speed_plus = C.LIBUSB_SPEED_SUPER_PLUS
}

pub enum Error { // libusb_error
	success = C.LIBUSB_SUCCESS
	io = C.LIBUSB_ERROR_IO
	invalid_param = C.LIBUSB_ERROR_INVALID_PARAM
	access = C.LIBUSB_ERROR_ACCESS
	no_device = C.LIBUSB_ERROR_NO_DEVICE
	not_found = C.LIBUSB_ERROR_NOT_FOUND
	busy = C.LIBUSB_ERROR_BUSY
	timeout = C.LIBUSB_ERROR_TIMEOUT
	overflow = C.LIBUSB_ERROR_OVERFLOW
	pipe = C.LIBUSB_ERROR_PIPE
	interrupted = C.LIBUSB_ERROR_INTERRUPTED
	no_mem = C.LIBUSB_ERROR_NO_MEM
	not_supported = C.LIBUSB_ERROR_NOT_SUPPORTED
	other = C.LIBUSB_ERROR_OTHER
}

pub enum TransferType { // libusb_transfer_type
	control = C.LIBUSB_TRANSFER_TYPE_CONTROL
	isochronous = C.LIBUSB_TRANSFER_TYPE_ISOCHRONOUS
	bulk = C.LIBUSB_TRANSFER_TYPE_BULK
	interrupt = C.LIBUSB_TRANSFER_TYPE_INTERRUPT
	bulk_stream = C.LIBUSB_TRANSFER_TYPE_BULK_STREAM
}

pub enum TransferStatus { // libusb_transfer_status
	completed = C.LIBUSB_TRANSFER_COMPLETED
	error = C.LIBUSB_TRANSFER_ERROR
	timeout = C.LIBUSB_TRANSFER_TIMED_OUT
	cancelled = C.LIBUSB_TRANSFER_CANCELLED
	stall = C.LIBUSB_TRANSFER_STALL
	no_device = C.LIBUSB_TRANSFER_NO_DEVICE
	overflow = C.LIBUSB_TRANSFER_OVERFLOW
}

pub enum TransferFlags { // libusb_transfer_flags
	short_not_ok = C.LIBUSB_TRANSFER_SHORT_NOT_OK
	free_buffer = C.LIBUSB_TRANSFER_FREE_BUFFER
	free_transfer = C.LIBUSB_TRANSFER_FREE_TRANSFER
	add_zero_packet = C.LIBUSB_TRANSFER_ADD_ZERO_PACKET
}

pub enum Capability { // libusb_capability
	has_capability = C.LIBUSB_CAP_HAS_CAPABILITY
	has_hotplug = C.LIBUSB_CAP_HAS_HOTPLUG
	hid_access = C.LIBUSB_CAP_HAS_HID_ACCESS
	detach_kernel_driver = C.LIBUSB_CAP_SUPPORTS_DETACH_KERNEL_DRIVER
}

pub enum LogLevel { // libusb_log_level
	@none = C.LIBUSB_LOG_LEVEL_NONE
	error = C.LIBUSB_LOG_LEVEL_ERROR
	warning = C.LIBUSB_LOG_LEVEL_WARNING
	info = C.LIBUSB_LOG_LEVEL_INFO
	debug = C.LIBUSB_LOG_LEVEL_DEBUG
}

pub enum LogCallbackMode { // libusb_log_cb_mode
	global = C.LIBUSB_LOG_CB_GLOBAL
	context = C.LIBUSB_LOG_CB_CONTEXT
}

pub enum HotPlugEvent {
	device_arrived = C.LIBUSB_HOTPLUG_EVENT_DEVICE_ARRIVED
	device_left = C.LIBUSB_HOTPLUG_EVENT_DEVICE_LEFT
}

pub enum HotPlugFlag {
	enumerate = C.LIBUSB_HOTPLUG_ENUMERATE
}

pub enum Option { // libusb_option
	log_level = C.LIBUSB_OPTION_LOG_LEVEL
	use_usbdk = C.LIBUSB_OPTION_USE_USBDK
	no_device_discovery = C.LIBUSB_OPTION_NO_DEVICE_DISCOVERY
	weak_authority = C.LIBUSB_OPTION_WEAK_AUTHORITY
	max = C.LIBUSB_OPTION_MAX
}
