(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type policy_definition_group

val policy_definition_group :
  ?additional_metadata_resource_id:string prop ->
  ?category:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  name:string prop ->
  unit ->
  policy_definition_group

type policy_definition_reference

val policy_definition_reference :
  ?parameter_values:string prop ->
  ?policy_group_names:string prop list ->
  ?reference_id:string prop ->
  policy_definition_id:string prop ->
  unit ->
  policy_definition_reference

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_policy_set_definition

val azurerm_policy_set_definition :
  ?description:string prop ->
  ?id:string prop ->
  ?management_group_id:string prop ->
  ?metadata:string prop ->
  ?parameters:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  name:string prop ->
  policy_type:string prop ->
  policy_definition_group:policy_definition_group list ->
  policy_definition_reference:policy_definition_reference list ->
  unit ->
  azurerm_policy_set_definition

val yojson_of_azurerm_policy_set_definition :
  azurerm_policy_set_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  display_name : string prop;
  id : string prop;
  management_group_id : string prop;
  metadata : string prop;
  name : string prop;
  parameters : string prop;
  policy_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?management_group_id:string prop ->
  ?metadata:string prop ->
  ?parameters:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  name:string prop ->
  policy_type:string prop ->
  policy_definition_group:policy_definition_group list ->
  policy_definition_reference:policy_definition_reference list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?management_group_id:string prop ->
  ?metadata:string prop ->
  ?parameters:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  name:string prop ->
  policy_type:string prop ->
  policy_definition_group:policy_definition_group list ->
  policy_definition_reference:policy_definition_reference list ->
  string ->
  t Tf_core.resource
