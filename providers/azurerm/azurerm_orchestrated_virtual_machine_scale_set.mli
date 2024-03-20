(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type additional_capabilities

val additional_capabilities :
  ?ultra_ssd_enabled:bool prop -> unit -> additional_capabilities

type automatic_instance_repair

val automatic_instance_repair :
  ?grace_period:string prop ->
  enabled:bool prop ->
  unit ->
  automatic_instance_repair

type boot_diagnostics

val boot_diagnostics :
  ?storage_account_uri:string prop -> unit -> boot_diagnostics

type data_disk

val data_disk :
  ?create_option:string prop ->
  ?disk_encryption_set_id:string prop ->
  ?disk_size_gb:float prop ->
  ?lun:float prop ->
  ?ultra_ssd_disk_iops_read_write:float prop ->
  ?ultra_ssd_disk_mbps_read_write:float prop ->
  ?write_accelerator_enabled:bool prop ->
  caching:string prop ->
  storage_account_type:string prop ->
  unit ->
  data_disk

type extension__protected_settings_from_key_vault

val extension__protected_settings_from_key_vault :
  secret_url:string prop ->
  source_vault_id:string prop ->
  unit ->
  extension__protected_settings_from_key_vault

type extension

val extension :
  ?auto_upgrade_minor_version_enabled:bool prop ->
  ?extensions_to_provision_after_vm_creation:string prop list ->
  ?failure_suppression_enabled:bool prop ->
  ?force_extension_execution_on_change:string prop ->
  ?protected_settings:string prop ->
  ?settings:string prop ->
  name:string prop ->
  publisher:string prop ->
  type_:string prop ->
  type_handler_version:string prop ->
  protected_settings_from_key_vault:
    extension__protected_settings_from_key_vault list ->
  unit ->
  extension

type identity

val identity :
  identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type network_interface__ip_configuration__public_ip_address__ip_tag

val network_interface__ip_configuration__public_ip_address__ip_tag :
  tag:string prop ->
  type_:string prop ->
  unit ->
  network_interface__ip_configuration__public_ip_address__ip_tag

type network_interface__ip_configuration__public_ip_address

val network_interface__ip_configuration__public_ip_address :
  ?domain_name_label:string prop ->
  ?idle_timeout_in_minutes:float prop ->
  ?public_ip_prefix_id:string prop ->
  ?sku_name:string prop ->
  ?version:string prop ->
  name:string prop ->
  ip_tag:
    network_interface__ip_configuration__public_ip_address__ip_tag
    list ->
  unit ->
  network_interface__ip_configuration__public_ip_address

type network_interface__ip_configuration

val network_interface__ip_configuration :
  ?application_gateway_backend_address_pool_ids:string prop list ->
  ?application_security_group_ids:string prop list ->
  ?load_balancer_backend_address_pool_ids:string prop list ->
  ?primary:bool prop ->
  ?subnet_id:string prop ->
  ?version:string prop ->
  name:string prop ->
  public_ip_address:
    network_interface__ip_configuration__public_ip_address list ->
  unit ->
  network_interface__ip_configuration

type network_interface

val network_interface :
  ?dns_servers:string prop list ->
  ?enable_accelerated_networking:bool prop ->
  ?enable_ip_forwarding:bool prop ->
  ?network_security_group_id:string prop ->
  ?primary:bool prop ->
  name:string prop ->
  ip_configuration:network_interface__ip_configuration list ->
  unit ->
  network_interface

type os_disk__diff_disk_settings

val os_disk__diff_disk_settings :
  ?placement:string prop ->
  option_:string prop ->
  unit ->
  os_disk__diff_disk_settings

type os_disk

val os_disk :
  ?disk_encryption_set_id:string prop ->
  ?disk_size_gb:float prop ->
  ?write_accelerator_enabled:bool prop ->
  caching:string prop ->
  storage_account_type:string prop ->
  diff_disk_settings:os_disk__diff_disk_settings list ->
  unit ->
  os_disk

type os_profile__linux_configuration__admin_ssh_key

val os_profile__linux_configuration__admin_ssh_key :
  public_key:string prop ->
  username:string prop ->
  unit ->
  os_profile__linux_configuration__admin_ssh_key

type os_profile__linux_configuration__secret__certificate

val os_profile__linux_configuration__secret__certificate :
  url:string prop ->
  unit ->
  os_profile__linux_configuration__secret__certificate

type os_profile__linux_configuration__secret

val os_profile__linux_configuration__secret :
  key_vault_id:string prop ->
  certificate:
    os_profile__linux_configuration__secret__certificate list ->
  unit ->
  os_profile__linux_configuration__secret

type os_profile__linux_configuration

val os_profile__linux_configuration :
  ?admin_password:string prop ->
  ?computer_name_prefix:string prop ->
  ?disable_password_authentication:bool prop ->
  ?patch_assessment_mode:string prop ->
  ?patch_mode:string prop ->
  ?provision_vm_agent:bool prop ->
  admin_username:string prop ->
  admin_ssh_key:os_profile__linux_configuration__admin_ssh_key list ->
  secret:os_profile__linux_configuration__secret list ->
  unit ->
  os_profile__linux_configuration

type os_profile__windows_configuration__additional_unattend_content

val os_profile__windows_configuration__additional_unattend_content :
  content:string prop ->
  setting:string prop ->
  unit ->
  os_profile__windows_configuration__additional_unattend_content

type os_profile__windows_configuration__secret__certificate

val os_profile__windows_configuration__secret__certificate :
  store:string prop ->
  url:string prop ->
  unit ->
  os_profile__windows_configuration__secret__certificate

type os_profile__windows_configuration__secret

val os_profile__windows_configuration__secret :
  key_vault_id:string prop ->
  certificate:
    os_profile__windows_configuration__secret__certificate list ->
  unit ->
  os_profile__windows_configuration__secret

type os_profile__windows_configuration__winrm_listener

val os_profile__windows_configuration__winrm_listener :
  ?certificate_url:string prop ->
  protocol:string prop ->
  unit ->
  os_profile__windows_configuration__winrm_listener

type os_profile__windows_configuration

val os_profile__windows_configuration :
  ?computer_name_prefix:string prop ->
  ?enable_automatic_updates:bool prop ->
  ?hotpatching_enabled:bool prop ->
  ?patch_assessment_mode:string prop ->
  ?patch_mode:string prop ->
  ?provision_vm_agent:bool prop ->
  ?timezone:string prop ->
  admin_password:string prop ->
  admin_username:string prop ->
  additional_unattend_content:
    os_profile__windows_configuration__additional_unattend_content
    list ->
  secret:os_profile__windows_configuration__secret list ->
  winrm_listener:
    os_profile__windows_configuration__winrm_listener list ->
  unit ->
  os_profile__windows_configuration

type os_profile

val os_profile :
  ?custom_data:string prop ->
  linux_configuration:os_profile__linux_configuration list ->
  windows_configuration:os_profile__windows_configuration list ->
  unit ->
  os_profile

type plan

val plan :
  name:string prop ->
  product:string prop ->
  publisher:string prop ->
  unit ->
  plan

type priority_mix

val priority_mix :
  ?base_regular_count:float prop ->
  ?regular_percentage_above_base:float prop ->
  unit ->
  priority_mix

type source_image_reference

val source_image_reference :
  offer:string prop ->
  publisher:string prop ->
  sku:string prop ->
  version:string prop ->
  unit ->
  source_image_reference

type termination_notification

val termination_notification :
  ?timeout:string prop ->
  enabled:bool prop ->
  unit ->
  termination_notification

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_orchestrated_virtual_machine_scale_set

val azurerm_orchestrated_virtual_machine_scale_set :
  ?capacity_reservation_group_id:string prop ->
  ?encryption_at_host_enabled:bool prop ->
  ?eviction_policy:string prop ->
  ?extension_operations_enabled:bool prop ->
  ?extensions_time_budget:string prop ->
  ?id:string prop ->
  ?instances:float prop ->
  ?license_type:string prop ->
  ?max_bid_price:float prop ->
  ?priority:string prop ->
  ?proximity_placement_group_id:string prop ->
  ?single_placement_group:bool prop ->
  ?sku_name:string prop ->
  ?source_image_id:string prop ->
  ?tags:(string * string prop) list ->
  ?user_data_base64:string prop ->
  ?zone_balance:bool prop ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  platform_fault_domain_count:float prop ->
  resource_group_name:string prop ->
  additional_capabilities:additional_capabilities list ->
  automatic_instance_repair:automatic_instance_repair list ->
  boot_diagnostics:boot_diagnostics list ->
  data_disk:data_disk list ->
  extension:extension list ->
  identity:identity list ->
  network_interface:network_interface list ->
  os_disk:os_disk list ->
  os_profile:os_profile list ->
  plan:plan list ->
  priority_mix:priority_mix list ->
  source_image_reference:source_image_reference list ->
  termination_notification:termination_notification list ->
  unit ->
  azurerm_orchestrated_virtual_machine_scale_set

val yojson_of_azurerm_orchestrated_virtual_machine_scale_set :
  azurerm_orchestrated_virtual_machine_scale_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  capacity_reservation_group_id : string prop;
  encryption_at_host_enabled : bool prop;
  eviction_policy : string prop;
  extension_operations_enabled : bool prop;
  extensions_time_budget : string prop;
  id : string prop;
  instances : float prop;
  license_type : string prop;
  location : string prop;
  max_bid_price : float prop;
  name : string prop;
  platform_fault_domain_count : float prop;
  priority : string prop;
  proximity_placement_group_id : string prop;
  resource_group_name : string prop;
  single_placement_group : bool prop;
  sku_name : string prop;
  source_image_id : string prop;
  tags : (string * string) list prop;
  unique_id : string prop;
  user_data_base64 : string prop;
  zone_balance : bool prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?capacity_reservation_group_id:string prop ->
  ?encryption_at_host_enabled:bool prop ->
  ?eviction_policy:string prop ->
  ?extension_operations_enabled:bool prop ->
  ?extensions_time_budget:string prop ->
  ?id:string prop ->
  ?instances:float prop ->
  ?license_type:string prop ->
  ?max_bid_price:float prop ->
  ?priority:string prop ->
  ?proximity_placement_group_id:string prop ->
  ?single_placement_group:bool prop ->
  ?sku_name:string prop ->
  ?source_image_id:string prop ->
  ?tags:(string * string prop) list ->
  ?user_data_base64:string prop ->
  ?zone_balance:bool prop ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  platform_fault_domain_count:float prop ->
  resource_group_name:string prop ->
  additional_capabilities:additional_capabilities list ->
  automatic_instance_repair:automatic_instance_repair list ->
  boot_diagnostics:boot_diagnostics list ->
  data_disk:data_disk list ->
  extension:extension list ->
  identity:identity list ->
  network_interface:network_interface list ->
  os_disk:os_disk list ->
  os_profile:os_profile list ->
  plan:plan list ->
  priority_mix:priority_mix list ->
  source_image_reference:source_image_reference list ->
  termination_notification:termination_notification list ->
  string ->
  t

val make :
  ?capacity_reservation_group_id:string prop ->
  ?encryption_at_host_enabled:bool prop ->
  ?eviction_policy:string prop ->
  ?extension_operations_enabled:bool prop ->
  ?extensions_time_budget:string prop ->
  ?id:string prop ->
  ?instances:float prop ->
  ?license_type:string prop ->
  ?max_bid_price:float prop ->
  ?priority:string prop ->
  ?proximity_placement_group_id:string prop ->
  ?single_placement_group:bool prop ->
  ?sku_name:string prop ->
  ?source_image_id:string prop ->
  ?tags:(string * string prop) list ->
  ?user_data_base64:string prop ->
  ?zone_balance:bool prop ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  platform_fault_domain_count:float prop ->
  resource_group_name:string prop ->
  additional_capabilities:additional_capabilities list ->
  automatic_instance_repair:automatic_instance_repair list ->
  boot_diagnostics:boot_diagnostics list ->
  data_disk:data_disk list ->
  extension:extension list ->
  identity:identity list ->
  network_interface:network_interface list ->
  os_disk:os_disk list ->
  os_profile:os_profile list ->
  plan:plan list ->
  priority_mix:priority_mix list ->
  source_image_reference:source_image_reference list ->
  termination_notification:termination_notification list ->
  string ->
  t Tf_core.resource
