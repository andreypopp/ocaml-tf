(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_protection_replication = {
  endpoint_type : string prop;  (** endpoint_type *)
  remote_volume_location : string prop;
      (** remote_volume_location *)
  remote_volume_resource_id : string prop;
      (** remote_volume_resource_id *)
  replication_frequency : string prop;  (** replication_frequency *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_netapp_volume

val azurerm_netapp_volume :
  ?id:string prop ->
  ?security_style:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  pool_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_netapp_volume

val yojson_of_azurerm_netapp_volume : azurerm_netapp_volume -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_name : string prop;
  data_protection_replication :
    data_protection_replication list prop;
  encryption_key_source : string prop;
  id : string prop;
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
  smb_non_browsable_enabled : bool prop;
  storage_quota_in_gb : float prop;
  subnet_id : string prop;
  volume_path : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?security_style:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  pool_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?security_style:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  pool_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
