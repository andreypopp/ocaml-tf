(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type boot_diagnostics

val boot_diagnostics :
  ?enabled:bool prop ->
  storage_uri:string prop ->
  unit ->
  boot_diagnostics

type extension

val extension :
  ?auto_upgrade_minor_version:bool prop ->
  ?protected_settings:string prop ->
  ?provision_after_extensions:string prop list ->
  ?settings:string prop ->
  name:string prop ->
  publisher:string prop ->
  type_:string prop ->
  type_handler_version:string prop ->
  unit ->
  extension

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type network_profile__dns_settings

val network_profile__dns_settings :
  dns_servers:string prop list ->
  unit ->
  network_profile__dns_settings

type network_profile__ip_configuration__public_ip_address_configuration

val network_profile__ip_configuration__public_ip_address_configuration :
  domain_name_label:string prop ->
  idle_timeout:float prop ->
  name:string prop ->
  unit ->
  network_profile__ip_configuration__public_ip_address_configuration

type network_profile__ip_configuration

val network_profile__ip_configuration :
  ?application_gateway_backend_address_pool_ids:string prop list ->
  ?application_security_group_ids:string prop list ->
  ?load_balancer_backend_address_pool_ids:string prop list ->
  ?load_balancer_inbound_nat_rules_ids:string prop list ->
  name:string prop ->
  primary:bool prop ->
  subnet_id:string prop ->
  public_ip_address_configuration:
    network_profile__ip_configuration__public_ip_address_configuration
    list ->
  unit ->
  network_profile__ip_configuration

type network_profile

val network_profile :
  ?accelerated_networking:bool prop ->
  ?ip_forwarding:bool prop ->
  ?network_security_group_id:string prop ->
  name:string prop ->
  primary:bool prop ->
  dns_settings:network_profile__dns_settings list ->
  ip_configuration:network_profile__ip_configuration list ->
  unit ->
  network_profile

type os_profile

val os_profile :
  ?admin_password:string prop ->
  ?custom_data:string prop ->
  admin_username:string prop ->
  computer_name_prefix:string prop ->
  unit ->
  os_profile

type os_profile_linux_config__ssh_keys

val os_profile_linux_config__ssh_keys :
  ?key_data:string prop ->
  path:string prop ->
  unit ->
  os_profile_linux_config__ssh_keys

type os_profile_linux_config

val os_profile_linux_config :
  ?disable_password_authentication:bool prop ->
  ssh_keys:os_profile_linux_config__ssh_keys list ->
  unit ->
  os_profile_linux_config

type os_profile_secrets__vault_certificates

val os_profile_secrets__vault_certificates :
  ?certificate_store:string prop ->
  certificate_url:string prop ->
  unit ->
  os_profile_secrets__vault_certificates

type os_profile_secrets

val os_profile_secrets :
  source_vault_id:string prop ->
  vault_certificates:os_profile_secrets__vault_certificates list ->
  unit ->
  os_profile_secrets

type os_profile_windows_config__additional_unattend_config

val os_profile_windows_config__additional_unattend_config :
  component:string prop ->
  content:string prop ->
  pass:string prop ->
  setting_name:string prop ->
  unit ->
  os_profile_windows_config__additional_unattend_config

type os_profile_windows_config__winrm

val os_profile_windows_config__winrm :
  ?certificate_url:string prop ->
  protocol:string prop ->
  unit ->
  os_profile_windows_config__winrm

type os_profile_windows_config

val os_profile_windows_config :
  ?enable_automatic_upgrades:bool prop ->
  ?provision_vm_agent:bool prop ->
  additional_unattend_config:
    os_profile_windows_config__additional_unattend_config list ->
  winrm:os_profile_windows_config__winrm list ->
  unit ->
  os_profile_windows_config

type plan

val plan :
  name:string prop ->
  product:string prop ->
  publisher:string prop ->
  unit ->
  plan

type rolling_upgrade_policy

val rolling_upgrade_policy :
  ?max_batch_instance_percent:float prop ->
  ?max_unhealthy_instance_percent:float prop ->
  ?max_unhealthy_upgraded_instance_percent:float prop ->
  ?pause_time_between_batches:string prop ->
  unit ->
  rolling_upgrade_policy

type sku

val sku :
  ?tier:string prop ->
  capacity:float prop ->
  name:string prop ->
  unit ->
  sku

type storage_profile_data_disk

val storage_profile_data_disk :
  ?caching:string prop ->
  ?disk_size_gb:float prop ->
  ?managed_disk_type:string prop ->
  create_option:string prop ->
  lun:float prop ->
  unit ->
  storage_profile_data_disk

type storage_profile_image_reference

val storage_profile_image_reference :
  ?id:string prop ->
  ?offer:string prop ->
  ?publisher:string prop ->
  ?sku:string prop ->
  ?version:string prop ->
  unit ->
  storage_profile_image_reference

type storage_profile_os_disk

val storage_profile_os_disk :
  ?caching:string prop ->
  ?image:string prop ->
  ?managed_disk_type:string prop ->
  ?name:string prop ->
  ?os_type:string prop ->
  ?vhd_containers:string prop list ->
  create_option:string prop ->
  unit ->
  storage_profile_os_disk

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_virtual_machine_scale_set

val azurerm_virtual_machine_scale_set :
  ?automatic_os_upgrade:bool prop ->
  ?eviction_policy:string prop ->
  ?health_probe_id:string prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?overprovision:bool prop ->
  ?priority:string prop ->
  ?proximity_placement_group_id:string prop ->
  ?single_placement_group:bool prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  upgrade_policy_mode:string prop ->
  boot_diagnostics:boot_diagnostics list ->
  extension:extension list ->
  identity:identity list ->
  network_profile:network_profile list ->
  os_profile:os_profile list ->
  os_profile_linux_config:os_profile_linux_config list ->
  os_profile_secrets:os_profile_secrets list ->
  os_profile_windows_config:os_profile_windows_config list ->
  plan:plan list ->
  rolling_upgrade_policy:rolling_upgrade_policy list ->
  sku:sku list ->
  storage_profile_data_disk:storage_profile_data_disk list ->
  storage_profile_image_reference:
    storage_profile_image_reference list ->
  storage_profile_os_disk:storage_profile_os_disk list ->
  unit ->
  azurerm_virtual_machine_scale_set

val yojson_of_azurerm_virtual_machine_scale_set :
  azurerm_virtual_machine_scale_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  automatic_os_upgrade : bool prop;
  eviction_policy : string prop;
  health_probe_id : string prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  name : string prop;
  overprovision : bool prop;
  priority : string prop;
  proximity_placement_group_id : string prop;
  resource_group_name : string prop;
  single_placement_group : bool prop;
  tags : (string * string) list prop;
  upgrade_policy_mode : string prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?automatic_os_upgrade:bool prop ->
  ?eviction_policy:string prop ->
  ?health_probe_id:string prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?overprovision:bool prop ->
  ?priority:string prop ->
  ?proximity_placement_group_id:string prop ->
  ?single_placement_group:bool prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  upgrade_policy_mode:string prop ->
  boot_diagnostics:boot_diagnostics list ->
  extension:extension list ->
  identity:identity list ->
  network_profile:network_profile list ->
  os_profile:os_profile list ->
  os_profile_linux_config:os_profile_linux_config list ->
  os_profile_secrets:os_profile_secrets list ->
  os_profile_windows_config:os_profile_windows_config list ->
  plan:plan list ->
  rolling_upgrade_policy:rolling_upgrade_policy list ->
  sku:sku list ->
  storage_profile_data_disk:storage_profile_data_disk list ->
  storage_profile_image_reference:
    storage_profile_image_reference list ->
  storage_profile_os_disk:storage_profile_os_disk list ->
  string ->
  t
