(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type feature

val feature :
  name:string prop -> registered:bool prop -> unit -> feature

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_resource_provider_registration

val azurerm_resource_provider_registration :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  feature:feature list ->
  unit ->
  azurerm_resource_provider_registration

val yojson_of_azurerm_resource_provider_registration :
  azurerm_resource_provider_registration -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; name : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  feature:feature list ->
  string ->
  t
