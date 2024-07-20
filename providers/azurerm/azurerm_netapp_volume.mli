(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_protection_replication

val data_protection_replication :
  ?endpoint_type:string prop ->
  remote_volume_location:string prop ->
  remote_volume_resource_id:string prop ->
  replication_frequency:string prop ->
  unit ->
  data_protection_replication

type data_protection_snapshot_policy

val data_protection_snapshot_policy :
  snapshot_policy_id:string prop ->
  unit ->
  data_protection_snapshot_policy

type export_policy_rule

val export_policy_rule :
  ?kerberos_5_read_only_enabled:bool prop ->
  ?kerberos_5_read_write_enabled:bool prop ->
  ?kerberos_5i_read_only_enabled:bool prop ->
  ?kerberos_5i_read_write_enabled:bool prop ->
  ?kerberos_5p_read_only_enabled:bool prop ->
  ?kerberos_5p_read_write_enabled:bool prop ->
  ?protocols_enabled:string prop list ->
  ?root_access_enabled:bool prop ->
  ?unix_read_only:bool prop ->
  ?unix_read_write:bool prop ->
  allowed_clients:string prop list ->
  rule_index:float prop ->
  unit ->
  export_policy_rule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_netapp_volume

val azurerm_netapp_volume :
  ?azure_vmware_data_store_enabled:bool prop ->
  ?create_from_snapshot_resource_id:string prop ->
  ?encryption_key_source:string prop ->
  ?id:string prop ->
  ?kerberos_enabled:bool prop ->
  ?key_vault_private_endpoint_id:string prop ->
  ?network_features:string prop ->
  ?protocols:string prop list ->
  ?security_style:string prop ->
  ?smb_access_based_enumeration_enabled:bool prop ->
  ?smb_continuous_availability_enabled:bool prop ->
  ?smb_non_browsable_enabled:bool prop ->
  ?snapshot_directory_visible:bool prop ->
  ?tags:(string * string prop) list ->
  ?throughput_in_mibps:float prop ->
  ?zone:string prop ->
  ?data_protection_replication:data_protection_replication list ->
  ?data_protection_snapshot_policy:
    data_protection_snapshot_policy list ->
  ?export_policy_rule:export_policy_rule list ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  location:string prop ->
  name:string prop ->
  pool_name:string prop ->
  resource_group_name:string prop ->
  service_level:string prop ->
  storage_quota_in_gb:float prop ->
  subnet_id:string prop ->
  volume_path:string prop ->
  unit ->
  azurerm_netapp_volume

val yojson_of_azurerm_netapp_volume : azurerm_netapp_volume -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_name : string prop;
  azure_vmware_data_store_enabled : bool prop;
  create_from_snapshot_resource_id : string prop;
  encryption_key_source : string prop;
  id : string prop;
  kerberos_enabled : bool prop;
  key_vault_private_endpoint_id : string prop;
  location : string prop;
  mount_ip_addresses : string list prop;
  name : string prop;
  network_features : string prop;
  pool_name : string prop;
  protocols : string list prop;
  resource_group_name : string prop;
  security_style : string prop;
  service_level : string prop;
  smb_access_based_enumeration_enabled : bool prop;
  smb_continuous_availability_enabled : bool prop;
  smb_non_browsable_enabled : bool prop;
  snapshot_directory_visible : bool prop;
  storage_quota_in_gb : float prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  throughput_in_mibps : float prop;
  volume_path : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?azure_vmware_data_store_enabled:bool prop ->
  ?create_from_snapshot_resource_id:string prop ->
  ?encryption_key_source:string prop ->
  ?id:string prop ->
  ?kerberos_enabled:bool prop ->
  ?key_vault_private_endpoint_id:string prop ->
  ?network_features:string prop ->
  ?protocols:string prop list ->
  ?security_style:string prop ->
  ?smb_access_based_enumeration_enabled:bool prop ->
  ?smb_continuous_availability_enabled:bool prop ->
  ?smb_non_browsable_enabled:bool prop ->
  ?snapshot_directory_visible:bool prop ->
  ?tags:(string * string prop) list ->
  ?throughput_in_mibps:float prop ->
  ?zone:string prop ->
  ?data_protection_replication:data_protection_replication list ->
  ?data_protection_snapshot_policy:
    data_protection_snapshot_policy list ->
  ?export_policy_rule:export_policy_rule list ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  location:string prop ->
  name:string prop ->
  pool_name:string prop ->
  resource_group_name:string prop ->
  service_level:string prop ->
  storage_quota_in_gb:float prop ->
  subnet_id:string prop ->
  volume_path:string prop ->
  string ->
  t

val make :
  ?azure_vmware_data_store_enabled:bool prop ->
  ?create_from_snapshot_resource_id:string prop ->
  ?encryption_key_source:string prop ->
  ?id:string prop ->
  ?kerberos_enabled:bool prop ->
  ?key_vault_private_endpoint_id:string prop ->
  ?network_features:string prop ->
  ?protocols:string prop list ->
  ?security_style:string prop ->
  ?smb_access_based_enumeration_enabled:bool prop ->
  ?smb_continuous_availability_enabled:bool prop ->
  ?smb_non_browsable_enabled:bool prop ->
  ?snapshot_directory_visible:bool prop ->
  ?tags:(string * string prop) list ->
  ?throughput_in_mibps:float prop ->
  ?zone:string prop ->
  ?data_protection_replication:data_protection_replication list ->
  ?data_protection_snapshot_policy:
    data_protection_snapshot_policy list ->
  ?export_policy_rule:export_policy_rule list ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  location:string prop ->
  name:string prop ->
  pool_name:string prop ->
  resource_group_name:string prop ->
  service_level:string prop ->
  storage_quota_in_gb:float prop ->
  subnet_id:string prop ->
  volume_path:string prop ->
  string ->
  t Tf_core.resource
