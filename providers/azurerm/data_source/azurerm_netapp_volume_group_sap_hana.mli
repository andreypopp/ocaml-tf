(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type volume__export_policy_rule = {
  allowed_clients : string prop;  (** allowed_clients *)
  nfsv3_enabled : bool prop;  (** nfsv3_enabled *)
  nfsv41_enabled : bool prop;  (** nfsv41_enabled *)
  root_access_enabled : bool prop;  (** root_access_enabled *)
  rule_index : float prop;  (** rule_index *)
  unix_read_only : bool prop;  (** unix_read_only *)
  unix_read_write : bool prop;  (** unix_read_write *)
}

type volume__data_protection_snapshot_policy = {
  snapshot_policy_id : string prop;  (** snapshot_policy_id *)
}

type volume__data_protection_replication = {
  endpoint_type : string prop;  (** endpoint_type *)
  remote_volume_location : string prop;
      (** remote_volume_location *)
  remote_volume_resource_id : string prop;
      (** remote_volume_resource_id *)
  replication_frequency : string prop;  (** replication_frequency *)
}

type volume = {
  capacity_pool_id : string prop;  (** capacity_pool_id *)
  data_protection_replication :
    volume__data_protection_replication list;
      (** data_protection_replication *)
  data_protection_snapshot_policy :
    volume__data_protection_snapshot_policy list;
      (** data_protection_snapshot_policy *)
  export_policy_rule : volume__export_policy_rule list;
      (** export_policy_rule *)
  id : string prop;  (** id *)
  mount_ip_addresses : string prop list;  (** mount_ip_addresses *)
  name : string prop;  (** name *)
  protocols : string prop list;  (** protocols *)
  proximity_placement_group_id : string prop;
      (** proximity_placement_group_id *)
  security_style : string prop;  (** security_style *)
  service_level : string prop;  (** service_level *)
  snapshot_directory_visible : bool prop;
      (** snapshot_directory_visible *)
  storage_quota_in_gb : float prop;  (** storage_quota_in_gb *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list;  (** tags *)
  throughput_in_mibps : float prop;  (** throughput_in_mibps *)
  volume_path : string prop;  (** volume_path *)
  volume_spec_name : string prop;  (** volume_spec_name *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_netapp_volume_group_sap_hana

val azurerm_netapp_volume_group_sap_hana :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_netapp_volume_group_sap_hana

val yojson_of_azurerm_netapp_volume_group_sap_hana :
  azurerm_netapp_volume_group_sap_hana -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_name : string prop;
  application_identifier : string prop;
  group_description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  volume : volume list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
