(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type managed_resources = {
  event_hub_namespace_id : string prop;
      (** event_hub_namespace_id *)
  resource_group_id : string prop;  (** resource_group_id *)
  storage_account_id : string prop;  (** storage_account_id *)
}

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_purview_account

val azurerm_purview_account :
  ?id:string prop ->
  ?managed_resource_group_name:string prop ->
  ?public_network_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  unit ->
  azurerm_purview_account

val yojson_of_azurerm_purview_account :
  azurerm_purview_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  atlas_kafka_endpoint_primary_connection_string : string prop;
  atlas_kafka_endpoint_secondary_connection_string : string prop;
  catalog_endpoint : string prop;
  guardian_endpoint : string prop;
  id : string prop;
  location : string prop;
  managed_resource_group_name : string prop;
  managed_resources : managed_resources list prop;
  name : string prop;
  public_network_enabled : bool prop;
  resource_group_name : string prop;
  scan_endpoint : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?managed_resource_group_name:string prop ->
  ?public_network_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  string ->
  t
