(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_netapp_volume__data_protection_replication
type azurerm_netapp_volume__data_protection_snapshot_policy
type azurerm_netapp_volume__export_policy_rule
type azurerm_netapp_volume__timeouts
type azurerm_netapp_volume

val azurerm_netapp_volume :
  ?azure_vmware_data_store_enabled:bool prop ->
  ?create_from_snapshot_resource_id:string prop ->
  ?encryption_key_source:string prop ->
  ?id:string prop ->
  ?key_vault_private_endpoint_id:string prop ->
  ?network_features:string prop ->
  ?protocols:string prop list ->
  ?security_style:string prop ->
  ?smb_access_based_enumeration_enabled:bool prop ->
  ?smb_non_browsable_enabled:bool prop ->
  ?snapshot_directory_visible:bool prop ->
  ?tags:(string * string prop) list ->
  ?throughput_in_mibps:float prop ->
  ?zone:string prop ->
  ?timeouts:azurerm_netapp_volume__timeouts ->
  account_name:string prop ->
  location:string prop ->
  name:string prop ->
  pool_name:string prop ->
  resource_group_name:string prop ->
  service_level:string prop ->
  storage_quota_in_gb:float prop ->
  subnet_id:string prop ->
  volume_path:string prop ->
  data_protection_replication:
    azurerm_netapp_volume__data_protection_replication list ->
  data_protection_snapshot_policy:
    azurerm_netapp_volume__data_protection_snapshot_policy list ->
  export_policy_rule:azurerm_netapp_volume__export_policy_rule list ->
  string ->
  unit
