(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type policy_definition_group = {
  additional_metadata_resource_id : string prop;
      (** additional_metadata_resource_id *)
  category : string prop;  (** category *)
  description : string prop;  (** description *)
  display_name : string prop;  (** display_name *)
  name : string prop;  (** name *)
}

type policy_definition_reference = {
  parameter_values : string prop;  (** parameter_values *)
  parameters : (string * string prop) list;  (** parameters *)
  policy_definition_id : string prop;  (** policy_definition_id *)
  policy_group_names : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** policy_group_names *)
  reference_id : string prop;  (** reference_id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_policy_set_definition

val azurerm_policy_set_definition :
  ?display_name:string prop ->
  ?id:string prop ->
  ?management_group_name:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  unit ->
  azurerm_policy_set_definition

val yojson_of_azurerm_policy_set_definition :
  azurerm_policy_set_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  display_name : string prop;
  id : string prop;
  management_group_name : string prop;
  metadata : string prop;
  name : string prop;
  parameters : string prop;
  policy_definition_group : policy_definition_group list prop;
  policy_definition_reference :
    policy_definition_reference list prop;
  policy_definitions : string prop;
  policy_type : string prop;
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
