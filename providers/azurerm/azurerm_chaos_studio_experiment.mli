(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type selectors

val selectors :
  chaos_studio_target_ids:string prop list ->
  name:string prop ->
  unit ->
  selectors

type steps__branch__actions

val steps__branch__actions :
  ?duration:string prop ->
  ?parameters:(string * string prop) list ->
  ?selector_name:string prop ->
  ?urn:string prop ->
  action_type:string prop ->
  unit ->
  steps__branch__actions

type steps__branch

val steps__branch :
  name:string prop ->
  actions:steps__branch__actions list ->
  unit ->
  steps__branch

type steps

val steps :
  name:string prop -> branch:steps__branch list -> unit -> steps

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_chaos_studio_experiment

val azurerm_chaos_studio_experiment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  selectors:selectors list ->
  steps:steps list ->
  unit ->
  azurerm_chaos_studio_experiment

val yojson_of_azurerm_chaos_studio_experiment :
  azurerm_chaos_studio_experiment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  selectors:selectors list ->
  steps:steps list ->
  string ->
  t
