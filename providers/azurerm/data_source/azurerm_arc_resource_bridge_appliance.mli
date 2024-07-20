(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_arc_resource_bridge_appliance

val azurerm_arc_resource_bridge_appliance :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_arc_resource_bridge_appliance

val yojson_of_azurerm_arc_resource_bridge_appliance :
  azurerm_arc_resource_bridge_appliance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  distro : string prop;
  id : string prop;
  identity : identity list prop;
  infrastructure_provider : string prop;
  location : string prop;
  name : string prop;
  public_key_base64 : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
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
