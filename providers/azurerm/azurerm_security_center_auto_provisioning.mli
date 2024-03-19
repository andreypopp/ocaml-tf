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

type azurerm_security_center_auto_provisioning

val azurerm_security_center_auto_provisioning :
  ?id:string prop ->
  ?timeouts:timeouts ->
  auto_provision:string prop ->
  unit ->
  azurerm_security_center_auto_provisioning

val yojson_of_azurerm_security_center_auto_provisioning :
  azurerm_security_center_auto_provisioning -> json

(** RESOURCE REGISTRATION *)

type t = private { auto_provision : string prop; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  auto_provision:string prop ->
  string ->
  t
