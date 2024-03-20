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

type boot_diagnostics

val boot_diagnostics :
  ?storage_account_uri:string prop -> unit -> boot_diagnostics

type gallery_application

val gallery_application :
  ?automatic_upgrade_enabled:bool prop ->
  ?configuration_blob_uri:string prop ->
  ?order:float prop ->
  ?tag:string prop ->
  ?treat_failure_as_deployment_failure_enabled:bool prop ->
  version_id:string prop ->
  unit ->
  gallery_application

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

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
  ?name:string prop ->
  ?secure_vm_disk_encryption_set_id:string prop ->
  ?security_encryption_type:string prop ->
  ?write_accelerator_enabled:bool prop ->
  caching:string prop ->
  storage_account_type:string prop ->
  diff_disk_settings:os_disk__diff_disk_settings list ->
  unit ->
  os_disk

type os_image_notification

val os_image_notification :
  ?timeout:string prop -> unit -> os_image_notification

type plan

val plan :
  name:string prop ->
  product:string prop ->
  publisher:string prop ->
  unit ->
  plan

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

type azurerm_windows_virtual_machine

val azurerm_windows_virtual_machine :
  ?allow_extension_operations:bool prop ->
  ?availability_set_id:string prop ->
  ?bypass_platform_safety_checks_on_user_schedule_enabled:bool prop ->
  ?capacity_reservation_group_id:string prop ->
  ?computer_name:string prop ->
  ?custom_data:string prop ->
  ?dedicated_host_group_id:string prop ->
  ?dedicated_host_id:string prop ->
  ?disk_controller_type:string prop ->
  ?edge_zone:string prop ->
  ?enable_automatic_updates:bool prop ->
  ?encryption_at_host_enabled:bool prop ->
  ?eviction_policy:string prop ->
  ?extensions_time_budget:string prop ->
  ?hotpatching_enabled:bool prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?max_bid_price:float prop ->
  ?patch_assessment_mode:string prop ->
  ?patch_mode:string prop ->
  ?platform_fault_domain:float prop ->
  ?priority:string prop ->
  ?provision_vm_agent:bool prop ->
  ?proximity_placement_group_id:string prop ->
  ?reboot_setting:string prop ->
  ?secure_boot_enabled:bool prop ->
  ?source_image_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timezone:string prop ->
  ?user_data:string prop ->
  ?virtual_machine_scale_set_id:string prop ->
  ?vm_agent_platform_updates_enabled:bool prop ->
  ?vtpm_enabled:bool prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  admin_password:string prop ->
  admin_username:string prop ->
  location:string prop ->
  name:string prop ->
  network_interface_ids:string prop list ->
  resource_group_name:string prop ->
  size:string prop ->
  additional_capabilities:additional_capabilities list ->
  additional_unattend_content:additional_unattend_content list ->
  boot_diagnostics:boot_diagnostics list ->
  gallery_application:gallery_application list ->
  identity:identity list ->
  os_disk:os_disk list ->
  os_image_notification:os_image_notification list ->
  plan:plan list ->
  secret:secret list ->
  source_image_reference:source_image_reference list ->
  termination_notification:termination_notification list ->
  winrm_listener:winrm_listener list ->
  unit ->
  azurerm_windows_virtual_machine

val yojson_of_azurerm_windows_virtual_machine :
  azurerm_windows_virtual_machine -> json

(** RESOURCE REGISTRATION *)

type t = private {
  admin_password : string prop;
  admin_username : string prop;
  allow_extension_operations : bool prop;
  availability_set_id : string prop;
  bypass_platform_safety_checks_on_user_schedule_enabled : bool prop;
  capacity_reservation_group_id : string prop;
  computer_name : string prop;
  custom_data : string prop;
  dedicated_host_group_id : string prop;
  dedicated_host_id : string prop;
  disk_controller_type : string prop;
  edge_zone : string prop;
  enable_automatic_updates : bool prop;
  encryption_at_host_enabled : bool prop;
  eviction_policy : string prop;
  extensions_time_budget : string prop;
  hotpatching_enabled : bool prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  max_bid_price : float prop;
  name : string prop;
  network_interface_ids : string list prop;
  patch_assessment_mode : string prop;
  patch_mode : string prop;
  platform_fault_domain : float prop;
  priority : string prop;
  private_ip_address : string prop;
  private_ip_addresses : string list prop;
  provision_vm_agent : bool prop;
  proximity_placement_group_id : string prop;
  public_ip_address : string prop;
  public_ip_addresses : string list prop;
  reboot_setting : string prop;
  resource_group_name : string prop;
  secure_boot_enabled : bool prop;
  size : string prop;
  source_image_id : string prop;
  tags : (string * string) list prop;
  timezone : string prop;
  user_data : string prop;
  virtual_machine_id : string prop;
  virtual_machine_scale_set_id : string prop;
  vm_agent_platform_updates_enabled : bool prop;
  vtpm_enabled : bool prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_extension_operations:bool prop ->
  ?availability_set_id:string prop ->
  ?bypass_platform_safety_checks_on_user_schedule_enabled:bool prop ->
  ?capacity_reservation_group_id:string prop ->
  ?computer_name:string prop ->
  ?custom_data:string prop ->
  ?dedicated_host_group_id:string prop ->
  ?dedicated_host_id:string prop ->
  ?disk_controller_type:string prop ->
  ?edge_zone:string prop ->
  ?enable_automatic_updates:bool prop ->
  ?encryption_at_host_enabled:bool prop ->
  ?eviction_policy:string prop ->
  ?extensions_time_budget:string prop ->
  ?hotpatching_enabled:bool prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?max_bid_price:float prop ->
  ?patch_assessment_mode:string prop ->
  ?patch_mode:string prop ->
  ?platform_fault_domain:float prop ->
  ?priority:string prop ->
  ?provision_vm_agent:bool prop ->
  ?proximity_placement_group_id:string prop ->
  ?reboot_setting:string prop ->
  ?secure_boot_enabled:bool prop ->
  ?source_image_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timezone:string prop ->
  ?user_data:string prop ->
  ?virtual_machine_scale_set_id:string prop ->
  ?vm_agent_platform_updates_enabled:bool prop ->
  ?vtpm_enabled:bool prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  admin_password:string prop ->
  admin_username:string prop ->
  location:string prop ->
  name:string prop ->
  network_interface_ids:string prop list ->
  resource_group_name:string prop ->
  size:string prop ->
  additional_capabilities:additional_capabilities list ->
  additional_unattend_content:additional_unattend_content list ->
  boot_diagnostics:boot_diagnostics list ->
  gallery_application:gallery_application list ->
  identity:identity list ->
  os_disk:os_disk list ->
  os_image_notification:os_image_notification list ->
  plan:plan list ->
  secret:secret list ->
  source_image_reference:source_image_reference list ->
  termination_notification:termination_notification list ->
  winrm_listener:winrm_listener list ->
  string ->
  t

val make :
  ?allow_extension_operations:bool prop ->
  ?availability_set_id:string prop ->
  ?bypass_platform_safety_checks_on_user_schedule_enabled:bool prop ->
  ?capacity_reservation_group_id:string prop ->
  ?computer_name:string prop ->
  ?custom_data:string prop ->
  ?dedicated_host_group_id:string prop ->
  ?dedicated_host_id:string prop ->
  ?disk_controller_type:string prop ->
  ?edge_zone:string prop ->
  ?enable_automatic_updates:bool prop ->
  ?encryption_at_host_enabled:bool prop ->
  ?eviction_policy:string prop ->
  ?extensions_time_budget:string prop ->
  ?hotpatching_enabled:bool prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?max_bid_price:float prop ->
  ?patch_assessment_mode:string prop ->
  ?patch_mode:string prop ->
  ?platform_fault_domain:float prop ->
  ?priority:string prop ->
  ?provision_vm_agent:bool prop ->
  ?proximity_placement_group_id:string prop ->
  ?reboot_setting:string prop ->
  ?secure_boot_enabled:bool prop ->
  ?source_image_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timezone:string prop ->
  ?user_data:string prop ->
  ?virtual_machine_scale_set_id:string prop ->
  ?vm_agent_platform_updates_enabled:bool prop ->
  ?vtpm_enabled:bool prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  admin_password:string prop ->
  admin_username:string prop ->
  location:string prop ->
  name:string prop ->
  network_interface_ids:string prop list ->
  resource_group_name:string prop ->
  size:string prop ->
  additional_capabilities:additional_capabilities list ->
  additional_unattend_content:additional_unattend_content list ->
  boot_diagnostics:boot_diagnostics list ->
  gallery_application:gallery_application list ->
  identity:identity list ->
  os_disk:os_disk list ->
  os_image_notification:os_image_notification list ->
  plan:plan list ->
  secret:secret list ->
  source_image_reference:source_image_reference list ->
  termination_notification:termination_notification list ->
  winrm_listener:winrm_listener list ->
  string ->
  t Tf_core.resource
