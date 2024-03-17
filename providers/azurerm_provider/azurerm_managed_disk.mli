(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_managed_disk__encryption_settings__disk_encryption_key
type azurerm_managed_disk__encryption_settings__key_encryption_key
type azurerm_managed_disk__encryption_settings
type azurerm_managed_disk__timeouts
type azurerm_managed_disk

val azurerm_managed_disk :
  ?disk_access_id:string ->
  ?disk_encryption_set_id:string ->
  ?disk_iops_read_only:float ->
  ?disk_iops_read_write:float ->
  ?disk_mbps_read_only:float ->
  ?disk_mbps_read_write:float ->
  ?disk_size_gb:float ->
  ?edge_zone:string ->
  ?gallery_image_reference_id:string ->
  ?hyper_v_generation:string ->
  ?id:string ->
  ?image_reference_id:string ->
  ?logical_sector_size:float ->
  ?max_shares:float ->
  ?network_access_policy:string ->
  ?on_demand_bursting_enabled:bool ->
  ?optimized_frequent_attach_enabled:bool ->
  ?os_type:string ->
  ?performance_plus_enabled:bool ->
  ?public_network_access_enabled:bool ->
  ?secure_vm_disk_encryption_set_id:string ->
  ?security_type:string ->
  ?source_resource_id:string ->
  ?source_uri:string ->
  ?storage_account_id:string ->
  ?tags:(string * string) list ->
  ?tier:string ->
  ?trusted_launch_enabled:bool ->
  ?upload_size_bytes:float ->
  ?zone:string ->
  ?timeouts:azurerm_managed_disk__timeouts ->
  create_option:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  storage_account_type:string ->
  encryption_settings:azurerm_managed_disk__encryption_settings list ->
  string ->
  unit
