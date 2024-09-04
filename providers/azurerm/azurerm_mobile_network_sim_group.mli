(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  identity_ids:string prop list ->
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

type azurerm_mobile_network_sim_group

val azurerm_mobile_network_sim_group :
  ?encryption_key_url:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
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
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?encryption_key_url:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  mobile_network_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?encryption_key_url:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  mobile_network_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
