(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_advanced_threat_protection

val azurerm_advanced_threat_protection :
  ?id:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  target_resource_id:string prop ->
  unit ->
  azurerm_advanced_threat_protection

val yojson_of_azurerm_advanced_threat_protection :
  azurerm_advanced_threat_protection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  enabled : bool prop;
  id : string prop;
  target_resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  target_resource_id:string prop ->
  string ->
  t
