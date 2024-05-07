(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type extension

val extension :
  ?additional_extension_properties:(string * string prop) list ->
  name:string prop ->
  unit ->
  extension

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_security_center_subscription_pricing

val azurerm_security_center_subscription_pricing :
  ?id:string prop ->
  ?resource_type:string prop ->
  ?subplan:string prop ->
  ?timeouts:timeouts ->
  tier:string prop ->
  extension:extension list ->
  unit ->
  azurerm_security_center_subscription_pricing

val yojson_of_azurerm_security_center_subscription_pricing :
  azurerm_security_center_subscription_pricing -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  resource_type : string prop;
  subplan : string prop;
  tier : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?resource_type:string prop ->
  ?subplan:string prop ->
  ?timeouts:timeouts ->
  tier:string prop ->
  extension:extension list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?resource_type:string prop ->
  ?subplan:string prop ->
  ?timeouts:timeouts ->
  tier:string prop ->
  extension:extension list ->
  string ->
  t Tf_core.resource
