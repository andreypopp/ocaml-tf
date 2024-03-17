(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_fluid_relay_server__identity
type azurerm_fluid_relay_server__timeouts
type azurerm_fluid_relay_server

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

val azurerm_fluid_relay_server :
  ?id:string prop ->
  ?storage_sku:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_fluid_relay_server__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_fluid_relay_server__identity list ->
  string ->
  t
