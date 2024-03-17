(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_managed_disk__encryption_settings__disk_encryption_key
type azurerm_managed_disk__encryption_settings__key_encryption_key
type azurerm_managed_disk__encryption_settings
type azurerm_managed_disk__timeouts
type azurerm_managed_disk

val azurerm_managed_disk :
  ?disk_access_id:string prop ->
  ?disk_encryption_set_id:string prop ->
  ?disk_iops_read_only:float prop ->
  ?disk_iops_read_write:float prop ->
  ?disk_mbps_read_only:float prop ->
  ?disk_mbps_read_write:float prop ->
  ?disk_size_gb:float prop ->
  ?edge_zone:string prop ->
  ?gallery_image_reference_id:string prop ->
  ?hyper_v_generation:string prop ->
  ?id:string prop ->
  ?image_reference_id:string prop ->
  ?logical_sector_size:float prop ->
  ?max_shares:float prop ->
  ?network_access_policy:string prop ->
  ?on_demand_bursting_enabled:bool prop ->
  ?optimized_frequent_attach_enabled:bool prop ->
  ?os_type:string prop ->
  ?performance_plus_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?secure_vm_disk_encryption_set_id:string prop ->
  ?security_type:string prop ->
  ?source_resource_id:string prop ->
  ?source_uri:string prop ->
  ?storage_account_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tier:string prop ->
  ?trusted_launch_enabled:bool prop ->
  ?upload_size_bytes:float prop ->
  ?zone:string prop ->
  ?timeouts:azurerm_managed_disk__timeouts ->
  create_option:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_type:string prop ->
  encryption_settings:azurerm_managed_disk__encryption_settings list ->
  string ->
  unit
