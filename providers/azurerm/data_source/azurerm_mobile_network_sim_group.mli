(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_mobile_network_sim_group

val azurerm_mobile_network_sim_group :
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_mobile_network_sim_group

val yojson_of_azurerm_mobile_network_sim_group :
  azurerm_mobile_network_sim_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  encryption_key_url : string prop;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
