(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

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

type azurerm_fluid_relay_server

val azurerm_fluid_relay_server :
  ?id:string prop ->
  ?storage_sku:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  unit ->
  azurerm_fluid_relay_server

val yojson_of_azurerm_fluid_relay_server :
  azurerm_fluid_relay_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  frs_tenant_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  orderer_endpoints : string list prop;
  primary_key : string prop;
  resource_group_name : string prop;
  secondary_key : string prop;
  service_endpoints : string list prop;
  storage_endpoints : string list prop;
  storage_sku : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?storage_sku:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  string ->
  t
