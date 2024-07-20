(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cors

val cors : allowed_origins:string prop list -> unit -> cors

type data_store

val data_store :
  ?storage_account_id:string prop ->
  unique_name:string prop ->
  unit ->
  data_store

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

type azurerm_maps_account

val azurerm_maps_account :
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?location:string prop ->
  ?tags:(string * string prop) list ->
  ?cors:cors list ->
  ?data_store:data_store list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  unit ->
  azurerm_maps_account

val yojson_of_azurerm_maps_account : azurerm_maps_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  local_authentication_enabled : bool prop;
  location : string prop;
  name : string prop;
  primary_access_key : string prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  x_ms_client_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?location:string prop ->
  ?tags:(string * string prop) list ->
  ?cors:cors list ->
  ?data_store:data_store list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?location:string prop ->
  ?tags:(string * string prop) list ->
  ?cors:cors list ->
  ?data_store:data_store list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t Tf_core.resource
