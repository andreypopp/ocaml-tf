(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_virtual_wan

val azurerm_virtual_wan :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_virtual_wan

val yojson_of_azurerm_virtual_wan : azurerm_virtual_wan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allow_branch_to_branch_traffic : bool prop;
  disable_vpn_encryption : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  office365_local_breakout_category : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  virtual_hub_ids : string list prop;
  vpn_site_ids : string list prop;
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
