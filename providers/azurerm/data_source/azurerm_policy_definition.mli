(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_policy_definition

val azurerm_policy_definition :
  ?display_name:string prop ->
  ?id:string prop ->
  ?management_group_name:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  unit ->
  azurerm_policy_definition

val yojson_of_azurerm_policy_definition :
  azurerm_policy_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  display_name : string prop;
  id : string prop;
  management_group_name : string prop;
  metadata : string prop;
  mode : string prop;
  name : string prop;
  parameters : string prop;
  policy_rule : string prop;
  policy_type : string prop;
  role_definition_ids : string list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?management_group_name:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?management_group_name:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
