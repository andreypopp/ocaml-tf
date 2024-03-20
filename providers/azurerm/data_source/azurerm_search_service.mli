(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type query_keys = {
  key : string prop;  (** key *)
  name : string prop;  (** name *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_search_service

val azurerm_search_service :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_search_service

val yojson_of_azurerm_search_service : azurerm_search_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  identity : identity list prop;
  name : string prop;
  partition_count : float prop;
  primary_key : string prop;
  public_network_access_enabled : bool prop;
  query_keys : query_keys list prop;
  replica_count : float prop;
  resource_group_name : string prop;
  secondary_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
