(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type permissions = {
  actions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** actions *)
  condition : string prop;  (** condition *)
  condition_version : string prop;  (** condition_version *)
  data_actions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** data_actions *)
  not_actions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** not_actions *)
  not_data_actions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** not_data_actions *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_role_definition

val azurerm_role_definition :
  ?id:string prop ->
  ?name:string prop ->
  ?role_definition_id:string prop ->
  ?scope:string prop ->
  ?timeouts:timeouts ->
  unit ->
  azurerm_role_definition

val yojson_of_azurerm_role_definition :
  azurerm_role_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  assignable_scopes : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  permissions : permissions list prop;
  role_definition_id : string prop;
  scope : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?role_definition_id:string prop ->
  ?scope:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?role_definition_id:string prop ->
  ?scope:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
