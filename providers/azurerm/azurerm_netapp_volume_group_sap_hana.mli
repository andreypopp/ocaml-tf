(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type volume__data_protection_replication

val volume__data_protection_replication :
  ?endpoint_type:string prop ->
  remote_volume_location:string prop ->
  remote_volume_resource_id:string prop ->
  replication_frequency:string prop ->
  unit ->
  volume__data_protection_replication

type volume__data_protection_snapshot_policy

val volume__data_protection_snapshot_policy :
  snapshot_policy_id:string prop ->
  unit ->
  volume__data_protection_snapshot_policy

type volume__export_policy_rule

val volume__export_policy_rule :
  ?root_access_enabled:bool prop ->
  ?unix_read_only:bool prop ->
  ?unix_read_write:bool prop ->
  allowed_clients:string prop ->
  nfsv3_enabled:bool prop ->
  nfsv41_enabled:bool prop ->
  rule_index:float prop ->
  unit ->
  volume__export_policy_rule

type volume

val volume :
  ?proximity_placement_group_id:string prop ->
  ?tags:(string * string prop) list ->
  capacity_pool_id:string prop ->
  name:string prop ->
  protocols:string prop list ->
  security_style:string prop ->
  service_level:string prop ->
  snapshot_directory_visible:bool prop ->
  storage_quota_in_gb:float prop ->
  subnet_id:string prop ->
  throughput_in_mibps:float prop ->
  volume_path:string prop ->
  volume_spec_name:string prop ->
  data_protection_replication:
    volume__data_protection_replication list ->
  data_protection_snapshot_policy:
    volume__data_protection_snapshot_policy list ->
  export_policy_rule:volume__export_policy_rule list ->
  unit ->
  volume

type azurerm_netapp_volume_group_sap_hana

val azurerm_netapp_volume_group_sap_hana :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  application_identifier:string prop ->
  group_description:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  volume:volume list ->
  unit ->
  azurerm_netapp_volume_group_sap_hana

val yojson_of_azurerm_netapp_volume_group_sap_hana :
  azurerm_netapp_volume_group_sap_hana -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_name : string prop;
  application_identifier : string prop;
  group_description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  application_identifier:string prop ->
  group_description:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  volume:volume list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  application_identifier:string prop ->
  group_description:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  volume:volume list ->
  string ->
  t Tf_core.resource
