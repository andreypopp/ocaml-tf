(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_netapp_volume__data_protection_replication
type azurerm_netapp_volume__data_protection_snapshot_policy
type azurerm_netapp_volume__export_policy_rule
type azurerm_netapp_volume__timeouts
type azurerm_netapp_volume

val azurerm_netapp_volume :
  ?azure_vmware_data_store_enabled:bool ->
  ?create_from_snapshot_resource_id:string ->
  ?encryption_key_source:string ->
  ?id:string ->
  ?key_vault_private_endpoint_id:string ->
  ?network_features:string ->
  ?protocols:string list ->
  ?security_style:string ->
  ?smb_access_based_enumeration_enabled:bool ->
  ?smb_non_browsable_enabled:bool ->
  ?snapshot_directory_visible:bool ->
  ?tags:(string * string) list ->
  ?throughput_in_mibps:float ->
  ?zone:string ->
  ?timeouts:azurerm_netapp_volume__timeouts ->
  account_name:string ->
  location:string ->
  name:string ->
  pool_name:string ->
  resource_group_name:string ->
  service_level:string ->
  storage_quota_in_gb:float ->
  subnet_id:string ->
  volume_path:string ->
  data_protection_replication:
    azurerm_netapp_volume__data_protection_replication list ->
  data_protection_snapshot_policy:
    azurerm_netapp_volume__data_protection_snapshot_policy list ->
  export_policy_rule:azurerm_netapp_volume__export_policy_rule list ->
  string ->
  unit
