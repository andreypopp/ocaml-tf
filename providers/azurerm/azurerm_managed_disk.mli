(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_settings__disk_encryption_key

val encryption_settings__disk_encryption_key :
  secret_url:string prop ->
  source_vault_id:string prop ->
  unit ->
  encryption_settings__disk_encryption_key

type encryption_settings__key_encryption_key

val encryption_settings__key_encryption_key :
  key_url:string prop ->
  source_vault_id:string prop ->
  unit ->
  encryption_settings__key_encryption_key

type encryption_settings

val encryption_settings :
  ?enabled:bool prop ->
  ?disk_encryption_key:encryption_settings__disk_encryption_key list ->
  ?key_encryption_key:encryption_settings__key_encryption_key list ->
  unit ->
  encryption_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?tags:string prop Tf_core.assoc ->
  ?tier:string prop ->
  ?trusted_launch_enabled:bool prop ->
  ?upload_size_bytes:float prop ->
  ?zone:string prop ->
  ?encryption_settings:encryption_settings list ->
  ?timeouts:timeouts ->
  create_option:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_type:string prop ->
  unit ->
  azurerm_managed_disk

val yojson_of_azurerm_managed_disk : azurerm_managed_disk -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_option : string prop;
  disk_access_id : string prop;
  disk_encryption_set_id : string prop;
  disk_iops_read_only : float prop;
  disk_iops_read_write : float prop;
  disk_mbps_read_only : float prop;
  disk_mbps_read_write : float prop;
  disk_size_gb : float prop;
  edge_zone : string prop;
  gallery_image_reference_id : string prop;
  hyper_v_generation : string prop;
  id : string prop;
  image_reference_id : string prop;
  location : string prop;
  logical_sector_size : float prop;
  max_shares : float prop;
  name : string prop;
  network_access_policy : string prop;
  on_demand_bursting_enabled : bool prop;
  optimized_frequent_attach_enabled : bool prop;
  os_type : string prop;
  performance_plus_enabled : bool prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  secure_vm_disk_encryption_set_id : string prop;
  security_type : string prop;
  source_resource_id : string prop;
  source_uri : string prop;
  storage_account_id : string prop;
  storage_account_type : string prop;
  tags : string Tf_core.assoc prop;
  tier : string prop;
  trusted_launch_enabled : bool prop;
  upload_size_bytes : float prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tier:string prop ->
  ?trusted_launch_enabled:bool prop ->
  ?upload_size_bytes:float prop ->
  ?zone:string prop ->
  ?encryption_settings:encryption_settings list ->
  ?timeouts:timeouts ->
  create_option:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_type:string prop ->
  string ->
  t

val make :
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
  ?tags:string prop Tf_core.assoc ->
  ?tier:string prop ->
  ?trusted_launch_enabled:bool prop ->
  ?upload_size_bytes:float prop ->
  ?zone:string prop ->
  ?encryption_settings:encryption_settings list ->
  ?timeouts:timeouts ->
  create_option:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_type:string prop ->
  string ->
  t Tf_core.resource
