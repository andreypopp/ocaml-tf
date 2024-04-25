(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type additional_capabilities

val additional_capabilities :
  ?ultra_ssd_enabled:bool prop -> unit -> additional_capabilities

type additional_unattend_content

val additional_unattend_content :
  content:string prop ->
  setting:string prop ->
  unit ->
  additional_unattend_content

type automatic_instance_repair

val automatic_instance_repair :
  ?grace_period:string prop ->
  enabled:bool prop ->
  unit ->
  automatic_instance_repair

type automatic_os_upgrade_policy

val automatic_os_upgrade_policy :
  disable_automatic_rollback:bool prop ->
  enable_automatic_os_upgrade:bool prop ->
  unit ->
  automatic_os_upgrade_policy

type boot_diagnostics

val boot_diagnostics :
  ?storage_account_uri:string prop -> unit -> boot_diagnostics

type data_disk

val data_disk :
  ?create_option:string prop ->
  ?disk_encryption_set_id:string prop ->
  ?name:string prop ->
  ?ultra_ssd_disk_iops_read_write:float prop ->
  ?ultra_ssd_disk_mbps_read_write:float prop ->
  ?write_accelerator_enabled:bool prop ->
  caching:string prop ->
  disk_size_gb:float prop ->
  lun:float prop ->
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
  ?auto_upgrade_minor_version:bool prop ->
  ?automatic_upgrade_enabled:bool prop ->
  ?force_update_tag:string prop ->
  ?protected_settings:string prop ->
  ?provision_after_extensions:string prop list ->
  ?settings:string prop ->
  ?protected_settings_from_key_vault:
    extension__protected_settings_from_key_vault list ->
  name:string prop ->
  publisher:string prop ->
  type_:string prop ->
  type_handler_version:string prop ->
  unit ->
  extension

type gallery_application

val gallery_application :
  ?configuration_blob_uri:string prop ->
  ?order:float prop ->
  ?tag:string prop ->
  version_id:string prop ->
  unit ->
  gallery_application

type gallery_applications

val gallery_applications :
  ?configuration_reference_blob_uri:string prop ->
  ?order:float prop ->
  ?tag:string prop ->
  package_reference_id:string prop ->
  unit ->
  gallery_applications

type identity

val identity :
  ?identity_ids:string prop list ->
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
  ?version:string prop ->
  ?ip_tag:
    network_interface__ip_configuration__public_ip_address__ip_tag
    list ->
  name:string prop ->
  unit ->
  network_interface__ip_configuration__public_ip_address

type network_interface__ip_configuration

val network_interface__ip_configuration :
  ?application_gateway_backend_address_pool_ids:string prop list ->
  ?application_security_group_ids:string prop list ->
  ?load_balancer_backend_address_pool_ids:string prop list ->
  ?load_balancer_inbound_nat_rules_ids:string prop list ->
  ?primary:bool prop ->
  ?subnet_id:string prop ->
  ?version:string prop ->
  ?public_ip_address:
    network_interface__ip_configuration__public_ip_address list ->
  name:string prop ->
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
  ?secure_vm_disk_encryption_set_id:string prop ->
  ?security_encryption_type:string prop ->
  ?write_accelerator_enabled:bool prop ->
  ?diff_disk_settings:os_disk__diff_disk_settings list ->
  caching:string prop ->
  storage_account_type:string prop ->
  unit ->
  os_disk

type plan

val plan :
  name:string prop ->
  product:string prop ->
  publisher:string prop ->
  unit ->
  plan

type rolling_upgrade_policy

val rolling_upgrade_policy :
  ?cross_zone_upgrades_enabled:bool prop ->
  ?prioritize_unhealthy_instances_enabled:bool prop ->
  max_batch_instance_percent:float prop ->
  max_unhealthy_instance_percent:float prop ->
  max_unhealthy_upgraded_instance_percent:float prop ->
  pause_time_between_batches:string prop ->
  unit ->
  rolling_upgrade_policy

type scale_in

val scale_in :
  ?force_deletion_enabled:bool prop ->
  ?rule:string prop ->
  unit ->
  scale_in

type secret__certificate

val secret__certificate :
  store:string prop -> url:string prop -> unit -> secret__certificate

type secret

val secret :
  key_vault_id:string prop ->
  certificate:secret__certificate list ->
  unit ->
  secret

type source_image_reference

val source_image_reference :
  offer:string prop ->
  publisher:string prop ->
  sku:string prop ->
  version:string prop ->
  unit ->
  source_image_reference

type spot_restore

val spot_restore :
  ?enabled:bool prop -> ?timeout:string prop -> unit -> spot_restore

type terminate_notification

val terminate_notification :
  ?timeout:string prop ->
  enabled:bool prop ->
  unit ->
  terminate_notification

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

type winrm_listener

val winrm_listener :
  ?certificate_url:string prop ->
  protocol:string prop ->
  unit ->
  winrm_listener

type azurerm_windows_virtual_machine_scale_set

val azurerm_windows_virtual_machine_scale_set :
  ?capacity_reservation_group_id:string prop ->
  ?computer_name_prefix:string prop ->
  ?custom_data:string prop ->
  ?do_not_run_extensions_on_overprovisioned_machines:bool prop ->
  ?edge_zone:string prop ->
  ?enable_automatic_updates:bool prop ->
  ?encryption_at_host_enabled:bool prop ->
  ?eviction_policy:string prop ->
  ?extension_operations_enabled:bool prop ->
  ?extensions_time_budget:string prop ->
  ?health_probe_id:string prop ->
  ?host_group_id:string prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?max_bid_price:float prop ->
  ?overprovision:bool prop ->
  ?platform_fault_domain_count:float prop ->
  ?priority:string prop ->
  ?provision_vm_agent:bool prop ->
  ?proximity_placement_group_id:string prop ->
  ?scale_in_policy:string prop ->
  ?secure_boot_enabled:bool prop ->
  ?single_placement_group:bool prop ->
  ?source_image_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timezone:string prop ->
  ?upgrade_mode:string prop ->
  ?user_data:string prop ->
  ?vtpm_enabled:bool prop ->
  ?zone_balance:bool prop ->
  ?zones:string prop list ->
  ?additional_capabilities:additional_capabilities list ->
  ?additional_unattend_content:additional_unattend_content list ->
  ?automatic_instance_repair:automatic_instance_repair list ->
  ?automatic_os_upgrade_policy:automatic_os_upgrade_policy list ->
  ?boot_diagnostics:boot_diagnostics list ->
  ?data_disk:data_disk list ->
  ?gallery_application:gallery_application list ->
  ?gallery_applications:gallery_applications list ->
  ?identity:identity list ->
  ?plan:plan list ->
  ?rolling_upgrade_policy:rolling_upgrade_policy list ->
  ?scale_in:scale_in list ->
  ?secret:secret list ->
  ?source_image_reference:source_image_reference list ->
  ?spot_restore:spot_restore list ->
  ?terminate_notification:terminate_notification list ->
  ?termination_notification:termination_notification list ->
  ?timeouts:timeouts ->
  admin_password:string prop ->
  admin_username:string prop ->
  instances:float prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  extension:extension list ->
  network_interface:network_interface list ->
  os_disk:os_disk list ->
  winrm_listener:winrm_listener list ->
  unit ->
  azurerm_windows_virtual_machine_scale_set

val yojson_of_azurerm_windows_virtual_machine_scale_set :
  azurerm_windows_virtual_machine_scale_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  admin_password : string prop;
  admin_username : string prop;
  capacity_reservation_group_id : string prop;
  computer_name_prefix : string prop;
  custom_data : string prop;
  do_not_run_extensions_on_overprovisioned_machines : bool prop;
  edge_zone : string prop;
  enable_automatic_updates : bool prop;
  encryption_at_host_enabled : bool prop;
  eviction_policy : string prop;
  extension_operations_enabled : bool prop;
  extensions_time_budget : string prop;
  health_probe_id : string prop;
  host_group_id : string prop;
  id : string prop;
  instances : float prop;
  license_type : string prop;
  location : string prop;
  max_bid_price : float prop;
  name : string prop;
  overprovision : bool prop;
  platform_fault_domain_count : float prop;
  priority : string prop;
  provision_vm_agent : bool prop;
  proximity_placement_group_id : string prop;
  resource_group_name : string prop;
  scale_in_policy : string prop;
  secure_boot_enabled : bool prop;
  single_placement_group : bool prop;
  sku : string prop;
  source_image_id : string prop;
  tags : (string * string) list prop;
  timezone : string prop;
  unique_id : string prop;
  upgrade_mode : string prop;
  user_data : string prop;
  vtpm_enabled : bool prop;
  zone_balance : bool prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?capacity_reservation_group_id:string prop ->
  ?computer_name_prefix:string prop ->
  ?custom_data:string prop ->
  ?do_not_run_extensions_on_overprovisioned_machines:bool prop ->
  ?edge_zone:string prop ->
  ?enable_automatic_updates:bool prop ->
  ?encryption_at_host_enabled:bool prop ->
  ?eviction_policy:string prop ->
  ?extension_operations_enabled:bool prop ->
  ?extensions_time_budget:string prop ->
  ?health_probe_id:string prop ->
  ?host_group_id:string prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?max_bid_price:float prop ->
  ?overprovision:bool prop ->
  ?platform_fault_domain_count:float prop ->
  ?priority:string prop ->
  ?provision_vm_agent:bool prop ->
  ?proximity_placement_group_id:string prop ->
  ?scale_in_policy:string prop ->
  ?secure_boot_enabled:bool prop ->
  ?single_placement_group:bool prop ->
  ?source_image_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timezone:string prop ->
  ?upgrade_mode:string prop ->
  ?user_data:string prop ->
  ?vtpm_enabled:bool prop ->
  ?zone_balance:bool prop ->
  ?zones:string prop list ->
  ?additional_capabilities:additional_capabilities list ->
  ?additional_unattend_content:additional_unattend_content list ->
  ?automatic_instance_repair:automatic_instance_repair list ->
  ?automatic_os_upgrade_policy:automatic_os_upgrade_policy list ->
  ?boot_diagnostics:boot_diagnostics list ->
  ?data_disk:data_disk list ->
  ?gallery_application:gallery_application list ->
  ?gallery_applications:gallery_applications list ->
  ?identity:identity list ->
  ?plan:plan list ->
  ?rolling_upgrade_policy:rolling_upgrade_policy list ->
  ?scale_in:scale_in list ->
  ?secret:secret list ->
  ?source_image_reference:source_image_reference list ->
  ?spot_restore:spot_restore list ->
  ?terminate_notification:terminate_notification list ->
  ?termination_notification:termination_notification list ->
  ?timeouts:timeouts ->
  admin_password:string prop ->
  admin_username:string prop ->
  instances:float prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  extension:extension list ->
  network_interface:network_interface list ->
  os_disk:os_disk list ->
  winrm_listener:winrm_listener list ->
  string ->
  t

val make :
  ?capacity_reservation_group_id:string prop ->
  ?computer_name_prefix:string prop ->
  ?custom_data:string prop ->
  ?do_not_run_extensions_on_overprovisioned_machines:bool prop ->
  ?edge_zone:string prop ->
  ?enable_automatic_updates:bool prop ->
  ?encryption_at_host_enabled:bool prop ->
  ?eviction_policy:string prop ->
  ?extension_operations_enabled:bool prop ->
  ?extensions_time_budget:string prop ->
  ?health_probe_id:string prop ->
  ?host_group_id:string prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?max_bid_price:float prop ->
  ?overprovision:bool prop ->
  ?platform_fault_domain_count:float prop ->
  ?priority:string prop ->
  ?provision_vm_agent:bool prop ->
  ?proximity_placement_group_id:string prop ->
  ?scale_in_policy:string prop ->
  ?secure_boot_enabled:bool prop ->
  ?single_placement_group:bool prop ->
  ?source_image_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timezone:string prop ->
  ?upgrade_mode:string prop ->
  ?user_data:string prop ->
  ?vtpm_enabled:bool prop ->
  ?zone_balance:bool prop ->
  ?zones:string prop list ->
  ?additional_capabilities:additional_capabilities list ->
  ?additional_unattend_content:additional_unattend_content list ->
  ?automatic_instance_repair:automatic_instance_repair list ->
  ?automatic_os_upgrade_policy:automatic_os_upgrade_policy list ->
  ?boot_diagnostics:boot_diagnostics list ->
  ?data_disk:data_disk list ->
  ?gallery_application:gallery_application list ->
  ?gallery_applications:gallery_applications list ->
  ?identity:identity list ->
  ?plan:plan list ->
  ?rolling_upgrade_policy:rolling_upgrade_policy list ->
  ?scale_in:scale_in list ->
  ?secret:secret list ->
  ?source_image_reference:source_image_reference list ->
  ?spot_restore:spot_restore list ->
  ?terminate_notification:terminate_notification list ->
  ?termination_notification:termination_notification list ->
  ?timeouts:timeouts ->
  admin_password:string prop ->
  admin_username:string prop ->
  instances:float prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  extension:extension list ->
  network_interface:network_interface list ->
  os_disk:os_disk list ->
  winrm_listener:winrm_listener list ->
  string ->
  t Tf_core.resource
