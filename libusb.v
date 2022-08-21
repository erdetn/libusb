module libusb


// todo
fn C.libusb_cpu_to_le16(x u16) u16
pub fn cpu_to_le16(x u16) u16 {
	return C.libusb_cpu_to_le16(x)
}

pub fn le16_to_cpu(x u16) u16 {
	return cpu_to_le16(x)
}


// todo
fn C.libusb_init(ctx &&C.libusb_context) int

// todo
fn C.libusb_exit(ctx &C.libusb_context)

// todo
fn C.libusb_set_debug(ctx &C.libusb_context, level int)

// todo
fn C.libusb_set_log_cb(ctx &C.libusb_context, cb C.libusb_log_cb, mode int)

// todo
fn C.libusb_get_version() &C.libusb_version

// todo
fn C.libusb_has_capability(capability u32) int

// todo
fn C.libusb_error_name(errcode int) &char

// todo
fn C.libusb_setlocale(locale &char) int

// todo
fn C.libusb_strerror(errcode int) &char


// todo
fn C.libusb_get_device_list(ctx &C.libusb_context, list &&&C.libusb_device) C.ssize_t

// todo
fn C.libusb_free_device_list(list &&C.libusb_device, unref_devices int)

// todo
fn C.libusb_ref_device(dev &C.libusb_device) &C.libusb_device

// todo
fn C.libusb_unref_device(dev &C.libusb_device)


// todo
fn C.libusb_get_configuration(dev &C.libusb_device_handle, config &int) int

// todo
fn C.libusb_get_device_descriptor(dev &C.libusb_device, desc &C.libusb_device_descriptor) int

// todo
fn C.libusb_get_active_config_descriptor(dev &C.libusb_device, config &&C.libusb_config_descriptor) int

// todo
fn C.libusb_get_config_descriptor(dev &C.libusb_device, config_index u8, config &&C.libusb_config_descriptor) int

// todo
fn C.libusb_get_config_descriptor_by_value(dev &C.libusb_device, bConfigurationValue u8, config &&C.libusb_config_descriptor) int

// todo
fn C.libusb_free_config_descriptor(config &C.libusb_config_descriptor)

// todo
fn C.libusb_get_ss_endpoint_companion_descriptor(ctx &C.libusb_context, endpoint &C.libusb_endpoint_descriptor, ep_comp &&C.libusb_ss_endpoint_companion_descriptor) int


// todo
fn C.libusb_free_ss_endpoint_companion_descriptor(ep_comp &C.libusb_ss_endpoint_companion_descriptor)

// todo
fn C.libusb_get_bos_descriptor(dev_handle &C.libusb_device_handle, bos &&C.libusb_bos_descriptor) int

// todo
fn C.libusb_free_bos_descriptor(bos &C.libusb_bos_descriptor)

// todo
fn C.libusb_get_usb_2_0_extension_descriptor(ctx &C.libusb_context, dev_cap &C.libusb_bos_dev_capability_descriptor, usb_2_0_extension &&C.libusb_usb_2_0_extension_descriptor) int


// todo
fn C.libusb_free_usb_2_0_extension_descriptor(usb_2_0_extension &C.libusb_usb_2_0_extension_descriptor)


// todo
fn C.libusb_get_ss_usb_device_capability_descriptor(ctx &C.libusb_context, dev_cap &C.libusb_bos_dev_capability_descriptor, ss_usb_device_cap &&C.libusb_ss_usb_device_capability_descriptor) int


// todo
fn C.libusb_free_ss_usb_device_capability_descriptor(ss_usb_device_cap &C.libusb_ss_usb_device_capability_descriptor)

// todo
fn C.libusb_get_container_id_descriptor(ctx &C.libusb_context, dev_cap &C.libusb_bos_dev_capability_descriptor, container_id &&C.libusb_container_id_descriptor) int


// todo
fn C.libusb_free_container_id_descriptor(container_id &C.libusb_container_id_descriptor)


// todo
fn C.libusb_get_bus_number(dev &C.libusb_device) u8

// todo
fn C.libusb_get_port_number(dev &C.libusb_device) u8


// todo
fn C.libusb_get_port_numbers(dev &C.libusb_device, port_numbers &u8, port_numbers_len int) int


// todo
fn C.libusb_get_port_path(ctx &C.libusb_context, dev &C.libusb_device, path &u8, path_length u8) int


// todo
fn C.libusb_get_parent(dev &C.libusb_device) &C.libusb_device

// todo
fn C.libusb_get_device_address(dev &C.libusb_device) u8

// todo
fn C.libusb_get_device_speed(dev &C.libusb_device) int

// todo
fn C.libusb_get_max_packet_size(dev &C.libusb_device, endpoint u8) int

// todo
fn C.libusb_get_max_iso_packet_size(dev &C.libusb_device, endpoint u8) int


// todo
fn C.libusb_wrap_sys_device(ctx &C.libusb_context, sys_dev &C.intptr_t, dev_handle &&C.libusb_device_handle) int

// todo
fn C.libusb_open(dev &C.libusb_device, dev_handle &&C.libusb_device_handle) int

// todo
fn C.libusb_close(dev_handle &C.libusb_device_handle)

// todo
fn C.libusb_get_device(dev_handle &C.libusb_device_handle) &C.libusb_device


// todo
fn C.libusb_set_configuration(dev_handle &C.libusb_device_handle, configuration int) int

// todo
fn C.libusb_claim_interface(dev_handle &C.libusb_device_handle, interface_number int) int

// todo
fn C.libusb_release_interface(dev_handle &C.libusb_device_handle, interface_number int) int


// todo
fn C.libusb_open_device_with_vid_pid(ctx &C.libusb_context, vendor_id u16, product_id u16) &C.libusb_device_handle


// todo
fn C.libusb_set_interface_alt_setting(dev_handle &C.libusb_device_handle, interface_number int, alternate_setting int) int

// todo
fn C.libusb_clear_halt(dev_handle &C.libusb_device_handle, endpoint u8) int

// todo
fn C.libusb_reset_device(dev_handle &C.libusb_device_handle) int


// todo
fn C.libusb_alloc_streams(dev_handle &C.libusb_device_handle, num_streams u32, endpoints &u8, num_endpoints int) int

// todo
fn C.libusb_free_streams(dev_handle &C.libusb_device_handle, endpoints &u8, num_endpoints int) int


// todo
fn C.libusb_dev_mem_alloc(dev_handle &C.libusb_device_handle, length C.size_t) &u8

// todo
fn C.libusb_dev_mem_free(dev_handle &C.libusb_device_handle, buffer &u8, length C.size_t) int


// todo
fn C.libusb_kernel_driver_active(dev_handle &C.libusb_device_handle, interface_number int) int

// todo
fn C.libusb_detach_kernel_driver(dev_handle &C.libusb_device_handle, interface_number int) int

// todo
fn C.libusb_attach_kernel_driver(dev_handle &C.libusb_device_handle, interface_number int) int

// todo
fn C.libusb_set_auto_detach_kernel_driver(dev_handle &C.libusb_device_handle, enable int) int


// todo
fn C.libusb_control_transfer_get_data(transfer &C.libusb_transfer) &u8


// todo
fn C.libusb_control_transfer_get_setup(transfer &C.libusb_transfer) &C.libusb_control_setup


// todo
fn C.libusb_fill_control_setup(buffer &u8, bmRequestType u8, bRequest u8, wValue u16, wIndex u16, wLength u16)


// todo
fn C.libusb_alloc_transfer(iso_packets int) &C.libusb_transfer

// todo
fn C.libusb_submit_transfer(transfer &C.libusb_transfer) int

// todo
fn C.libusb_cancel_transfer(transfer &C.libusb_transfer) int

// todo
fn C.libusb_free_transfer(transfer &C.libusb_transfer)

// todo
fn C.libusb_transfer_set_stream_id(transfer &C.libusb_transfer, stream_id u32)


// todo
fn C.libusb_transfer_get_stream_id(transfer &C.libusb_transfer) u32


// todo
fn C.libusb_fill_control_transfer(transfer &C.libusb_transfer, dev_handle &C.libusb_device_handle, buffer &u8, callback &C.libusb_transfer_cb_fn, user_data voidptr, timeout u32)


// todo
fn C.libusb_fill_bulk_transfer(transfer &C.libusb_transfer, dev_handle &C.libusb_device_handle, endpoint u8, buffer &u8, length int, callback C.libusb_transfer_cb_fn, user_data voidptr, timeout u32)


// todo
fn C.libusb_fill_bulk_stream_transfer(transfer &C.libusb_transfer, dev_handle &C.libusb_device_handle, endpoint u8, stream_id u32, buffer &u8, length int, callback C.libusb_transfer_cb_fn, user_data voidptr, timeout u32)


// todo
fn C.libusb_fill_interrupt_transfer(transfer &C.libusb_transfer, dev_handle &C.libusb_device_handle, endpoint u8, buffer &u8, length int, callback C.libusb_transfer_cb_fn, user_data voidptr, timeout u32)


// todo
fn C.libusb_fill_iso_transfer(transfer &C.libusb_transfer, dev_handle &C.libusb_device_handle, endpoint u8, buffer &u8, length int, num_iso_packets int, callback C.libusb_transfer_cb_fn, user_data voidptr, timeout u32)


// todo
fn C.libusb_set_iso_packet_lengths(transfer &C.libusb_transfer, length u32)

// todo
fn C.libusb_get_iso_packet_buffer(transfer &C.libusb_transfer, packet u32) &u8


// todo
fn C.libusb_get_iso_packet_buffer_simple(transfer &C.libusb_transfer, packet u32) &u8

// sync I/O


// todo
fn C.libusb_control_transfer(dev_handle &C.libusb_device_handle, request_type u8, bRequest u8, wValue u16, wIndex u16, data &u8, wLength u16, timeout u32) int


// todo
fn C.libusb_bulk_transfer(dev_handle &C.libusb_device_handle, endpoint u8, data &u8, length int, actual_length &int, timeout u32) int


// todo
fn C.libusb_interrupt_transfer(dev_handle &C.libusb_device_handle, endpoint u8, data &u8, length int, actual_length &int, timeout u32) int


// todo
fn C.libusb_get_descriptor(dev_handle &C.libusb_device_handle, desc_type u8, desc_index u8, data &u8, length int) int


// todo
fn C.libusb_get_string_descriptor(dev_handle &C.libusb_device_handle, desc_index u8, langid u16, data &u8, length int) int


// todo
fn C.libusb_get_string_descriptor_ascii(dev_handle &C.libusb_device_handle, desc_index u8, data &u8, length int) int

// polling and timeouts


// todo
fn C.libusb_try_lock_events(ctx &C.libusb_context) int

// todo
fn C.libusb_lock_events(ctx &C.libusb_context)

// todo
fn C.libusb_unlock_events(ctx &C.libusb_context)

// todo
fn C.libusb_event_handling_ok(ctx &C.libusb_context) int

// todo
fn C.libusb_event_handler_active(ctx &C.libusb_context) int

// todo
fn C.libusb_interrupt_event_handler(ctx &C.libusb_context)

// todo
fn C.libusb_lock_event_waiters(ctx &C.libusb_context)

// todo
fn C.libusb_unlock_event_waiters(ctx &C.libusb_context)

// todo
fn C.libusb_wait_for_event(ctx &C.libusb_context, tv &C.timeval) int


// todo
fn C.libusb_handle_events_timeout(ctx &C.libusb_context, tv &C.timeval) int

// todo
fn C.libusb_handle_events_timeout_completed(ctx &C.libusb_context, tv &C.timeval, completed &int) int

// todo
fn C.libusb_handle_events(ctx &C.libusb_context) int

// todo
fn C.libusb_handle_events_completed(ctx &C.libusb_context, completed &int) int

// todo
fn C.libusb_handle_events_locked(ctx &C.libusb_context, tv &C.timeval) int

// todo
fn C.libusb_pollfds_handle_timeouts(ctx &C.libusb_context) int

// todo
fn C.libusb_get_next_timeout(ctx &C.libusb_context, tv &C.timeval) int


// todo
fn C.libusb_get_pollfds(ctx &C.libusb_context) &&C.libusb_pollfd

// todo
fn C.libusb_free_pollfds(pollfds &&C.libusb_pollfd)

// todo
fn C.libusb_set_pollfd_notifiers(ctx &C.libusb_context, added_cb C.libusb_pollfd_added_cb, removed_cb C.libusb_pollfd_removed_cb, user_data voidtr)


// todo
fn C.libusb_hotplug_register_callback(ctx &C.libusb_context, events int, flags int, vendor_id int, product_id int, dev_class int, fn_cb libusb_hotplug_callback_fn, user_data voidptr, callbacK_handle &C.libusb_hotplug_callback_handle) int


// todo
fn C.libusb_hotplug_deregister_callback(ctx &C.libusb_context, callback_handle C.libusb_hotplug_callback_handle)


// todo
fn C.libusb_hotplug_get_user_data(ctx &C.libusb_context, callback_handle C.libusb_hotplug_callback_handle) voidptr


// todo
fn C.libusb_set_option(ctx &C.libusb_context, option C.libusb_option, data voidptr) int
