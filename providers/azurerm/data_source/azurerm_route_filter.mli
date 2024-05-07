(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rule = {
  access : string prop;  (** access *)
  communities : string prop list;  (** communities *)
  name : string prop;  (** name *)
  rule_type : string prop;  (** rule_type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_route_filter

val azurerm_route_filter :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_route_filter

val yojson_of_azurerm_route_filter : azurerm_route_filter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  rule : rule list prop;
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
