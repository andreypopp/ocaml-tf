(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_policy_definition

val azurerm_policy_definition :
  ?description:string prop ->
  ?id:string prop ->
  ?management_group_id:string prop ->
  ?metadata:string prop ->
  ?parameters:string prop ->
  ?policy_rule:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  mode:string prop ->
  name:string prop ->
  policy_type:string prop ->
  unit ->
  azurerm_policy_definition

val yojson_of_azurerm_policy_definition :
  azurerm_policy_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  display_name : string prop;
  id : string prop;
  management_group_id : string prop;
  metadata : string prop;
  mode : string prop;
  name : string prop;
  parameters : string prop;
  policy_rule : string prop;
  policy_type : string prop;
  role_definition_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?management_group_id:string prop ->
  ?metadata:string prop ->
  ?parameters:string prop ->
  ?policy_rule:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  mode:string prop ->
  name:string prop ->
  policy_type:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?management_group_id:string prop ->
  ?metadata:string prop ->
  ?parameters:string prop ->
  ?policy_rule:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  mode:string prop ->
  name:string prop ->
  policy_type:string prop ->
  string ->
  t Tf_core.resource
